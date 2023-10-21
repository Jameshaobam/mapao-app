import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:fquery/fquery.dart';
import 'package:mapao_app/models/category_model.dart';
import 'package:mapao_app/models/discover_get_model.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mapao_app/utilities/constants.dart';
import 'package:http/http.dart' as http;

import '../networking/fetch.dart';
import '../utilities/utils.dart';

class AddNewDiscover extends StatefulHookWidget {
  const AddNewDiscover({super.key});
  static String routeName = "/add-discover";
  @override
  State<AddNewDiscover> createState() => _AddNewDiscoverState();
}

class _AddNewDiscoverState extends State<AddNewDiscover> {
  final _formKey = GlobalKey<FormState>();
  final _formKey2 = GlobalKey<FormState>();
  final _formKey3 = GlobalKey<FormState>();
  final _formKey4 = GlobalKey<FormState>();
  final _formKey5 = GlobalKey<FormState>();
  final _formKey6 = GlobalKey<FormState>();
  final _formKey7 = GlobalKey<FormState>();

  final titleController = TextEditingController();
  final descriptionController = TextEditingController();
  final logoController = TextEditingController();
  final currentController = TextEditingController();
  final originController = TextEditingController();
  final sourceController = TextEditingController();
  final socialController = TextEditingController();

  get onChanged => null;

  File? _image;
  final picker = ImagePicker();
  String? base64Image;
  Future getImageFromGallery() async {
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);
    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
        _convertImageToBase64();
      }
    });
  }

  void _convertImageToBase64() async {
    if (_image == null) {
      // Check if the image is not null
      return;
    }

    List<int> imageBytes =
        await _image!.readAsBytes(); // Read the image file as bytes
    // Convert bytes to base64 string
    setState(() {
      base64Image = base64Encode(imageBytes);
    });
    print(base64Image); // Print or use the base64Image as needed
  }

  Future<Map<String, dynamic>> uploadImage() async {
    Map<String, dynamic> data = {};
    try {
      var res = await http.post(
        Uri.parse(IMGAPI),
        body: {
          'image': base64Image,
        },
      );

      if (res.statusCode == 200) {
        final jsonResponse = jsonDecode(res.body);
        data["url"] = jsonResponse["data"]["url"];
        data["delete"] = jsonResponse["data"]["delete_url"];
      } else {
        print('Error uploading image to ImgBB. Status code: ${res.statusCode}');
      }
    } catch (e) {
      print(e);
    }

    return data;
  }

  @override
  Widget build(BuildContext context) {
    //TODO: Use useState only inside the build()
    final selectedCategoryValue = useState(1);
    final isUploading = useState(false);

    final categories =
        useQuery(["add_discoveries_catgeories"], getAvailableCategories);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        body: Builder(
          builder: (context) {
            Widget categoryWidget;
            if (categories.isLoading || categories.isFetching) {
              categoryWidget = const Center(
                  child: CircularProgressIndicator(
                color: Colors.red,
              ));
            } else if (categories.isError) {
              log("${categories.error}");
              categoryWidget = const Center(
                child: Text("Oops! something went wrong"),
              );
            } else if (categories.data != null) {
              List<Category> listOfCategories = categories.data!;

              categoryWidget = Column(
                children: [
                  const Text("Select category"),
                  DropdownButton(
                    value: selectedCategoryValue.value,
                    items: listOfCategories.map(
                      (e) {
                        return DropdownMenuItem(
                          value: e.id,
                          child: Text(e.name),
                        );
                      },
                    ).toList(),
                    onChanged: (value) {
                      selectedCategoryValue.value = value!;
                    },
                  ),
                ],
              );
              //  = Text("Worked ${categories.data}");
            } else {
              categoryWidget = Text("No data");
            }
            return Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //Back navigation
                  Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: getAdaptiveSize(context, 10.0)),
                    child: Row(
                      children: [
                        GestureDetector(
                          child: const Icon(
                            Icons.arrow_back,
                            size: 30,
                          ),
                          onTap: () => Get.back(),
                        ),
                        const SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          "My collection/discover",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: getAdaptiveSize(context, 10.0),
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        "Add new discover",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: getAdaptiveSize(context, 15),
                        ),
                      ),
                      SizedBox(
                        width: getAdaptiveSize(context, 10.0),
                      ),
                      isUploading.value
                          ? SizedBox(
                              height: getAdaptiveSize(context, 20.0),
                              width: getAdaptiveSize(context, 20.0),
                              child: const CircularProgressIndicator(
                                color: Colors.black,
                                strokeWidth: 2,
                              ),
                            )
                          : Container(),
                    ],
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),

