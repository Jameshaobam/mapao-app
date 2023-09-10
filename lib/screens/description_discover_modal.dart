
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:mapao_app/controller/get_maincontroller.dart';

import '../utilities/utils.dart';

class DescriptionModal extends StatelessWidget {
   DescriptionModal({super.key});
final MainController _mainController = Get.put(MainController());
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 121, 113, 113),
      child: Container(
        padding: EdgeInsets.symmetric(
            vertical: getAdaptiveSize(context, 20),
            horizontal: getAdaptiveSize(context, 30)),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.7,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Obx(
              () => Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Description for "),
                  const SizedBox(
                    width: 5.0,
                  ),
                  FittedBox(
                    child: Text(
                      '"${_mainController.discover.value!.title}"',
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: const TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ),
          
          
                ],
              ),
            ),
            const SizedBox(
              height: 5.0,
            ),
            Divider(height: 1.0,color: Colors.red,),
                 const SizedBox(
              height: 10.0,
            ),

            SingleChildScrollView(child: Text('"${_mainController.discover.value!.description}"')),
   
                //List of reviews
     
          ],
        ),
      ),
    );
  }
}