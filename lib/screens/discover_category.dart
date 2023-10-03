import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:fquery/fquery.dart';
import 'package:get/get.dart';
import 'package:mapao_app/screens/add_discover.dart';

import '../widgets/discover_category_item.dart';
import '../networking/fetch.dart';
import '../models/category_model.dart';

//TODO: Hookwidget must be extends to use fquery and flutter_hooks
class DiscoverCategoryPage extends HookWidget {
  DiscoverCategoryPage({super.key});
  static String routeName = "/categor-discover";

  @override
  Widget build(BuildContext context) {
    final categories = useQuery(["categories"], getAvailableCategories,
        refetchOnMount: RefetchOnMount.always);

//TDOD: builder widget use for useQuery
    return Builder(
      builder: (context) {
        if (categories.isLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        if (categories.isError) {
          log(categories.error.toString());
          return Center(
            child: Text("Error ${categories.error}"),
          );
        }
//TODO: Check if All button category is already in the list or not
        categories.data![0].name == "All"
            ? null
            : categories.data!.insert(
                0,
                Category(
                    id: 0, name: "All", description: "All mixed discovery"));

        return Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                children: [
                  Text(
                    "Choose category",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  const SizedBox(
                    width: 8.0,
                  ),
                  Expanded(
                    child: Divider(
                      height: 5,
                      color: Colors.grey,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 8.0,
              ),
              Row(
                children: [
                  Flexible(
                    child: SizedBox(
                      height: 30,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text("Suggest category"),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            foregroundColor: Colors.black),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 3.0,
                  ),
                  Flexible(
                    child: SizedBox(
                      height: 30,
                      child: ElevatedButton(
                        onPressed: () {
                          Get.toNamed(AddNewDiscover.routeName);
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
              const SizedBox(
                height: 8.0,
              ),
              Expanded(
                child: RefreshIndicator(
                  onRefresh: () async {
                    categories.refetch();
                  },
                  child: GridView.count(
                    //TODO: AspectRatio for child is used to set the size of cell

                    childAspectRatio: 16 / 5,
                    padding: EdgeInsets.only(top: 8.0),
                    shrinkWrap: true,
                    crossAxisCount: 2,
                    crossAxisSpacing: 5.0,
                    mainAxisSpacing: 3.0,
                    children: List.generate(
                      categories.data!.length,
                      (index) => Center(
                        child: SelectCard(category: categories.data![index]),
                      ),
                    ),
                  ),
                ),
              ),

              //TODO: We can add new widget down below
            ],
          ),
        );
      },
    );
  }
}
