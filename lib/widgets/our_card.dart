import 'package:flutter/material.dart';

class OurCard extends StatefulWidget {
  final String name;
  final String email;
  final String phone;

  const OurCard({Key? key, required this.name, required this.email, required this.phone}) : super(key: key);

  @override
  _OurCardState createState() => _OurCardState();
}

class _OurCardState extends State<OurCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        width: 300,
        height: 200,
        decoration: BoxDecoration(
            color: Colors.yellow,
            borderRadius: BorderRadius.all(Radius.circular(20)),
            border: Border.all(
                color: Colors.green,
                width: 4
            )
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            children: [
              CircleAvatar(
                radius: 30,
                child: Icon(Icons.person),
              ),
              SizedBox(width: 20,),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(widget.name),
                  Row(
                    children: [
                      Icon(Icons.email),
                      SizedBox(width: 10,),
                      Text(widget.email),
                    ],
                  ),
                  Text(widget.phone),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

