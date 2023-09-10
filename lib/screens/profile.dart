import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mapao_app/controller/auth.dart';
import 'package:mapao_app/controller/get_maincontroller.dart';
import 'package:mapao_app/screens/login.dart';
import 'package:mapao_app/utilities/utils.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({super.key});
  final String imageUrl =
      "https://images.pexels.com/photos/2899097/pexels-photo-2899097.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500";
  final AuthController _authController = Get.put(AuthController());
  final MainController mainController = Get.put(MainController());

  void handleCheckUser() async {
    var res = _authController.checkLoginUser();
  }

  @override
  Widget build(BuildContext context) {
    handleCheckUser();
    return Container(
      padding: EdgeInsets.symmetric(
          vertical: getAdaptiveSize(context, 30.0),
          horizontal: getAdaptiveSize(context, 10.0)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Profile Image
          Center(
            child: Container(
              decoration: BoxDecoration(
                  border:
                      Border.all(width: 2, color: Color.fromARGB(255, 0, 0, 0)),
                  shape: BoxShape.circle),
              child: CircleAvatar(
                onBackgroundImageError: (exception, stackTrace) =>
                    log("Error on loading background image profile"),
                backgroundImage: NetworkImage(imageUrl),
                radius: getAdaptiveSize(context, 45.0),
              ),
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Obx(() {
            log("Obx ${_authController.user.value}");
            return Center(
              child: Text(
                _authController.user.value,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: getAdaptiveSize(context, 20.0),
                ),
              ),
            );
          }),

          const SizedBox(
            height: 15.0,
          ),
          //Personal information
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Personal Information",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold)),
                IconButton(
                    onPressed: () {
                      print("Go to edit section of profile");
                    },
                    icon: Row(
                      children: [
                        Icon(
                          Icons.edit_sharp,
                          size: getAdaptiveSize(context, 15.0),
                          color: Colors.blue[700],
                        ),
                        const SizedBox(
                          width: 3.0,
                        ),
                        Text(
                          "Edit",
                          style: TextStyle(color: Colors.blue[700]),
                        )
                      ],
                    ))
              ],
            ),
          ),
          //First Column
          Container(
            padding: EdgeInsets.symmetric(
                horizontal: getAdaptiveSize(context, 10.0)),
            child: Column(
              children: [
                //Row for Email
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //Email with logo
                    const Row(
                      children: [
                        Icon(
                          Icons.email,
                          color: Colors.grey,
                        ),
                        SizedBox(
                          width: 3.0,
                        ),
                        Text(
                          "Email",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                    //Email value
                    // Text("youremail@domain.com"),
                    Text("${_authController.user.value}@gmail.com"),
                  ],
                ),
                SizedBox(
                  height: 15.0,
                ),
                //Phone Row
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //Email with logo
                    Row(
                      children: [
                        Icon(
                          Icons.phone_android,
                          color: Colors.grey,
                        ),
                        SizedBox(
                          width: 3.0,
                        ),
                        Text(
                          "Phone",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                    //Email value
                    Text("9236574380"),
                  ],
                ),

                SizedBox(
                  height: 15.0,
                ),
                //Website Row
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //Email with logo
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.web,
                          color: Colors.grey,
                        ),
                        SizedBox(
                          width: 3.0,
                        ),
                        Text(
                          "Website",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                    //Email value
                    Text("www.yourwebsite.com"),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 15.0,
          ),

          //utilities

          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Utilities",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ),

          //Second Column

          //Expanded must be always the parent widget for scrollview if the scrollview is within the column
          Expanded(
            child: Container(
              width: getAdaptiveSize(context, 150),
              padding: EdgeInsets.symmetric(
                horizontal: getAdaptiveSize(context, 10.0),
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    // My discoveries
                    TextButton(
                      onPressed: () {
                        print("Go to my discoveries");
                      },
                      style: TextButton.styleFrom(
                          foregroundColor: Colors.blue[700]),
                      child: const Row(
                        children: [
                          Icon(Icons.explore),
                          SizedBox(
                            width: 5.0,
                          ),
                          Text("Discoveries"),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 3.0,
                    ),

                    // My event
                    TextButton(
                      onPressed: () {
                        print("Go to my events");
                      },
                      style: TextButton.styleFrom(
                          foregroundColor: Colors.blue[700]),
                      child: const Row(
                        children: [
                          Icon(Icons.event_note),
                          SizedBox(
                            width: 5.0,
                          ),
                          Text("Events"),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 3.0,
                    ),

                    // My Feed
                    TextButton(
                      onPressed: () {
                        print("Go to my feeds");
                      },
                      style: TextButton.styleFrom(
                          foregroundColor: Colors.blue[700]),
                      child: const Row(
                        children: [
                          Icon(Icons.event_note),
                          SizedBox(
                            width: 5.0,
                          ),
                          Text("Feeds"),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 3.0,
                    ),

                    //Logout button
                    TextButton(
                      onPressed: () {
                        //calls the logout method from auth.dart
                        _authController.logOut();
                      },
                      style: TextButton.styleFrom(
                          foregroundColor:
                              const Color.fromARGB(255, 141, 20, 11)),
                      child: const Row(
                        children: [
                          Row(
                            children: [
                              Icon(Icons.logout),
                              SizedBox(
                                width: 3.0,
                              ),
                              Text("Logout")
                            ],
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(
                      height: 5.0,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
