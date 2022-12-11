import 'package:cric_info_app/utility/data_api.dart';
import 'package:cric_info_app/widgets/custom_appBar.dart';
import 'package:cric_info_app/widgets/match_widget.dart';
import 'package:flutter/material.dart';
import '../models/Match.dart';

class ScheduleScreen extends StatelessWidget {
  const ScheduleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(title: "Schedule"),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: FutureBuilder<List<Match>>(
            future: DataApi.getAllMatches(context),
            builder: (context,AsyncSnapshot snapshot) {
              if(snapshot.hasData){
    
                  List<Match> matches = snapshot.data;
                  return ListView.builder(
                    itemCount: matches.length,
                    itemBuilder: (context, index) {
                    return MathcWidget(match: matches[index]);
                  },);
              }else{
                return Center(child: CircularProgressIndicator(),);
              }
            }
          ),
        ),
      ),
    );
  }
}
