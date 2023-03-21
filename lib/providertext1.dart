import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'controller.dart';

class ProviderText1 extends StatefulWidget {
  const ProviderText1({Key? key}) : super(key: key);

  @override
  State<ProviderText1> createState() => _ProviderText1State();
}

class _ProviderText1State extends State<ProviderText1> {
  TextEditingController textcontroller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: textcontroller,
                decoration:  InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20)))),
              ),
            ),
            ElevatedButton(onPressed: (){
             Provider.of<ProviderClass>(context,listen: false).textdata(textcontroller:textcontroller.text);

            }, child: Text("submit")),
            Expanded(
              child: ListView.builder(
                itemCount:Provider.of<ProviderClass>(context).datas.length,
                itemBuilder: (context,index) {
                  return Text(Provider.of<ProviderClass>(context).datas[index]);
                }
              ),
            ),
          ],
        ),
      ),
    );
  }
}
