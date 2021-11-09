// ignore_for_file: unused_import, avoid_web_libraries_in_flutter

import 'dart:html';

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
      home: SafeArea(
        child: Scaffold(
          //backgroundColor: Colors.tealAccent,
          appBar: AppBar(
            centerTitle: true,
            leading: Icon(Icons.arrow_forward),
            // ignore: prefer_const_constructors
            title: Text(
              'Profile',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          body: SafeArea(
            child: Center(
              child: Stack(
                alignment: Alignment.center,
                fit: StackFit.expand,
                children: [
                  Expanded(
                    child: Image(
                      image: NetworkImage(
                          'https://cdn.pixabay.com/photo/2016/10/12/19/50/matrix-1735640_960_720.jpg'),
                      fit: BoxFit.fill,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(25, 180, 25, 10),
                    height: 420,
                    width: 320,
                    decoration: BoxDecoration(
                      color: Colors.blueGrey.withOpacity(.4),
                    ),
                  ),
                  Positioned(
                    top: 60,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(80, 0, 80, 80),
                      child: CircleAvatar(
                        backgroundColor: Colors.white.withOpacity(.01),
                        radius: 100,
                        child: Image(
                          image: NetworkImage(
                              'https://cdn.pixabay.com/photo/2019/12/24/15/38/hacker-4717018_960_720.png'),
                          height: 400,
                          width: 400,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 260,
                    child: Text(
                      'Vuorudemoto Kyo',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(50, 140, 50, 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MaterialButton(
                          onPressed: () {},
                          color: Colors.black,
                          height: 30,
                          //minWidth: 130,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Text(
                            'contact',
                            style: TextStyle(
                              color: Colors.green,
                            ),
                          ),
                        ),
                        MaterialButton(
                          onPressed: () {},
                          color: Colors.black,
                          height: 30,
                          //minWidth: 130,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Text(
                            'Hire',
                            style: TextStyle(
                              color: Colors.green,
                            ),
                          ),
                        ),
                        MaterialButton(
                          onPressed: () {},
                          color: Colors.black,
                          height: 30,
                          //minWidth: 130,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Text(
                            'portfolio',
                            style: TextStyle(
                              color: Colors.green,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 80,
                    margin: EdgeInsets.fromLTRB(45, 390, 45, 30),
                    padding: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.black),
                    child: TextField(
                      style: TextStyle(color: Colors.green),
                      decoration: InputDecoration(
                          hintText: 'Write something Annonymus',
                          hintStyle: TextStyle(color: Colors.green),
                          border: InputBorder.none),
                    ),
                  ),
                  Positioned(
                    top: 510,
                    right: 50,
                    child: MaterialButton(
                      onPressed: () {},
                      color: Colors.black,
                      height: 30,
                      minWidth: 30,
                      hoverColor: Colors.white,
                      child: Text(
                        'send',
                        style: TextStyle(
                          color: Colors.green,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
