import 'package:cric_info_app/screens/home_screen.dart';
import 'package:flutter/material.dart';
class ContainerWidget extends StatelessWidget {
 final String url;
 final String text;
 VoidCallback onpressed;

 ContainerWidget({required this.url,required this.onpressed,required this.text});


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:this.onpressed,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 5,
              ),
            ]),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  "$url",
                  width: 100,
                  height: 100,
                ),
                Text(
                  "$text",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ]),
        ),
      ),
    );
  }
}
