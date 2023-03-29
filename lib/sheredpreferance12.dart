import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:statemanagement/sharedprferance13.dart';

class Sharedpreferance1 extends StatefulWidget {
  const Sharedpreferance1({Key? key}) : super(key: key);

  @override
  State<Sharedpreferance1> createState() => _Sharedpreferance1State();
}

class _Sharedpreferance1State extends State<Sharedpreferance1> {
  TextEditingController nametexteditingcontroller=TextEditingController();
  sheyerdadd()async
  {
    SharedPreferences prefs =await SharedPreferences.getInstance();
    prefs.setString("name", nametexteditingcontroller.text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: nametexteditingcontroller,
                decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))),
              ),
              ElevatedButton(onPressed: (){
                sheyerdadd();
              }, child: Text("add")),
              ElevatedButton(onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                 return Sharedprefernce2();
                },));
              }, child: Text("display")),
            ],
          )
    );
  }
}
