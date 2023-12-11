import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class EllipseWidget extends StatelessWidget {
  final Color color;
  final String icon;

  const EllipseWidget({required this.color,required this.icon,super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 33,
      backgroundColor: color.withOpacity(0.3),
      child: CircleAvatar(
        radius: 28,
        backgroundColor: color,
        child: SizedBox(height: 30,width: 30,child: SvgPicture.asset(icon)),
      ),
    );
  }
}
