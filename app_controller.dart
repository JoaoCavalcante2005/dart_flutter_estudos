import 'package:flutter/foundation.dart';

class App_controller extends ChangeNotifier {
  static App_controller instance = App_controller();

  bool isdark = false;
  mudartema() {
    isdark = !isdark;
    notifyListeners();
  }
}
