import 'package:fcai/models/contact.dart';
import 'package:fcai/models/contact_list.dart';
import 'package:flutter/material.dart';

class AddContact extends StatefulWidget {
  const AddContact({Key? key}) : super(key: key);

  @override
  _AddContactState createState() => _AddContactState();
}

class _AddContactState extends State<AddContact> {
  TextEditingController _nameController = new TextEditingController();
  TextEditingController _emailController = new TextEditingController();
  TextEditingController _phoneController = new TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    print(ContactList.contactList.length);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            Text(
              'name',
            ),
            TextField(
              keyboardType: TextInputType.text,
              controller: _nameController,
            ),
            SizedBox(height: 20,),
            Text(
              'email',
            ),
            TextField(
              keyboardType: TextInputType.emailAddress,
              controller: _emailController,
            ),
            SizedBox(height: 20,),
            Text(
              'phone number',
            ),
            TextField(
              keyboardType: TextInputType.phone,
              controller: _phoneController,
            ),
            SizedBox(height: 40,),
            MaterialButton(
              minWidth: 100,
              onPressed: (){
                ContactList.contactList.add(
                  new Contact(
                    name: _nameController.text,
                    email: _emailController.text,
                    phone: _phoneController.text,
                  )
                );
                Navigator.pop(context);
              },
              child: Container(
                width: 100,
                height: 60,
                color: Colors.blue[300],
                child: Center(
                  child: Text(
                    'Save',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
