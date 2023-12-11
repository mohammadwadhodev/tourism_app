import 'package:flutter/material.dart';
import 'package:tourism_app/reusable_widgets/multiple_widgets.dart';

class ProfileWidget extends StatelessWidget {
  String? profileImage;
  String? text;
  double? radius;


  ProfileWidget({
    this.profileImage,
    this.radius = 33.0,
    this.text,
    super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.05),
                blurRadius: 5,
                spreadRadius: 5),
          ]
      ),
      child: CircleAvatar(
        radius: radius,
        backgroundColor: Colors.white,
        child: Center(
          child: profileImage != null ? CircleAvatar(
            radius: radius! - 3.0,
            backgroundImage: AssetImage(profileImage!),
          ): CircleAvatar(
            backgroundColor: Colors.grey.withOpacity(0.2),
            radius: radius! - 3.0,
            child: TextWidget(text: text!,height: 12),
          ),
        ),
      ),
    );
  }
}
