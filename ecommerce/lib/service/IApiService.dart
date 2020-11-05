import 'package:ecommerce/model/About/About.dart';

abstract class IApiService
{
  Future<int> getCounter();
  Future<int> incrCounter();
  Future<int> decrCounter();
  
}