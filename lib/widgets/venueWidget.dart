import 'package:cric_info_app/models/venueModel.dart';
import 'package:cric_info_app/utility/app_colors.dart';
import 'package:flutter/material.dart';

class VenueWidget extends StatelessWidget {
  final Venue venue;

  const VenueWidget({super.key, required this.venue});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 330,
      margin: EdgeInsets.only(bottom: 30, top: 10, left: 10, right: 10),
      decoration: BoxDecoration(
          color: AppColors.pinkColor,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(color: Colors.grey, blurRadius: 5),
          ]),
      child: Column(children: [
        Container(
          height: 250,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Stack(children: [
            Positioned.fill(
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.asset(
                    venue.image,
                    fit: BoxFit.cover,
                  )),
            ),
            Positioned(
                left: (MediaQuery.of(context).size.width) / 2 - 95,
                child: Container(
                  width: 150,
                  height: 40,
                  decoration: BoxDecoration(
                      color: AppColors.primaryColor,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 5
                        )
                      ],
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20))),
                  child: Center(
                      child: Text(
                    venue.country,
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  )),
                ))
          ]),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          venue.stadium,
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          venue.city,
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
        )
      ]),
    );
  }
}
