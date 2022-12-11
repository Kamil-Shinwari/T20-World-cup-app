import 'package:flutter/material.dart';

class BackgroundWidget extends StatelessWidget {
  final Widget child;
  final EdgeInsets padding;

  const BackgroundWidget(
      {super.key, required this.padding, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: this.padding,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/bg.jpeg'), fit: BoxFit.fill),
      ),
      child: this.child,
    );
  }
}
