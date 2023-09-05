import 'package:flutter/cupertino.dart';

class FirstController extends ChangeNotifier {
  dynamic _values = 0;
  get values => _values;

  getIncrement() async {
    _values++;
    notifyListeners();
  }

  getDecrement() async {
    _values--;
    notifyListeners();
  }
}
