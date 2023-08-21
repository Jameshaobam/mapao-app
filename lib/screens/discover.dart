import 'dart:developer';
import 'dart:ffi';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:fquery/fquery.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../networking/http.dart';
import '../widgets/discover_item.dart';
import '../models/discover_get_model.dart';
import './discover_category.dart';
import '../networking/fetch.dart';

class DiscoverPage extends HookWidget {
  DiscoverPage({super.key, required this.title});
  static String routeName = "/discover";
  final String title;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var discoveries;
    String category_title = Get.arguments["title"];
    int category_id = Get.arguments["cat_id"];
    if (category_title == "All") {
      discoveries = useQuery(
        ["discoveries"],
        getDiscovers,
      );
    } else {
      discoveries = useQuery(
          ["discoveries"], () => getCategorizedDiscoveries(category_id));
    }

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 239, 254, 255),
        appBar: AppBar(
          automaticallyImplyLeading:
              false, //this parameter is used to remove back button in the appbar
          backgroundColor: Colors.white,
          title: Center(
            child: Text(
              title,
              style: TextStyle(fontFamily: "fds"),
            ),
          ),
        ),
        body: Builder(
          builder: (context) {
            if (discoveries.isLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            if (discoveries.isError) {
              log(discoveries.error);
              return Center(
                child: Text("Error ${discoveries.error}"),
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
                        Container(
                          padding: EdgeInsets.zero,
                          child: GestureDetector(
                              child: const Icon(
                                Icons.arrow_back,
                                size: 30,
                              ),
                              onTap: () => Get.back()),
                        ),
                        const SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          "Discover/$category_title",
                          style: const TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  //TODO: Check if the discoveries are there corresnponding with the category
                  discoveries.data?.length <=0
                      ? Expanded(
                    
                        child: Center(
                            child: Text(
                                "There is no discoveries with the $category_title",style: TextStyle(color: Colors.grey),),
                          ),
                      )
                      :

                      //TODO: To reserve area for listview Expanded is use inside column with other children

                      Expanded(
                          child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: discoveries.data?.length,
                            itemBuilder: (context, index) {
                              Discover discover = discoveries.data?[index];

                              //TODO: return keyword is important to return Discover item per list
                              return DiscoverItemList(
                                discover: discover,
                                index: index,
                              );
                            },
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
