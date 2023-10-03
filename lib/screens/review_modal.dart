import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:fquery/fquery.dart';
import 'package:get/get.dart';
import 'package:mapao_app/controller/auth.dart';
import 'package:mapao_app/controller/get_maincontroller.dart';
import 'package:mapao_app/models/discover_get_model.dart';
import 'package:mapao_app/models/review_model.dart';
import 'package:mapao_app/networking/fetch.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:mapao_app/utilities/utils.dart';
import 'package:mapao_app/widgets/review_item.dart';

class ReviewBottomModal extends StatefulHookWidget {
  ReviewBottomModal({super.key, required this.discover});
  // final List<Review> reviews;
  final Discover discover;

  @override
  _ReviewBottomModalState createState() => _ReviewBottomModalState();
}

class _ReviewBottomModalState extends State<ReviewBottomModal> {
  final MainController _mainController = Get.put(MainController());
  final AuthController _authController = Get.put(AuthController());
  final TextEditingController _reviewTextController = TextEditingController();
  static final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  handlePostReview(String description, BuildContext context) async {
    Map<String, dynamic> response =
        await addReviewDiscover(widget.discover.id!, description);

    Get.snackbar(response["status"].toString(), response["detail"],
        snackPosition: SnackPosition.BOTTOM);

    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    log(widget.discover.id.toString());
    final reviewData = useQuery(
      ["reviewData"],
      () => getDiscoveryDetail(widget.discover.id!),
    );

    Widget reviewsWidget;
    if (reviewData.isLoading) {
      reviewsWidget = const Center(
        child: CircularProgressIndicator(),
      );
    }
    if (reviewData.isFetching) {
      reviewsWidget = const Center(
        child: CircularProgressIndicator(),
      );
    }
    if (reviewData.isError) {
      reviewsWidget = Center(
        child: Text('Error on fetching data ${reviewData.error}'),
      );
    }

    if (reviewData.data == null) {
      reviewsWidget = const Center(
        child: Text('No data'),
      );
    } else {
      log("${reviewData.data![0]}");
      Future.delayed(
        Duration(seconds: 2),
        () {
          _mainController.updateReviewsDiscover(reviewData.data![0]);
        },
      );

      var reviews = reviewData.data![0];

      reviewsWidget = Expanded(
        child: Builder(builder: (context) {
          return Column(
            children: [
              Text(
                "Total ${reviews.length} ",
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
                      child: RefreshIndicator(
                        onRefresh: () async {
                          reviewData.refetch();
                        },
                        child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: reviews.length,
                          itemBuilder: (context, index) => GestureDetector(
                            onLongPress: () {
                              //TODO: Implement review delete here

                              log(reviews[index].reviewer.profileId.toString());
                              print(_authController.user.value?.profileid ==
                                  reviews[index].reviewer.profileId);

                              if (_authController.user.value?.profileid ==
                                  reviews[index].reviewer.profileId) {
                                showDialog(
                                  context: context,
                                  builder: (context) => AlertDialog(
                                    title: Text("Delete this review"),
                                    content: Text(
                                        "Are you sure you want to delete this review?"),
                                    actions: [
                                      //YES
                                      ElevatedButton(
                                        onPressed: () async {
                                          var res = await deleteReviewById(
                                              reviews[index].id);

                                          if (res["status"] == 200) {
                                            reviewData.refetch();
                                          }
                                          Get.back();
                                        },
                                        child: Text("Yes"),
                                      ),
                                      //NO
                                      ElevatedButton(
                                        onPressed: () {
                                          Get.back();
                                        },
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor:
                                                const Color.fromARGB(
                                                    255, 141, 15, 6),
                                            foregroundColor: Colors.white),
                                        child: const Text("No"),
                                      )
                                    ],
                                  ),
                                );
                              } else {
                                Get.snackbar("Not authorized",
                                    "Log in with same profile to delete this");
                              }
                            },
                            child: ReviewItem(
                              reviewer: reviews[index].reviewer,
                              description: reviews[index].reviewDescription,
                            ),
                          ),
                        ),
                      ),
                    ),
            ],
          );
        }),
      );
    }

    return Container(
      height: double.infinity,
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
        // width: MediaQuery.of(context).size.width,
        height: double.infinity,
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
                    '"${widget.discover.title}"',
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

            // Column for writing review
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Form(
                    key: formKey,
                    child: TextField(
                      controller: _reviewTextController,
                      decoration: const InputDecoration(
                        hintText: "Write your review here",
                        border: OutlineInputBorder(),
                      ),
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

                        if (formKey.currentState!.validate()) {
                          // Form is valid, perform your action
                          final description = _reviewTextController.text;
                          if (description.trim().length <= 0) {
                            Get.snackbar(
                                "Empty field", "Put some text in the field");
                          } else {
                            handlePostReview(description, context);
                          }
                        }
                      },
                      child: Text("submit"),
                      style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Colors.blue[900]),
                    ))
              ],
            ),

            //----------------------- Reviews
            reviewsWidget
          ],
        ),
      ),
    );
  }
}
