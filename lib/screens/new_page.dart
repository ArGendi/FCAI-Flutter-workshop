import 'package:fcai/providers/info_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NewPage extends StatefulWidget {
  const NewPage({Key? key}) : super(key: key);

  @override
  _NewPageState createState() => _NewPageState();
}

class _NewPageState extends State<NewPage> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('init');
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    print('dispose');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              Provider.of<InfoProvider>(context).contact.name!,
              style: TextStyle(
                fontSize: 40,
              ),
            ),
            IconButton(
              onPressed: (){
                Provider.of<InfoProvider>(context, listen: false).changeName('7mada');
              },
              icon: Icon(Icons.ac_unit_sharp),
            ),
            IconButton(
              onPressed: (){
                Navigator.pushNamed(context, 'page3');
              },
              icon: Icon(Icons.arrow_forward_ios),
            ),
          ],
        ),
      ),
    );
  }
}
