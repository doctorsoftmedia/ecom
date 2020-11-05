import 'package:ecommerce/main.dart';
import 'package:ecommerce/service/IApiService.dart';
import 'package:flutter/cupertino.dart';

class CounterViewModel extends ChangeNotifier
{
  IApiService _service = iserv.get<IApiService>();

  int _counter = 0;
  int get counter => _counter;
  Future loadData()async
  {
    _counter = await _service.getCounter();
    notifyListeners();
  }
  
  Future increment()async
  {
    _counter = await _service.incrCounter();
    notifyListeners();
  }

  Future decrement()async
  {
    _counter = await _service.decrCounter();
    notifyListeners();
  }
}