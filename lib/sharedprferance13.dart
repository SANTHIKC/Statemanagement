import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Sharedprefernce2 extends StatefulWidget {

  const Sharedprefernce2({Key? key}) : super(key: key);

  @override
  State<Sharedprefernce2> createState() => _Sharedprefernce2State();
}

class _Sharedprefernce2State extends State<Sharedprefernce2> {
  var displaydata;
       getshared()async{
    SharedPreferences getshared=await SharedPreferences.getInstance();
     displaydata= await getshared.getString("name");
     setState(() {
       
     });
    print(displaydata);
  }
  @override
  void initState() {
         getshared();
    // TODO: implement initState
    super.initState();
  }

  @override

  Widget build(BuildContext context) {


    return Scaffold(
      body: Center(child: Container(child: displaydata!=null?Text(displaydata):Text("")),),
    );
  }
}
