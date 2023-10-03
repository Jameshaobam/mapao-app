import 'dart:developer';

import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:fquery/fquery.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mapao_app/screens/add_discover.dart';
import 'package:mapao_app/utilities/utils.dart';

import '../controller/get_maincontroller.dart';
import '../widgets/discover_item.dart';
import '../models/discover_get_model.dart';

import '../networking/fetch.dart';
import 'detail_discover.dart';

class DiscoverListMe extends HookWidget {
  DiscoverListMe({super.key});
  static String routeName = "/discover-me";
  final MainController _mainController = Get.put(MainController());
  @override
  Widget build(BuildContext context) {
    var discoveries;

    discoveries = useQuery(["discoveries"], getMyDiscoveries,
        refetchOnMount: RefetchOnMount.always);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 239, 254, 255),
        appBar: AppBar(
          automaticallyImplyLeading:
              false, //this parameter is used to remove back button in the appbar
          backgroundColor: Colors.white,
          title: const Center(
            child: Text(
              "Mapao",
            ),
          ),
        ),

        //TODO: use Builder() in body when useQuery is used;
        body: Builder(
          builder: (context) {
            if (discoveries.isLoading) {
              return const Center(
                child: CircularProgressIndicator(color: Colors.red),
              );
            }
            if (discoveries.isFetching) {
              return const Center(
                child: CircularProgressIndicator(color: Colors.red),
              );
            }
            if (discoveries.isError) {
              // log(discoveries.error);
              return Center(
                child: Text("Error ${discoveries.error!}"),
              );
            }

            //TODO: This part is the display part if we get the data right
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        //TODO: Icon to go back to previous page when tap
                        Flexible(
                          child: Row(
                            children: [
                              GestureDetector(
                                child: const Icon(
                                  Icons.arrow_back,
                                  size: 30,
                                ),
                                onTap: () => Get.back(),
                              ),
                              const SizedBox(
                                width: 10.0,
                              ),
                              Text(
                                "My collection/discover",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: getAdaptiveSize(context, 10.0),
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),

                        const SizedBox(
                          width: 5,
                        ),
                        Flexible(
                          child: SizedBox(
                            height: 30,
                            child: ElevatedButton(
                              onPressed: () async {
                                final result =
                                    await Get.toNamed(AddNewDiscover.routeName);

                                if (result != null && result == "refetch") {
                                  discoveries.refetch();
                                }
                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  foregroundColor: Colors.black),
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(Icons.add),
                                  Text("Add discover"),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  //TODO: Check if the discoveries are there corresnponding with the category
                  discoveries.data?.length <= 0
                      ? const Expanded(
                          child: Center(
                            child: Text(
                              "There is no discoveries",
                              style: TextStyle(color: Colors.grey),
                            ),
                          ),
                        )
                      :

                      //TODO: To reserve area for listview Expanded is use inside column with other children

                      Expanded(
                          child: RefreshIndicator(
                            onRefresh: () async {
                              discoveries.refetch();
                            },
                            child: ListView.builder(
                              shrinkWrap: true,
                              itemCount: discoveries.data?.length,
                              itemBuilder: (context, index) {
                                Discover discover = discoveries.data?[index];

                                //TODO: return keyword is important to return Discover item per list
                                return DiscoverItemList(
                                  discover: discover,
                                  index: index,
                                  onTap: () async {
                                    _mainController.updateDiscover(discover);
                                    _mainController.updateTitleCategory(
                                        discover.categoryFn.title!);
                                    //Getting the argument if there is
                                    final result = await Get.toNamed(
                                        DetailDiscoverPage.routeName);
//Check if argument as refetch is there do the refetch
                                    if (result != null && result == "refetch") {
                                      log("Refetch called");
                                      discoveries.refetch();
                                    }
                                  },
                                );
                              },
                            ),
                          ),
                        ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
