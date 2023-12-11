import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tourism_app/constants/constants.dart';

class CustomTextField extends StatelessWidget {
  final String prefixIcon;
  const CustomTextField({required this.prefixIcon,super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0,bottom: 15),
      child: TextField(
        cursorColor: kTextFieldBGColor,
        decoration: InputDecoration(
          hintText: "Sports areas",
            hintStyle: const TextStyle(fontSize: 15,color: kEllipseFontColor),
          prefixIcon: Padding(
            padding: const EdgeInsets.all(15.0),
            child: SvgPicture.asset(prefixIcon),
          ),
          filled: true,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(30)
          )
        ),
      ),
    );
  }
}
