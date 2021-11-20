import 'package:fcai/models/contact.dart';
import 'package:flutter/cupertino.dart';

class InfoProvider extends ChangeNotifier{
  Contact _contact = new Contact(
    name: 'Ahmed',
    phone: "0122313131313",
  );

  Contact get contact => _contact;

  changeName(name){
    _contact.name = name;
    notifyListeners();
  }
}