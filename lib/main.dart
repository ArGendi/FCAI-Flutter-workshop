import 'package:fcai/providers/info_provider.dart';
import 'package:fcai/screens/add_contact.dart';
import 'package:fcai/screens/calender.dart';
import 'package:fcai/screens/home.dart';
import 'package:fcai/screens/new_page.dart';
import 'package:fcai/screens/news.dart';
import 'package:fcai/screens/page3.dart';
import 'package:fcai/widgets/our_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<InfoProvider>(
          create: (context) => InfoProvider(),
        ),
      ],
      child: MaterialApp(
        home: NewPage(),
        routes: {
          'home': (context) => Home(),
          'newPage': (context) => NewPage(),
          'addContact': (context) => AddContact(),
          'page3': (context) {
            return Page3();
          },
        },
      ),
    );
  }
}