import 'package:fcai/screens/add_contact.dart';
import 'package:fcai/screens/home.dart';
import 'package:fcai/screens/new_page.dart';
import 'package:fcai/widgets/our_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String name = 'Rana';
  int counter = 0;
  Color color = Colors.white;
  List list = [];

  click(num){
    setState(() {
      counter = num;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      routes: {
        'home': (context) => Home(),
        'newPage': (context) => NewPage(),
        'addContact': (context) => AddContact(),
      },
    );
  }
}