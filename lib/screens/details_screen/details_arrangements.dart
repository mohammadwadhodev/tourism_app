import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tourism_app/constants/constants.dart';
import 'package:tourism_app/reusable_widgets/multiple_widgets.dart';
import 'package:tourism_app/reusable_widgets/profile_widget.dart';

class ShowDetailsImage extends StatelessWidget {
  String tag;

  ShowDetailsImage({
    required this.tag,
    super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top:  MediaQuery.of(context).size.width * 0.12),
      child: Hero(
        tag: tag,
        child: Container(
          height: MediaQuery.of(context).size.height * 0.51,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage(kGirl5Image))
          ),
        ),
      ),
    );
  }
}

class LakeName extends StatelessWidget {
  String lakeName;

  LakeName({
    required this.lakeName,
    super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0,vertical: 10),
      child: TextWidget(text: lakeName, height: 27),
    );
  }
}


class LocationAndDistanceWidget extends StatelessWidget {

  String location;

  LocationAndDistanceWidget({required this.location,super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Row(
        children: [
          Expanded(child: LocationWidget(icon: kLocationImage, title:location)),
          const SizedBox(width: 20),
          Expanded(child: LocationWidget(icon: kMapImage, title: "44 km from you")),
        ],
      ),
    );
  }
}

class LocationWidget extends StatelessWidget {

  String icon;
  String title;

  LocationWidget({
    required this.icon,
    required this.title,
    super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.2),
        borderRadius: BorderRadius.circular(50)
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Row(
          children: [
            SizedBox(height:15,width:15,child: Image.asset(icon)),
            const SizedBox(width: 7),
            TextWidget(text: title, height: 10)
          ],
        ),
      ),
    );
  }
}

class RatingsAndReviews extends StatelessWidget {
  const RatingsAndReviews({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0,vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,

        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const TextWidget(text: "5.0", height: 16),
                  Container(
                    padding: const EdgeInsets.only(left: 3.0),
                    height: 25,
                    child:ListView(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      children: List.generate(4, (index) => Padding(
                        padding: const EdgeInsets.only(left: 2.0),
                        child: SvgPicture.asset(kStarImage),
                      )),
                    )
                  ),
                ],
              ),
              Row(
                children: [
                  const Text("3543",style:TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.black54)),
                  const SizedBox(width: 4),
                  Text("Reviews",style:TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color:kLightGreyColor)),

                ],
              ),
            ],
          ),
          Stack(
            children: [
              SizedBox(width: MediaQuery.of(context).size.width / 2.8,height: 20),
              ProfileWidget(profileImage: kImg1,radius: 23),
              Positioned(left:27,child: ProfileWidget(profileImage: kImg2,radius: 23)),
              Positioned(left:54,child: ProfileWidget(profileImage: kImg3,radius: 23)),
              Positioned(left:81,child: ProfileWidget(profileImage: kImg4,radius: 23)),
              Positioned(left:108,child: ProfileWidget(text: "+11",radius: 23)),
            ],
          )
        ],
      ),
    );
  }
}

class DescriptionLabel extends StatelessWidget {
  const DescriptionLabel({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 25.0,top: 5),
      child: TextWidget(text: "Description", height: 22),
    );
  }
}

class Description extends StatelessWidget {
  const Description({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.0,vertical: 10),
      child: Text("Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren.",
        style: TextStyle(color: kGreyColor,fontSize: 14),
      ),
    );
  }
}






