// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

String name = '';
bool isHiddenPassword = true;

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.close_outlined,
                    ),
                    Text(
                      'SignUp',
                      style: TextStyle(fontSize: 40.0),
                    ),
                    Text(
                      'Login',
                      style: TextStyle(color: Colors.green),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(10, 50, 10, 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  // color: Colors.grey.withOpacity(.50),
                ),
                child: TextField(
                  decoration: InputDecoration(
                      labelText: 'Name', hintText: 'Enter your user name'),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(10, 0, 10, 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  // color: Colors.grey.withOpacity(.50),
                ),
                child: TextField(
                  decoration: InputDecoration(
                      labelText: 'Email', hintText: 'Enter your user name'),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  // color: Colors.grey.withOpacity(.50),
                ),
                child: TextField(
                  obscureText: isHiddenPassword,
                  decoration: InputDecoration(
                    labelText: 'password',
                    hintText: 'Enter your paassword',
                    suffix: MaterialButton(
                      onPressed: () {
                        setState(() {
                          isHiddenPassword = !isHiddenPassword;
                        });
                      },
                      child: isHiddenPassword ? Text('show') : Text('Hide'),
                    ),
                  ),
                ),
              ),
              MaterialButton(
                onPressed: () {},
                minWidth: 350,
                color: Colors.green,
                child: Text(
                  'Log In',
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              MaterialButton(
                onPressed: () {},
                child: Text(
                  'forget your fassword?',
                  style: TextStyle(color: Colors.green),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
