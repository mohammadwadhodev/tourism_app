import 'package:flutter/material.dart';

import 'details_arrangements.dart';

class DetailsScreen extends StatelessWidget {
  String tag;
  String title;
  String location;

  DetailsScreen({
    required this.tag,
    required this.title,
    required this.location,
    super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          ShowDetailsImage(tag: tag),
          LakeName(lakeName: title),
          LocationAndDistanceWidget(location: location),
          const RatingsAndReviews(),
          const DescriptionLabel(),
          const Description(),

        ],
      ),
    );
  }
}