//Information to be added fields
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: double.infinity,
                            height: 1,
                            color: Colors.grey,
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          /*------------------- Detail add here ------------------------------*/

                          Text(
                            "Information",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: getAdaptiveSize(context, 13)),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          //Title
                          Form(
                            key: _formKey,
                            child: TextFormField(
                              controller: titleController,
                              decoration: const InputDecoration(
                                labelText: "Title",
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey),
                                ),
                              ),
                              keyboardType: TextInputType.text,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "Cannot Empty";
                                }
                                return null;
                              },
                            ),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          //Description
                          Form(
                            key: _formKey2,
                            child: TextFormField(
                              controller: descriptionController,
                              decoration: const InputDecoration(
                                  labelText: 'Description',
                                  contentPadding: EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 40.0),
                                  border: OutlineInputBorder()),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "Cannot Empty";
                                }
                                return null;
                              },
                            ),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          //Category

                          categoryWidget,

                          const SizedBox(
                            height: 10.0,
                          ),

                          //Logo

                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              _image == null
                                  ? Text('No image selected.')
                                  : Image.file(_image!,
                                      height: 200, width: 200),
                              ElevatedButton(
                                onPressed: getImageFromGallery,
                                child: Text('Pick Image from Gallery'),
                              ),
                            ],
                          ),

                          const SizedBox(
                            height: 10.0,
                          ),
                          //Origin Loc
                          Form(
                            key: _formKey4,
                            child: TextFormField(
                              controller: originController,
                              decoration: const InputDecoration(
                                  labelText: "Origin location",
                                  border: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.grey))),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "Cannot Empty";
                                }
                                return null;
                              },
                              keyboardType: TextInputType.text,
                            ),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          //Current Location
                          Form(
                            key: _formKey5,
                            child: TextFormField(
                              controller: currentController,
                              decoration: const InputDecoration(
                                  labelText: "Current Location",
                                  border: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.grey))),
                              keyboardType: TextInputType.text,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "Cannot Empty";
                                }
                                return null;
                              },
                            ),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          //Source Link
                          Form(
                            key: _formKey6,
                            child: TextFormField(
                              controller: sourceController,
                              decoration: const InputDecoration(
                                  labelText: "Source/Website link",
                                  border: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.grey))),
                              keyboardType: TextInputType.text,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "Cannot Empty";
                                }
                                return null;
                              },
                            ),
                          ),

                          const SizedBox(
                            height: 10.0,
                          ),
                          //Social Media Link
                          Form(
                            key: _formKey7,
                            child: TextFormField(
                              controller: socialController,
                              decoration: const InputDecoration(
                                  labelText: "Social Media Link",
                                  border: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.grey))),
                              keyboardType: TextInputType.text,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "Cannot Empty";
                                }
                                return null;
                              },
                            ),
                          ),

                          const SizedBox(
                            height: 10.0,
                          ),
                          //Upload button
                          ElevatedButton(
                              onPressed: isUploading.value
                                  ? null
                                  : () async {
                                      isUploading.value = true;
                                      if (_formKey.currentState!.validate()) {
                                        final title = titleController.text;
                                        final description =
                                            descriptionController.text;

                                        final origin = originController.text;
                                        final current = currentController.text;
                                        final source = sourceController.text;
                                        final social = socialController.text;

                                        if (_image == null) {
                                          log("Select Image log");
                                          isUploading.value = false;
                                        } else {
                                          Map<String, dynamic> imgRes =
                                              await uploadImage();

                                          if (imgRes.isEmpty) {
                                            log("Image url not found");
                                            isUploading.value = false;
                                          } else {
                                            log(imgRes.toString());
                                            var category = CategoryFn(
                                                id: selectedCategoryValue
                                                    .value);

                                            var loc = Location(
                                                based: current, origin: origin);

                                            var discover = Discover(
                                                description: description,
                                                logo: imgRes["url"],
                                                sourceLink: source,
                                                socialMediaLink: social,
                                                categoryFn: category,
                                                location: loc,
                                                title: title);
                                            log('${discover}');

                                            var res =
                                                await addNewDiscover(discover);
                                            log(res.toString());
                                            if (res["detail"] == "created") {
                                              Get.back(result: "refetch");
                                              Get.snackbar(
                                                  "Created", "Discover added");
                                            }
                                            isUploading.value = false;
                                          }
                                        }
                                      }
                                    },
                              child: Text("Upload"))
                          //------------------------------------------
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
