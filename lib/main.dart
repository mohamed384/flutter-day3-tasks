import 'package:flutter/material.dart';
import 'package:task1/Home.dart';
import 'package:task1/LoginInfo.dart';
import 'package:task1/ScoreScreen.dart';
// import 'package:flutter_application_2/Home.dart';
// import 'package:flutter_application_2/Login.dart';
// import 'package:flutter_application_2/LoginInfo.dart';
// import 'package:flutter_application_2/QuestionsScreen.dart';
// import 'package:flutter_application_2/ScoreScreen.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter tasks',
      // theme: ThemeData(
      //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      // ),


      // home: QuizScreen(),
      // routes:{
      //   '/results':(context) => ScoreScreen(),
      // },


      home: const HomePage(),
      routes: {
      '/logininfo': (context) => LoginInfo(),
      '/results':(context) => ScoreScreen(),
      },
    );
  }
}

