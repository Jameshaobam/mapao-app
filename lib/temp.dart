// import 'dart:developer';

// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:mapao_app/networking/fetch.dart';
// import 'package:mapao_app/utilities/utils.dart';
// import 'package:flutter_country_state/flutter_country_state.dart';
// import 'package:mapao_app/widgets/event_item.dart';
// import 'package:flutter_hooks/flutter_hooks.dart';
// import 'package:fquery/fquery.dart';

// class EventScreen extends StatefulHookWidget {
//   const EventScreen({super.key});

//   @override
//   State<EventScreen> createState() => _EventScreenState();
// }

// class _EventScreenState extends State<EventScreen> {
//   String selectedState = "";
//   String selectedCountry = "";
//   late Widget eventWidget;

//   var listOfEvents;

//   Future<void> fetchEvents() async {
//     final events = useQuery(["eventLists"], () => getEventList("all"),
//         refetchOnMount: RefetchOnMount.always);

//     if (events.isFetching) {
//       setState(() {
//         eventWidget = Center(
//           child: CircularProgressIndicator(),
//         );
//       });
//     }

//     if (events.isError) {
//       setState(() {
//         eventWidget = Center(child: Text(listOfEvents.error.toString()));
//       });
//     }
//     setState(() {
//       listOfEvents = events;
//     });
//     setState(() {
//       eventWidget = Expanded(
//         child: RefreshIndicator(
//           onRefresh: fetchEvents,
//           child: ListView.builder(
//             shrinkWrap: true,
//             itemCount: 10,
//             itemBuilder: (context, index) {
//               return EventItem();
//             },
//           ),
//         ),
//       );
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     fetchEvents();

//     log("Fetched: ${listOfEvents.data}");

//     return Container(
//       padding: EdgeInsets.only(
//           top: getAdaptiveSize(context, 10),
//           left: getAdaptiveSize(context, 10),
//           right: getAdaptiveSize(context, 10)),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           const SizedBox(
//             height: 3.0,
//           ),

//           const Row(
//             children: [
//               Text("Events",
//                   style: TextStyle(
//                       color: Colors.black,
//                       fontWeight: FontWeight.bold,
//                       fontSize: 20)),
//               const SizedBox(
//                 width: 5.0,
//               ),
//               Expanded(
//                 child: Divider(
//                   height: 5,
//                   color: Colors.grey,
//                 ),
//               )
//             ],
//           ),
//           const SizedBox(
//             height: 5.0,
//           ),
//           // Select country and state
//           Row(
//             children: [
//               //Country list
//               GestureDetector(
//                 onTap: () {
//                   showModalBottomSheet(
//                     isScrollControlled: true,
//                     context: context,
//                     isDismissible: true,
//                     builder: (context) => SizedBox(
//                       height: MediaQuery.of(context).size.height * 0.7,
//                       child: ShowMyDialog(
//                         searchHint: 'Search for a country',
//                         substringBackground: Colors.black,
//                         style: const TextStyle(
//                             color: Colors.black, fontWeight: FontWeight.bold),
//                         countryHeaderStyle: const TextStyle(
//                             color: Colors.black, fontWeight: FontWeight.w500),
//                         searchStyle: const TextStyle(color: Colors.black),
//                         subStringStyle: const TextStyle(color: Colors.white),
//                         selectedCountryBackgroundColor: Colors.pink,
//                         notSelectedCountryBackgroundColor: Colors.white,
//                         onSelectCountry: () {
//                           setState(() {
//                             selectedCountry = Variables.country;
//                           });
//                         },
//                       ),
//                     ),
//                   );
//                 },
//                 child: Row(
//                   children: [
//                     Icon(FontAwesomeIcons.locationDot,
//                         size: getAdaptiveSize(context, 13.0),
//                         color: Colors.blue),
//                     const SizedBox(
//                       width: 5.0,
//                     ),
//                     Text(
//                       selectedCountry == "" ? "select state" : selectedCountry,
//                       style: TextStyle(color: Colors.blue),
//                     )
//                   ],
//                 ),
//               ),
//               const SizedBox(
//                 width: 5,
//               ),
//               //state list
//               GestureDetector(
//                 onTap: () {
//                   showModalBottomSheet(
//                     isScrollControlled: false,
//                     context: context,
//                     isDismissible: true,
//                     builder: (context) => SizedBox(
//                       height: MediaQuery.of(context).size.height * 0.7,
//                       child: StateDialog(
//                         style: const TextStyle(
//                             color: Colors.black, fontWeight: FontWeight.w500),
//                         stateHeaderStyle: const TextStyle(
//                             color: Colors.black, fontWeight: FontWeight.bold),
//                         subStringStyle: const TextStyle(color: Colors.white),
//                         substringBackground: Colors.black,
//                         selectedStateBackgroundColor: Colors.orange,
//                         notSelectedStateBackgroundColor: Colors.white,
//                         onSelectedState: () {
//                           setState(() {
//                             selectedState = Variables.state;
//                           });
//                         },
//                       ),
//                     ),
//                   );
//                 },
//                 child: Row(
//                   children: [
//                     Icon(FontAwesomeIcons.locationDot,
//                         size: getAdaptiveSize(context, 13.0),
//                         color: Colors.blue),
//                     const SizedBox(
//                       width: 5.0,
//                     ),
//                     Text(selectedState == "" ? "select state" : selectedState,
//                         style: TextStyle(color: Colors.blue))
//                   ],
//                 ),
//               ),
//             ],
//           ),
//           const SizedBox(
//             height: 10.0,
//           ),

//           Center(
//             child: SizedBox(
//               height: 1,
//               width: getAdaptiveSize(context, 100),
//               child: Container(
//                 color: Colors.black,
//               ),
//             ),
//           ),
//           const SizedBox(
//             height: 10.0,
//           ),

//           // List of Events
//           eventWidget
//         ],
//       ),
//     );
//   }
// }
