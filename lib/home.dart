// ignore_for_file: prefer_const_constructors, unused_import

import 'package:flutter/material.dart';
import 'main.dart';
import 'second.dart';
import 'last.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.greenAccent[400],
        body: Center(
          child: Container(
            padding: EdgeInsets.fromLTRB(20, 28, 20, 10),
            height: 390,
            width: 380,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12), color: Colors.white),
            child: Column(
              children: [
                Text(
                  'Congratulations!',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 12,
                ),
                Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
                SizedBox(
                  height: 35,
                ),
                MaterialButton(
                  height: 50,
                  onPressed: () {
                    Navigator.pushNamed(context, Myrouts.SecondPage);
                  },
                  minWidth: 350,
                  color: Colors.greenAccent[400],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(26),
                  ),
                  child: Text(
                    'Content',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
                SizedBox(
                  height: 9,
                ),
                MaterialButton(
                  height: 50,
                  onPressed: () {
                    Navigator.pushNamed(context, Myrouts.LastPage);
                  },
                  minWidth: 350,
                  //color: Colors.greenAccent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(26),
                  ),
                  child: Text(
                    'Secondery Action',
                    style:
                        TextStyle(color: Colors.greenAccent[400], fontSize: 18),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
