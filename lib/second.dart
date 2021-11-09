import 'package:flutter/material.dart';
import 'home.dart';
import 'main.dart';

class SecondPag extends StatefulWidget {
  const SecondPag({Key? key}) : super(key: key);

  @override
  _SecondPagState createState() => _SecondPagState();
}

class _SecondPagState extends State<SecondPag> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SafeArea(
          child: Scaffold(
            body: Column(children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        'Back',
                        style: TextStyle(color: Colors.green),
                      ),
                    ),
                    Text(
                      'Content',
                      style: TextStyle(fontSize: 32),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, Myrouts.LastPage);
                      },
                      child: Text(
                        'Filter',
                        style: TextStyle(color: Colors.green),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  margin: EdgeInsets.fromLTRB(2, 25, 2, 5),
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(15)),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: 'Search', border: InputBorder.none),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(15, 25, 15, 10),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(hintText: 'Search result'),
                    ),
                    TextField(
                      decoration: InputDecoration(hintText: 'Search result'),
                    ),
                    TextField(
                      decoration: InputDecoration(hintText: 'Search result'),
                    ),
                    TextField(
                      decoration: InputDecoration(hintText: 'Search result'),
                    ),
                    TextField(
                      decoration: InputDecoration(hintText: 'Search result'),
                    ),
                    TextField(
                      decoration: InputDecoration(hintText: 'Search result'),
                    ),
                    //Text('data')
                  ],
                ),
              ),
            ]),
          ),
        ));
  }
}
