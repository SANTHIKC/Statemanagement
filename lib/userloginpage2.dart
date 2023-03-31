import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:statemanagement/userloginpage.dart';

class Userlogingpage2 extends StatefulWidget {
  const Userlogingpage2({Key? key}) : super(key: key);

  @override
  State<Userlogingpage2> createState() => _Userlogingpage2State();
}

class _Userlogingpage2State extends State<Userlogingpage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(floatingActionButton: FloatingActionButton(onPressed: ()async{

      SharedPreferences sharedpref=await SharedPreferences.getInstance();
      await sharedpref.clear();
      Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (BuildContext context) => UserLoginpage(),), (route) => false);
    },child:Text("logout") ,),
body: Center(child: Text("hoooi")),

    );
  }
}
