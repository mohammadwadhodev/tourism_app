import 'package:flutter/material.dart';
import 'package:tourism_app/constants/constants.dart';

import '../../reusable_widgets/textfield.dart';
import 'home_arrangements.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ShowProfileAndMenu(),
            ShowPlaceOfInterestText(),
            CustomTextField(prefixIcon:kSearchImage),
            ShowEllipses(),
            TopDestinationsTextAndSlider(),
            ShowDestinationsWidget(),
          ],
        ),
      ),
    );
  }
}
