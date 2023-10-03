import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mapao_app/models/review_model.dart';

class ReviewItem extends StatelessWidget {
  const ReviewItem({
    super.key,
    required this.reviewer,
    required this.description,
  });
  final Reviewer reviewer;
  final String description;
  // final DateTime createdTime;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.blueGrey[100],
      ),
      margin: const EdgeInsets.only(top: 5.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(reviewer.username),
          const SizedBox(
            height: 9.0,
          ),
          Text('"$description"'),
          const SizedBox(
            height: 9.0,
          ),
          // Text(createdTime.toString()),
        ],
      ),
    );
  }
}
