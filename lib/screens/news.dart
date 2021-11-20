import 'package:fcai/api.dart';
import 'package:flutter/material.dart';

class News extends StatefulWidget {
  const News({Key? key}) : super(key: key);

  @override
  _NewsState createState() => _NewsState();
}

class _NewsState extends State<News> {
  Future? _future;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    API api = new API();
    print(1);
    //api.getNews();
    _future = Future((){
      api.getNews();
    });
    print(2);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: _future,
        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
          var data = snapshot.data;
          return Column(
            children: [
              Image.network(data["articles"][0]["urlToImage"]),
              Text(data["articles"][0]["title"]),
            ],
          );
        },
      ),
    );
  }
}
