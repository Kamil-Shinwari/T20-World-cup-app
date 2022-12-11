import 'package:cric_info_app/models/venueModel.dart';
import 'package:cric_info_app/utility/data_api.dart';
import 'package:cric_info_app/widgets/custom_appBar.dart';
import 'package:cric_info_app/widgets/venueWidget.dart';
import 'package:flutter/material.dart';

class VenueScreen extends StatelessWidget {
  const VenueScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Venue"),
      body: FutureBuilder(
        
        future: DataApi.getAllVenues(context),
        builder: (context,AsyncSnapshot snapshot) {
        if(snapshot.hasData){
          List<Venue> venues = snapshot.data;
          return ListView.builder(
            itemCount: venues.length,
            itemBuilder: (context, index) {
            return VenueWidget(venue: venues[index]);
          },);
        }
        else{
          return Center(child: CircularProgressIndicator(),);
        }
      },),
    );
  }
}
