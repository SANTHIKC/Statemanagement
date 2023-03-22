import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'controller.dart';

class Passdatamail extends StatefulWidget {
  const Passdatamail({Key? key}) : super(key: key);

  @override
  State<Passdatamail> createState() => _PassdatamailState();
}

class _PassdatamailState extends State<Passdatamail> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
               Text(Provider.of<ProviderClass>(context).mail1.toString(),
          ),
          Text(Provider.of<ProviderClass>(context).password1.toString(),
          ),
        ],
      ),
    );
  }
}
