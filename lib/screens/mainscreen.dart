import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mapao_app/screens/homescreen.dart';
import '../controller/get_maincontroller.dart';
import 'discover_category.dart';

class MainPage extends StatelessWidget {
  MainPage({super.key});
  final MainController _mainController = Get.put(MainController());

  static String routeName = "/";

  @override
  Widget build(BuildContext context) {
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
              style: TextStyle(fontFamily: "fds"),
            ),
          ),
        ),
        body: Obx(
          () => IndexedStack(
            index: _mainController.selectedIndex.value,
            children: [
              HomeScreen(),
              DiscoverCategoryPage(),
              Text('data'),
              Text("data2")
            ],
          ),
        ),
        bottomNavigationBar: Obx(
          () => BottomNavigationBar(
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.explore), label: "Discover"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.event_available), label: "Event"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: "Profile"),
            ],
            unselectedItemColor: const Color.fromARGB(255, 116, 104, 104),
            selectedItemColor: const Color.fromARGB(255, 204, 40, 40),
            currentIndex: _mainController.selectedIndex.value,
            showUnselectedLabels: false,
            showSelectedLabels: false,
            onTap: (value) {
              _mainController.changeIndex(value);
            },
          ),
        ),
      ),
    );
  }
}
