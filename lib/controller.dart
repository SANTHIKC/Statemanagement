import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProviderClass extends ChangeNotifier {
  int s=0;
  void add(){

      s++;
      notifyListeners();

  }
  List<String>datas=[];
  void textdata ({required String textcontroller})
  {
    datas.add(textcontroller);
    notifyListeners();
  }



 String?mail1;
  String?password1;

  List<String>pasdata=[];
  void maildata({required String mail, required String password})
  {
   mail1=mail;
   password1=password;

    notifyListeners();
  }
Color clrs=Colors.red;
  int count=0;
  counter()
  {
    count++;
    if(count ==1)
      {
        clrs=Colors.cyan;
      }
    else
      {
        count=0;
        clrs=Colors.red;
      }
    notifyListeners();
  }

  Brightness bright=Brightness.light;

 void adding()

  {

       bright==Brightness.dark?Brightness.light:Brightness.dark;

    notifyListeners();
  }


}

