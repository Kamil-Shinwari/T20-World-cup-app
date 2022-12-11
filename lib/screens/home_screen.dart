import 'package:cric_info_app/screens/history_screen.dart';
import 'package:cric_info_app/screens/schedule_screens.dart';
import 'package:cric_info_app/screens/team_screen.dart';
import 'package:cric_info_app/screens/venue_screen.dart';
import 'package:cric_info_app/widgets/MyContainerWidget.dart';
import 'package:cric_info_app/widgets/background_widget.dart';
import 'package:cric_info_app/widgets/custom_appBar.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(title: "T20 World Cup"),
        body: BackgroundWidget(
          padding: EdgeInsets.all(20),
          child: GridView(
            
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,crossAxisSpacing: 20,mainAxisSpacing: 20),
                  children: [
                    ContainerWidget(
                      url: "assets/dashboard/schedule.png",
                       onpressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => ScheduleScreen(),));
                       },
                        text: "Schedule"),
                         ContainerWidget(
                  url: "assets/dashboard/venues.png",
                  onpressed: () {
                     Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => VenueScreen(),
                        ));
                  },
                  text: "venue"),

                   ContainerWidget(
                  url: "assets/dashboard/history.png",
                  onpressed: () {

                     Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HistoryScreen(),
                        ));
                  },
                  text: "History"),

                    ContainerWidget(
                  url: "assets/dashboard/teams.png",
                  onpressed: () {
                     Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => TeamScreen(),
                        ));
                  },
                  text: "Teams"),

                    ContainerWidget(
                  url: "assets/dashboard/live_score.png",
                  onpressed: () async {
                    const url = 'https://www.t20worldcup.com/home-page';

                  await canLaunchUrl(Uri.parse(url))
                      ? await launchUrl(Uri.parse(url))
                      : throw 'Could not launch $url';
                  },
                  text: "Live Score"),

                    ContainerWidget(
                  url: "assets/dashboard/highlights.png",
                  onpressed: () async {
                    const url = 'https://www.youtube.com/c/ICC/featured';

                  await canLaunchUrl(Uri.parse(url))
                      ? await launchUrl(Uri.parse(url))
                      : throw 'Could not launch $url';
                  },
                  text: "Highlights"),
                  ],
                  ),
        ));
  }
}


