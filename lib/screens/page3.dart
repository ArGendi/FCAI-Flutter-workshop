import 'package:fcai/providers/info_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Page3 extends StatefulWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  _Page3State createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('page3'),
      ),
      body: Center(
        child: Text(
          Provider.of<InfoProvider>(context).contact.name!,
          style: TextStyle(
            fontSize: 40,
          ),
        ),
      ),
    );
  }
}
