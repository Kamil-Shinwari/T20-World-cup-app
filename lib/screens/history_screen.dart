import 'package:cric_info_app/widgets/custom_appBar.dart';
import 'package:cric_info_app/widgets/history_widget.dart';
import 'package:flutter/material.dart';
import '../models/history.dart';
import '../utility/data_api.dart';
import '../widgets/background_widget.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: CustomAppBar(
        title: "History",
      ),
      body: BackgroundWidget(
        padding: const EdgeInsets.all(10),
        child: FutureBuilder<List<History>>(
          future: DataApi.getAllHistory(context),
          builder: (BuildContext context, AsyncSnapshot snapshot){

            if(!snapshot.hasData){

              return const Center(
                  child: CircularProgressIndicator(),
                );

            }else{

                List<History> historyList = snapshot.data;

                return Expanded(
                  child: ListView.builder(
                      itemCount: historyList.length,
                      itemBuilder: (context, index) {
                        return HistoryWidget(history: historyList[index]);

                        // return HistoryWidget(history: historyList[index]);
                      }),
                );

              
            }
          },
        ),
      )
    );
  }
}