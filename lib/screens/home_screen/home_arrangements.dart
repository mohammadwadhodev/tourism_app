import 'package:flutter/material.dart';
import 'package:tourism_app/constants/constants.dart';
import 'package:tourism_app/reusable_widgets/ellipse_widget.dart';
import 'package:tourism_app/reusable_widgets/profile_widget.dart';

import '../../reusable_widgets/multiple_widgets.dart';

class ShowProfileAndMenu extends StatelessWidget {
  const ShowProfileAndMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top:MediaQuery.of(context).size.width * 0.12,bottom: MediaQuery.of(context).size.width * 0.03),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ProfileWidget(profileImage: kProfileImage),
          const MenuWidget(),
        ],
      ),
    );
  }
}

class ShowPlaceOfInterestText extends StatelessWidget {
  const ShowPlaceOfInterestText({super.key});

  @override
  Widget build(BuildContext context) {
    return const TextWidget(text: 'Places of interest',height: 28);
  }
}


class ShowEllipses extends StatelessWidget {
  const ShowEllipses({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.11,
      width:MediaQuery.of(context).size.height * 0.9,
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              EllipseWidget(color: kForrestBGColor, icon: kTreeImage),
              SizedBox(height: 10),
              Text("Forrest",style: TextStyle(fontSize: 12,color: kEllipseFontColor)),
            ],
          ),
          Column(
            children: [
              EllipseWidget(color: kCampingBGColor, icon: kCampImage),
              SizedBox(height: 10),
              Text("Camping",style: TextStyle(fontSize: 12,color: kEllipseFontColor)),
            ],
          ),
          Column(
            children: [
              EllipseWidget(color: kBoatBGColor, icon: kBoatImage),
              SizedBox(height: 10),
              Text("Boat trip",style: TextStyle(fontSize: 12,color: kEllipseFontColor)),
            ],
          ),
          Column(
            children: [
              EllipseWidget(color: kHikingBGColor, icon: kHikingImage),
              SizedBox(height: 10),
              Text("Hiking",style: TextStyle(fontSize: 12,color: kEllipseFontColor)),
            ],
          ),
          Column(
            children: [
              EllipseWidget(color: kBoatBGColor, icon: kUmbrellaImage),
              SizedBox(height: 10),
              Text("Beach",style: TextStyle(fontSize: 12,color: kEllipseFontColor)),
            ],
          )
        ],
      ),
    );
  }
}

class TopDestinationsTextAndSlider extends StatelessWidget {
  const TopDestinationsTextAndSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const TextWidget(text: "Top destinations", height: 23),
          SizedBox(
              height: 25,
              width: 25,
              child: Image.asset(kSliderImage))
        ],
      ),
    );
  }
}

class ShowDestinationsWidget extends StatelessWidget {
  const ShowDestinationsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 8.0,right: 8.0),
      child: Column(
        children: [
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DestinationWidget(
                title: 'Lake Brahms',
                location: 'Northern France',
                image: kGirl1Image,
                rating: '5.0',
                tag: "img1",
              ),
              SizedBox(width: 20),
              DestinationWidget(
                title:"Lake Golden",
                rating: '5.0',
                location: "Northern Swiss",
                image: kGirl2Image,
                tag: "img2",
              ),
            ],
          ),
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DestinationWidget(
                title:"Lake Huapi",
                rating: '5.0',
                location: "Northern Germany",
                image: kGirl3Image,
                tag: "img3",

              ),
              SizedBox(width: 20),
              DestinationWidget(
                title:"Lake Bers",
                rating: '5.0',
                location: "Northern France",
                image: kGirl4Image,
                tag: "img4",

              ),
            ],
          ),
        ],
      ),
    );
  }
}




