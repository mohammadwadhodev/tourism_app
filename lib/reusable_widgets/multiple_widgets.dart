import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tourism_app/constants/constants.dart';

import '../screens/details_screen/details_screen.dart';

class MenuWidget extends StatelessWidget {
  const MenuWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(kMenuImage);
  }
}

class TextWidget extends StatelessWidget {

  final String text;
  final double height;

  const TextWidget({ required this.text, required this.height,super.key});

  @override
  Widget build(BuildContext context) {
    return Text(text,style: TextStyle(fontSize: height,fontWeight: FontWeight.bold,color: Colors.black));
  }
}

class DestinationWidget extends StatelessWidget {
 
  final String title;
  final String location;
  final String image;
  final String rating;
  final String tag;

  const DestinationWidget({
    required this.title,
    required this.location,
    required this.image,
    required this.rating,
    required this.tag,
    super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            CupertinoButton(
              minSize: 0,
              padding: EdgeInsets.zero,
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) =>  DetailsScreen(tag: tag,title: title,location: location)));
              },
              child: Hero(
                tag: tag,
                child: Container(
                  height: 175,
                  width: 175,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(image))
                  ),
                ),
              ),
            ),
            shadowOnImage(),
            ratingWidget(),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 5.0),
          child: TextWidget(text: title, height: 16),
        ),

        Row(
          children: [
            Image.asset(kLocationImage,color: kLightGreyColor),
            const SizedBox(width: 4),
            Text(location,style: TextStyle(color: kLightGreyColor,fontSize: 11))
          ],
        ),
      ],
    );
  }


  Widget shadowOnImage(){
    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          boxShadow:[
            BoxShadow(
              color: Colors.white.withOpacity(0.35), // Adjust shadow color and opacity
              blurRadius: 10, // Adjust the blur radius as needed
              spreadRadius: 2, // Adjust the spread radius as needed
              offset: Offset(0, 4), // Offset to position the shadow vertically
            ),
          ]
        ),
      ),
    );
  }

  Widget ratingWidget(){
    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 17),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextWidget(text: rating, height: 15),
            const SizedBox(width: 5),
            SvgPicture.asset(kStarImage)
          ],
        ),
      ),
    );
  }

}


