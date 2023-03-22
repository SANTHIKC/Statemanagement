import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'controller.dart';

class Colorchange extends StatefulWidget {
  const Colorchange({Key? key}) : super(key: key);

  @override
  State<Colorchange> createState() => _ColorchangeState();
}

class _ColorchangeState extends State<Colorchange> {




  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Center(
              child: Container(
                height: 100,
                width: 100,
               color: Provider.of<ProviderClass>(context).clrs,
              ),
            ),
          ),
          Center(
            child: ElevatedButton(onPressed: (){
              Provider.of<ProviderClass>(context,listen: false).counter();
            }, child: Text("+")),
          )
        ],
      ),
    );
  }
}
