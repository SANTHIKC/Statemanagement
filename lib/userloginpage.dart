import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:statemanagement/userloginpage2.dart';

class UserLoginpage extends StatefulWidget {
  const UserLoginpage({Key? key}) : super(key: key);

  @override
  State<UserLoginpage> createState() => _UserLoginpageState();
}

class _UserLoginpageState extends State<UserLoginpage> {
  TextEditingController usernametextediting=TextEditingController();
  TextEditingController passwordtextediting=TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: usernametextediting,
                decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: passwordtextediting,
                decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))),
              ),
            ),
            ElevatedButton(onPressed: ()async{
              SharedPreferences sharedpref=await SharedPreferences.getInstance();
              sharedpref.setBool("isLogged", true);
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => Userlogingpage2(),));
            }, child: Text("submit"))
          ],
        ),
      ),
    );
  }
}
