import 'package:flutter/material.dart';
import 'package:project_01/modules/counter/Counter_screen.dart';
import 'package:project_01/modules/login/Login_screen.dart';
import 'package:project_01/modules/home/home_screen.dart';
import 'package:project_01/modules/users/users_screen.dart';
import 'modules/bmi/bmi_screen.dart';
import 'modules/messenger/messenger_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget
{
  const MyApp({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // theme: ThemeData.dark().copyWith(
      //   primaryColor: const Color(0xFF0A0E21),
      //   scaffoldBackgroundColor: const Color(0xFF0A0E21),
      // ),
      home: BmiScreen(),
    );
  }
}