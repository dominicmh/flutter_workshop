import 'package:flutter/foundation.dart';

class CounterProvider extends ChangeNotifier{

  int _counter = 0;
  int get counter => _counter;

  setCounter(int value){
    _counter = value;
    notifyListeners();
  }

  increment(){
    setCounter(_counter + 1);
  }

}
