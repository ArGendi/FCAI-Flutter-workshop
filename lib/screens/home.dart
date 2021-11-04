import 'package:fcai/models/contact_list.dart';
import 'package:fcai/screens/new_page.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print(ContactList.contactList[0].name);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    print('home dispose');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Home',
                style: TextStyle(
                  fontSize: 40,
                ),
              ),
              IconButton(
                onPressed: (){
                  Navigator.pushNamed(context, 'addContact');
                },
                icon: Icon(Icons.arrow_forward, size: 40,),
              )
            ],
          ),
        ),
    );
  }
}
