import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:fquery/fquery.dart';
import 'package:mapao_app/controller/get_maincontroller.dart';
import 'package:mapao_app/models/discover_get_model.dart';
import 'package:mapao_app/models/review_model.dart';
import 'package:mapao_app/networking/fetch.dart';
import 'package:get/get.dart';
import 'package:mapao_app/screens/description_discover_modal.dart';
import 'package:mapao_app/screens/discover.dart';
import 'package:mapao_app/screens/login.dart';
import '../utilities/utils.dart';
import './review_modal.dart';

class DetailDiscoverPage extends HookWidget {
  DetailDiscoverPage({super.key});
  static String routeName = "/detail-discover";
  final MainController _mainController = Get.put(MainController());
  @override
  Widget build(BuildContext context) {
    Discover discoverObj = _mainController.discover.value!;
    var cat_name =
        _mainController.categoryName.value ?? discoverObj.categoryFn.title;
    final detail_discover = useQuery(
        ["detail_discover"], () => getDiscoveryDetail(discoverObj.id!),
        refetchOnMount: RefetchOnMount.always);

    if (detail_discover.isLoading) {
      return Center(
        child: CircularProgressIndicator(color: Colors.red[700]),
      );
    }
    if (detail_discover.isFetching) {
      return Center(
        child: CircularProgressIndicator(color: Colors.red[700]),
      );
    }
    if (detail_discover.isError) {
      return Center(
        child: Text("Error: ${detail_discover.error}"),
      );
    }

    var detail_data = detail_discover.data!;

    List<Review> reviews = detail_data[0];
    _mainController.updateReviewsDiscover(reviews);

    Discover discover = Discover.fromJson(detail_data[1]
        ["data"]); //TODO:Already return as Map so no need for jsondecode
    ValueNotifier<int> likeCount = useState(discover.likes!);
    ValueNotifier<bool> isLiked = useState(detail_data[2]);
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
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
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //TODO: Navigation
            Padding(
              padding: const EdgeInsets.only(top: 8.0, left: 5.0),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () => Get.back(),
                    child: Icon(
                      Icons.arrow_back,
                      size: getAdaptiveSize(context, 25),
                    ),
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  FittedBox(
                    child: Text(
                      "Discover/$cat_name/${discover.title}",
                      style: TextStyle(
                        fontSize: getAdaptiveSize(context, 10),
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 9.0,
            ),

            //Column starts from icon
            Padding(
              padding: const EdgeInsets.only(
                  top: 5.0, left: 15.0, right: 15.0, bottom: 15.0),
              child: Expanded(
                //Making it scrollable and Expanded must be used as parent or overflow will appear
                child: SingleChildScrollView(
                  child: Column(
                    // mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //TODO: Image/Icon container
                      Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                                color: const Color.fromARGB(255, 170, 24, 24))),
                        child: CircleAvatar(
                          radius: getAdaptiveSize(context, 47),
                          backgroundImage: NetworkImage(
                              discover.logo!.length <= 10 ||
                                      discover.logo == null
                                  ? 'https://picsum.photos/200/300'
                                  : discover.logo!),
                        ),
                      ),

                      const SizedBox(
                        height: 9.0,
                      ),

                      //TODO: Name of discover object

                      Text(
                        discover.title!,
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: getAdaptiveSize(context, 20)),
                      ),

                      //TODO: Description

                      GestureDetector(
                        onTap: () => showModalBottomSheet(
                          context: context,
                          builder: (context) => DescriptionModal(),
                        ),
                        child: Text(
                          "${discover.description}",
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          style: TextStyle(
                              color: const Color.fromARGB(255, 122, 119, 119),
                              fontWeight: FontWeight.normal,
                              fontSize: getAdaptiveSize(context, 13)),
                        ),
                      ),

                      SizedBox(
                        height: getAdaptiveSize(context, 17.0),
                      ),

                      // Poster name with icon of person
                      Row(
                        children: [
                          Icon(
                            Icons.person_2,
                            size: getAdaptiveSize(
                              context,
                              15,
                            ),
                            color: Colors.grey,
                          ),
                          const SizedBox(
                            width: 5.0,
                          ),
                          GestureDetector(
                            onTap: () => log(
                                "Go to profile page with user ${discover.poster!.profileId}"),
                            child: Text(
                              discover.poster!.username,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                  color: Colors.blue,
                                  decoration: TextDecoration.underline,
                                  decorationColor:
                                      Color.fromARGB(255, 36, 13, 240)),
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(
                        height: 8.0,
                      ),

                      //Row for category,place
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          //Row for category
                          Row(
                            children: [
                              const Icon(
                                Icons.category,
                                color: Colors.grey,
                              ),
                              const SizedBox(
                                width: 3.0,
                              ),
                              Text(
                                discover.categoryFn.title!,
                                style: TextStyle(
                                    fontSize: getAdaptiveSize(context, 13),
                                    color: Colors.grey),
                              ),
                            ],
                          ),

                          const SizedBox(
                            width: 15.0,
                          ),

                          //Row for place/location
                          Row(
                            children: [
                              const Icon(
                                Icons.location_city,
                                color: Colors.grey,
                              ),
                              const SizedBox(
                                width: 3.0,
                              ),
                              Text(
                                discover.location.based!,
                                style: TextStyle(
                                    fontSize: getAdaptiveSize(context, 13),
                                    color: Colors.grey),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5.0,
                      ),
                      // Row for like,edit,delete buttons

                      Row(
                        children: [
                          //Like count and button here
                          Container(
                            width: MediaQuery.of(context).size.width * 0.3,
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              border:
                                  Border.all(color: Colors.black12, width: 1.0),
                            ),
                            child: TextButton(
                              onPressed: () async {
                                log("Like button clicked");
                                var res = await likeDiscovery(discover.id!);

                                if (res["status"] == 401) {
                                  Get.offNamed(LoginPage.routeName);
                                }
                                if (res["status"] == 201) {
                                  log("$res");
                                  likeCount.value = res["likeCount"];
                                  isLiked.value = !isLiked.value;
                                }
                              },
                              style: TextButton.styleFrom(
                                shape: RoundedRectangleBorder(),
                                backgroundColor: Colors.white,
                                foregroundColor: isLiked.value
                                    ? Colors.blue[600]
                                    : Colors.grey[350],
                              ),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.keyboard_double_arrow_up,
                                    color: isLiked.value
                                        ? Colors.blue[600]
                                        : Colors.grey,
                                  ),
                                  const SizedBox(
                                    width: 7.0,
                                  ),
                                  FittedBox(
                                      child: Text(
                                    isLiked.value
                                        ? "Liked ${likeCount.value}"
                                        : "Like ${likeCount.value}",
                                    style: TextStyle(
                                        color: isLiked.value
                                            ? Colors.blue[600]
                                            : Colors.grey,
                                        fontSize: getAdaptiveSize(context, 10)),
                                  )),
                                ],
                              ),
                            ),
                          ),

                          const SizedBox(
                            width: 5.0,
                          ),
                          //Edit Button
                          discover.isowner!
                              ? TextButton(
                                  onPressed: () {},
                                  style: TextButton.styleFrom(
                                      foregroundColor: Colors.green),
                                  child: FittedBox(
                                      child: Text(
                                    "Edit",
                                    style: TextStyle(
                                        fontSize: getAdaptiveSize(context, 15)),
                                  )),
                                )
                              : Container(),
                          const SizedBox(
                            width: 10.0,
                          ),
                          //Delete Button
                          discover.isowner!
                              ? TextButton(
                                  onPressed: () {
                                    showDialog(
                                      context: context,
                                      builder: (context) => AlertDialog(
                                        title: const Text(
                                          "Delete",
                                          style: TextStyle(
                                            color:
                                                Color.fromARGB(255, 141, 15, 6),
                                          ),
                                        ),
                                        content: const Text(
                                            "Do you want to delete this item?"),
                                        actions: [
                                          //yes
                                          ElevatedButton(
                                            onPressed: () async {
                                              if (discover.isowner!) {
                                                var res =
                                                    await deleteDiscoverById(
                                                        discover.id!);

                                                if (res["status"] == 200) {
                                                  print(res);
                                                  Get.back();
                                                } else if (res["status"] ==
                                                    401) {
                                                  Get.back();
                                                  Get.snackbar(
                                                    "Unauthorizerd",
                                                    "${res["detail"]}",
                                                    duration: const Duration(
                                                        seconds: 2),
                                                  );
                                                } else {
                                                  Get.back();
                                                  Get.snackbar(
                                                    "Could not perform the action",
                                                    "${res["detail"]}",
                                                    duration: const Duration(
                                                        seconds: 2),
                                                  );
                                                }
                                                if (res["status"] == 200) {
                                                  // Pass arg to refetch

                                                  Get.back(result: "refetch");
                                                  Get.snackbar(
                                                    "Deleted Successful",
                                                    "Item list updated",
                                                    duration: const Duration(
                                                        seconds: 2),
                                                  );
                                                }
                                              } else {}
                                            },
                                            style: ElevatedButton.styleFrom(
                                                foregroundColor: Colors.black),
                                            child: const Text("Yes"),
                                          ),
                                          //no
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
                                  },
                                  style: TextButton.styleFrom(
                                    foregroundColor: Colors.red,
                                  ),
                                  child: FittedBox(
                                      child: Text("Delete",
                                          style: TextStyle(
                                              fontSize: getAdaptiveSize(
                                                  context, 15)))),
                                )
                              : Container(),
                        ],
                      ),

                      //TODO: source link,social media ,poster(return poster name from api), reviews list
                      const SizedBox(
                        height: 5.0,
                      ),

                      //Source link

                      discover.sourceLink != null
                          ? Center(
                              child: Container(
                                width: double.infinity,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor:
                                          Color.fromARGB(255, 206, 32, 19),
                                      foregroundColor: Colors.white,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.0))),
                                  child: Text(
                                    "Visit",
                                    style: TextStyle(
                                        fontSize: getAdaptiveSize(context, 15)),
                                  ),
                                ),
                              ),
                            )
                          :

                          //if source link is empty
                          Container(),

                      //Social media link

                      discover.socialMediaLink != null
                          ? Center(
                              child: Container(
                                width: double.infinity,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor:
                                          Color.fromARGB(255, 0, 0, 0),
                                      foregroundColor: Colors.white,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.0))),
                                  child: Text(
                                    "Social media",
                                    style: TextStyle(
                                        fontSize: getAdaptiveSize(context, 15)),
                                  ),
                                ),
                              ),
                            )
                          : Container(),

                      const SizedBox(height: 7.0),
                      //Reviews button
                      Container(
                        width: MediaQuery.of(context).size.width * 0.2,
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            border: Border.all(
                                color: Colors.blue[300]!, width: 1.0)),
                        child: Builder(builder: (context) {
                          return TextButton(
                            onPressed: () {
                              showModalBottomSheet(
                                context: context,
                                builder: (context) => ReviewBottomModal(
                                  discover: discover,
                                ),
                              ).whenComplete(() {
                                log("Complete call");
                              });
                            },
                            style: TextButton.styleFrom(
                              shape: RoundedRectangleBorder(),
                              backgroundColor: Colors.white,
                              foregroundColor: Colors.blue[300],
                            ),
                            child: FittedBox(
                              child: Obx(
                                () => Text(
                                  "Reviews ${_mainController.reviews.value.length}",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: getAdaptiveSize(context, 15),
                                  ),
                                ),
                              ),
                            ),
                          );
                        }),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
