import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'controller.dart';

class CounterProvider extends StatefulWidget {
  const CounterProvider({Key? key}) : super(key: key);

  @override
  State<CounterProvider> createState() => _CounterProviderState();
}

class _CounterProviderState extends State<CounterProvider> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(Provider.of< ProviderClass>(context).s.toString()),
            ElevatedButton(onPressed: (){
              Provider.of< ProviderClass>(context ,listen: false).add();
            }, child: Text("+")),

          ],
        ),
      )
    );
  }
}
