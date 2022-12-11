import 'package:cric_info_app/utility/app_colors.dart';
import 'package:cric_info_app/utility/helper.dart';
import 'package:flutter/material.dart';
import '../models/Match.dart';

class MathcWidget extends StatelessWidget {
  final Match match;

  const MathcWidget({super.key, required this.match});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      margin: const EdgeInsets.only(
        bottom: 15,
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
        Row(
          children: [
            Expanded(
              
              child: Container(
                decoration: const BoxDecoration(
                    color: AppColors.lightPurpleColor,
                    borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(20))),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        RoundFlag(flag: match.flagOne),
                        const SizedBox(width: 10,),
                        Text(match.teamOne,style: const TextStyle(color: Colors.white,),),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left:10.0),
                      child: Text("Vs",style: TextStyle(color: Colors.white),),
                    ),
                     Row(
                        children: [
                          RoundFlag(flag: match.flagTwo),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            match.teamTwo,
                            style: const TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                  ],
                ),
              ),
              ),
            ),
            Expanded(
                child: Container(
                  padding: EdgeInsets.only(left: 20),
               decoration: const BoxDecoration(
                  color: AppColors.pinkColor,
                  borderRadius:
                      BorderRadius.only(bottomRight: Radius.circular(20))),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children:  [
                        Text(Helper.getData(match.date),style:  TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w600),),
                         Text(
                      Helper.gmtTime(match.date),
                      style: TextStyle(
                          color: Colors.white,
                          
                          fontWeight: FontWeight.w600),
                    ),
                     Text(
                      Helper.getLocalTime(match.date),
                      style: TextStyle(
                          color: Colors.white,
                          
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      match.venue,
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w600),
                    ),
                    
                      ]),
            )),
          ],
        ),
        Image.asset("assets/images/player_icon.png",width: 50,height: 50,color: Colors.white,),
      ]),
    );
  }
}

class RoundFlag extends StatelessWidget {
  final String flag;

  const RoundFlag({super.key, required this.flag});

  @override
  Widget build(BuildContext context) {
    return Container(width: 40,height: 40,
    
    decoration: BoxDecoration(shape: BoxShape.circle,
    border: Border.all(color: Colors.white,width: 2)
    ),
    child: ClipOval(child: Image.asset("assets/flags/$flag",fit: BoxFit.fill,)),
    );
  }
}
