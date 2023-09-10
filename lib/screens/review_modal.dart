import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:fquery/fquery.dart';
import 'package:get/get.dart';
import 'package:mapao_app/controller/get_maincontroller.dart';
import 'package:mapao_app/models/discover_get_model.dart';
import 'package:mapao_app/models/review_model.dart';
import 'package:mapao_app/networking/fetch.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:mapao_app/utilities/utils.dart';
import 'package:mapao_app/widgets/review_item.dart';

class ReviewBottomModal extends HookWidget {
  ReviewBottomModal({super.key, required this.discover});
  // final List<Review> reviews;
  final Discover discover;
  final MainController _mainController = Get.put(MainController());
  final TextEditingController _reviewTextController = TextEditingController();

  handlePostReview(String description, BuildContext context) async {
    Map<String, dynamic> response =
        await addReviewDiscover(discover.id, description);

    Get.snackbar(response["status"].toString(), response["detail"],
        snackPosition: SnackPosition.BOTTOM);

    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    log(discover.id.toString());
    final reviewData =
        useQuery(["reviewData"], () => getDiscoveryDetail(discover.id));

    if (reviewData.isLoading) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }
    if (reviewData.isError) {
      return Center(
        child: Text('Error on fetching data ${reviewData.error}'),
      );
    }

    if (reviewData.data == null) {
      return const Center(
        child: Text('No data'),
      );
    }
    log("${reviewData.data![0]}");
    Future.delayed(
      Duration(seconds: 2),
      () {
        _mainController.updateReviewsDiscover(reviewData.data![0]);
      },
    );

    var reviews = reviewData.data![0];

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
            Row(
              children: [
                Flexible(flex: 2, child: const Text("Reviews for ")),
                const SizedBox(
                  width: 5.0,
                ),
                Expanded(
                  flex: 4,
                  child: Text(
                    '"${discover.title}"',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: const TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  width: 5.0,
                ),
                const Expanded(
                    child: Divider(
                  height: 3.0,
                )),
              ],
            ),
            const SizedBox(
              height: 5.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(
                  width: double.infinity,
                  child: TextField(
                    controller: _reviewTextController,
                    decoration: const InputDecoration(
                      hintText: "Write your review here",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5.0,
                ),
                SizedBox(
                    width: getAdaptiveSize(context, 100),
                    height: getAdaptiveSize(context, 30),
                    child: ElevatedButton(
                      onPressed: () {
                        //TODO: Implement add review here
                        final decription = _reviewTextController.text;
                        handlePostReview(decription, context);
                      },
                      child: Text("submit"),
                      style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Colors.blue[900]),
                    ))
              ],
            ),
            Text(
              "Total ",
              style: TextStyle(color: Colors.blue[700]),
              textAlign: TextAlign.left,
            ),
            const SizedBox(
              height: 10.0,
            ),
            const SizedBox(
              height: 15.0,
            ),
            reviews.isEmpty
                ? Center(
                    child: Container(
                      margin: EdgeInsets.only(top: 10.0),
                      child: Text("No reviews for this discover"),
                    ),
                  )
                :
                //List of reviews
                Expanded(
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: reviews.length,
                      itemBuilder: (context, index) => ReviewItem(
                        reviewer: reviews[index].reviewer,
                        description: reviews[index].reviewDescription,
                      ),
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
