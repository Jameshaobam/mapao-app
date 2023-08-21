import 'package:flutter/material.dart';
import 'package:get/get.dart';


import '../screens/discover_category.dart';
import '../screens/discover.dart';
import '../models/category_model.dart';

class SelectCard extends StatelessWidget {
  const SelectCard({required this.category});
  final Category category;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
         onTap: () => Get.toNamed(DiscoverPage.routeName,arguments: {"title":category.name,"cat_id":category.id}),
      child: Card(
          color: Color.fromARGB(255, 156, 29, 29),
          child: Center(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  // Expanded(child: Icon(Icons.category, size:25.0, color: Color.fromARGB(255, 255, 255, 255),)),
    
                  Text(
                    category.name,
                    style: const TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontWeight: FontWeight.bold),
                  ),
                ]),
          )),
    );
  }
}
