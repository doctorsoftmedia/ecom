import 'package:ecommerce/model/About/About.dart';
import 'package:ecommerce/service/IApiService.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ApiService extends IApiService
{
  @override
  Future<int> getCounter() async
  {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return (prefs.getInt('counter') ?? 0 );
  }

  @override
  Future<int> decrCounter() async
  {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    int counter = (prefs.getInt('counter') ?? 0 ) == 0?0:-1;
    await prefs.setInt('counter', counter);
    return counter;
  }

  @override
  Future<int> incrCounter() async
  {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    int counter = (prefs.getInt('counter') ?? 0 )+1;
    await prefs.setInt('counter', counter);
    return counter;
  }
  
}