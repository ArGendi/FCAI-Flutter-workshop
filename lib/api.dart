import 'dart:convert';

import 'package:http/http.dart';

class API{
  Future getNews() async{
    var response = await get(
      Uri.parse("https://newsapi.org/v2/everything?q=tesla&from=2021-10-15&sortBy=publishedAt&apiKey=7cbef3e0859e47bea7efc555e5a5b35e"),
      headers: {"Content-type": "application/json",},
    );
    print(response);
    var data = jsonDecode(response.body);
    return data;
  }
}