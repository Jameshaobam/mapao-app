import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mapao_app/models/event.dart';
import 'package:mapao_app/utilities/utils.dart';

class EventItem extends StatelessWidget {
  EventItem({super.key, required this.event});
  String sampleImage = "https://picsum.photos/250?image=9";
  final Event event;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20.0),
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: getAdaptiveSize(context, 200),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(7),
                child: Image.network(
                  event.imageUrl == null || event.imageUrl == ""
                      ? sampleImage
                      : event.imageUrl!,
                  fit: BoxFit.fill,
                )),
          ),
          const SizedBox(
            height: 5.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width / 2,
                child: Text(
                  event.title!,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: getAdaptiveSize(context, 20)),
                ),
              ),
              Text(event.date!,
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.normal,
                      fontSize: getAdaptiveSize(context, 13))),
            ],
          ),
          const SizedBox(
            height: 10.0,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Text(
              event.description!,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    FontAwesomeIcons.locationDot,
                    size: getAdaptiveSize(context, 13),
                  ),
                  const SizedBox(
                    width: 3.0,
                  ),
                  Text(
                    "${event.spot!},${event.state}",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: getAdaptiveSize(context, 10.0),
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Row(
                children: [
                  Icon(
                    FontAwesomeIcons.personWalking,
                    size: getAdaptiveSize(context, 13.0),
                  ),
                  Text("${event.goingNumber}"),
                ],
              )
            ],
          ),
          const SizedBox(
            height: 10.0,
          ),
        ],
      ),
    );
  }
}
