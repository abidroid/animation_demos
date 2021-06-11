
import 'package:flutter/foundation.dart';

class SizeManager with ChangeNotifier
{
  var _size = 50.0;

  void increaseSize(){
    _size += 10;
    notifyListeners();
  }

  double get size => _size;
}