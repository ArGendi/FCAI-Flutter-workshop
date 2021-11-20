import 'package:fcai/models/contact.dart';
import 'package:fcai/models/contact_list.dart';
import 'package:fcai/screens/new_page.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool x = false;
  TextEditingController _controller = new TextEditingController();
  var _key = GlobalKey<FormState>();
  String? email;
  String? password;

  onClick(){
    _controller.text;
  }

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
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Form(
              key: _key,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextFormField(
                    //controller: _controller,
                    //keyboardType: TextInputType.phone,
                    validator: (value){
                      if(value!.isEmpty) return 'Enter your email';
                      return null;
                    },
                    onSaved: (value){
                      email = value;
                    },
                    decoration: InputDecoration(
                      labelText: 'email',
                      enabledBorder: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.red,
                        )
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.red,
                          )
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  TextFormField(
                    validator: (value){
                      if(value!.isEmpty) return 'Enter your password';
                      return null;
                    },
                    obscureText: true,
                    //controller: _controller,
                    //keyboardType: TextInputType.phone,
                    onSaved: (value){
                      password = value;
                    },
                    decoration: InputDecoration(
                        labelText: 'password',
                        enabledBorder: OutlineInputBorder(

                        ),
                        focusedBorder: OutlineInputBorder(),
                      errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.red,
                          )
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.red,
                          )
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  SizedBox(height: 10,),
                  MaterialButton(
                    onPressed: (){
                      _key.currentState!.validate();
                      _key.currentState!.save();
                      print(email);
                      print(password);
                    },
                    child: Text('Login'),
                  )
                ],
              ),
            ),
          )
        ),
    );
  }
}
