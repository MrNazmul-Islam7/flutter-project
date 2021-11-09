// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

bool show = true;

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.grey.shade300,
          body: Column(
            children: [
              // Stack(
              //   children: [
              //     Positioned(
              //       bottom: 0.0,
              //       child: Container(
              //         width: 500,
              //         color: Colors.black,
              //       ),
              //     ),
              //   ],
              // ),
              Padding(
                padding: EdgeInsets.fromLTRB(160, 140, 160, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 350,
                      width: 530,
                      //color: Colors.blue,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
                        child: ListTile(
                          title: Text(
                            'facebook',
                            style: TextStyle(
                                fontSize: 50,
                                fontWeight: FontWeight.w900,
                                // letterSpacing: 1,
                                fontFamily: 'Anton',
                                color: Colors.blue),
                          ),
                          subtitle: Text(
                            'Facebook helps you connect and share with the people in your life.',
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 330,
                      width: 400,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: 'Email address or phone number',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(12, 0, 12, 12),
                            child: TextField(
                              obscureText: show,
                              decoration: InputDecoration(
                                hintText: 'Password',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                suffixIcon: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      show = !show;
                                    });
                                  },
                                  icon: Icon(show
                                      ? Icons.visibility_outlined
                                      : Icons.visibility_off_outlined),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(12, 0, 12, 12),
                            child: MaterialButton(
                              onPressed: () {},
                              minWidth: 500,
                              height: 55,
                              color: Colors.blue,
                              child: Text(
                                'Log In',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(12, 0, 12, 12),
                            child: MaterialButton(
                              onPressed: () {},
                              child: Text(
                                'Forgotten password?',
                                style: TextStyle(color: Colors.blue),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(12, 0, 12, 12),
                            child: Divider(
                              thickness: 1.2,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(12, 0, 12, 12),
                            child: MaterialButton(
                              onPressed: () {},
                              minWidth: 210,
                              height: 55,
                              color: Colors.green,
                              child: Text(
                                'Create new account',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                          ),
                          // SizedBox(
                          //   height: 10,
                          // ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(850, 15, 0, 0),
                child: Row(
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'create a Page',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                    ),
                    Text('for a celebrity, brand or business.'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
