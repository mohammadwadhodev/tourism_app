import 'package:flutter/material.dart';
import 'package:tourism_app/screens/home_screen/home_screen.dart';

void main() {
  runApp( MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(fontFamily: 'Poppins'),
    home: const HomeScreen(),
  ));
}


