import 'package:cric_info_app/screens/home_screen.dart';
import 'package:cric_info_app/utility/app_colors.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'T20 World Cup',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        
        primaryColor: AppColors.primaryColor,
        appBarTheme: AppBarTheme(
          backgroundColor: AppColors.primaryColor,
        )
      ),
      home: HomeScreen(),
    );
  }
}

