import 'package:flutter/cupertino.dart';

class ProviderClass extends ChangeNotifier {
  int s=0;
  void add(){

      s++;
      notifyListeners();

  }
}
