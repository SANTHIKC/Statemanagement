import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statemanagement/passdatasmail.dart';

import 'controller.dart';

class Maildatas extends StatefulWidget {
  const Maildatas({Key? key}) : super(key: key);

  @override
  State<Maildatas> createState() => _MaildatasState();
}

class _MaildatasState extends State<Maildatas> {
  TextEditingController mailtextcontroller = TextEditingController();
  TextEditingController passwordtextcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextField(
              controller: mailtextcontroller,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20))),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextField(
              controller: passwordtextcontroller,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20))),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: ElevatedButton(
                onPressed: () {
                  Provider.of<ProviderClass>(context, listen: false).maildata(
                      mail: mailtextcontroller.text,
                      password: passwordtextcontroller.text);
                  Provider.of<ProviderClass>(context, listen: false).adding();
                  // Navigator.of(context).push(MaterialPageRoute(builder:(context) => Passdatamail(),));
                },
                child: Text("ok")),
          ),
        ],
      ),
    );
  }
}
