import 'package:flutter/material.dart';
import 'package:get/get.dart';


import '../screens/discover_category.dart';
import '../screens/discover.dart';
import '../models/category_model.dart';
import '../controller/get_maincontroller.dart';

class SelectCard extends StatelessWidget {
   SelectCard({required this.category});
  final Category category;

  final MainController _mainController = Get.put(MainController());

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
         onTap: () {

          _mainController.changeCategoryId(category.id);
          _mainController.updateTitleCategory(category.name);

          Get.toNamed(DiscoverPage.routeName,arguments: {"title":category.name,"cat_id":category.id});
          
          },
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
