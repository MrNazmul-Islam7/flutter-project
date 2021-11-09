// ignore_for_file: prefer_const_constructors

import 'package:assignment/home.dart';
import 'package:assignment/last.dart';
import 'package:assignment/second.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (context) => HomePage(),
        Myrouts.SecondPage: (context) => SecondPag(),
        Myrouts.LastPage: (context) => LastPag(),
        Myrouts.HomePage: (context) => HomePage(),
      },
    );
  }
}

class Myrouts {
  static String SecondPage = '/second';
  static String LastPage = 'third';
  static String HomePage = 'u';
}
