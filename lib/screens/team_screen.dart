import 'package:cric_info_app/widgets/background_widget.dart';
import 'package:flutter/material.dart';

import '../models/team.dart';
import '../utility/data_api.dart';
import '../widgets/custom_appBar.dart';
import '../widgets/team_widget.dart';

class TeamScreen extends StatelessWidget {
  const TeamScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Team"),
      body: BackgroundWidget(
        padding: const EdgeInsets.all(10),
        child: FutureBuilder<List<Team>>(
          future: DataApi.getAllTeams(context),
          builder: (BuildContext context, AsyncSnapshot snapshot){

            if( snapshot.hasData){

              List<Team> teams = snapshot.data;

              return ListView.builder(
                  itemCount: teams.length,
                  itemBuilder: (context, index){

                    return TeamWidget(team: teams[index]);

              });
            }else{
              return const Center(child: CircularProgressIndicator());
            }
          },
        ),
      ),
    );
  }
}
