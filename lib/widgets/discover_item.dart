import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mapao_app/controller/get_maincontroller.dart';
import 'package:mapao_app/models/discover_get_model.dart';
import 'package:mapao_app/screens/detail_discover.dart';

class DiscoverItemList extends StatelessWidget {
  DiscoverItemList(
      {super.key,
      required this.discover,
      required this.index,
      required this.onTap});
  final Discover discover;
  final int index;
  final Function onTap;

  final MainController _mainController = Get.put(MainController());
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20.0),
      child: Card(
        elevation: 0.0,
        //TODO: margin is used to give space between the card items
        margin: const EdgeInsets.only(bottom: 13.0, left: 8.0, right: 8.0),
        child: ListTile(
          onTap: () {
            onTap.call();
          },
          tileColor: Colors.white,
          title: Text(
            discover.title!,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          leading: CircleAvatar(
            radius: 30,
            backgroundImage:
                NetworkImage("https://picsum.photos/250?image=$index"),
            onBackgroundImageError: (exception, stackTrace) => NetworkImage(
                "https://docs.flutter.dev/assets/images/dash/dash-fainting.gif"),
          ),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //TODO: Little description
              discover.description!.length > 10
                  ? Text(
                      "${discover.description!.substring(0, 10)}...",
                      style: const TextStyle(
                          fontSize: 15.0,
                          color: const Color.fromARGB(255, 153, 150, 150)),
                    )
                  : Text(discover.description!,
                      style: const TextStyle(
                          fontSize: 15.0,
                          color: Color.fromARGB(255, 153, 150, 150))),
              const SizedBox(
                height: 5.0,
              ),
              Text(discover.categoryFn.title!,
                  style: const TextStyle(
                      fontSize: 15.0,
                      color: const Color.fromARGB(255, 153, 150, 150))),
              const SizedBox(
                height: 5.0,
              ),
              Row(
                children: [
                  Icon(Icons.pin_drop),
                  const SizedBox(
                    width: 8.0,
                  ),
                  Text(discover.location.based!),
                ],
              )
            ],
          ),
          trailing: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Icon(
                Icons.arrow_forward_ios,
                size: 10.0,
              ),
              Text("${discover.likes}"),
            ],
          ),
        ),
      ),
    );
  }
}
