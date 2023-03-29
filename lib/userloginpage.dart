import 'package:flutter/material.dart';

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
            ElevatedButton(onPressed: (){}, child: Text("submit"))
          ],
        ),
      ),
    );
  }
}
