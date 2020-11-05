import 'package:ecommerce/service/IApiService.dart';

class MockService extends IApiService
{
  @override
  Future<int> getCounter() async
  {
    return 10;
  }

  @override
  Future<int> decrCounter() async{
    return 9;
  }

  @override
  Future<int> incrCounter() async{
    return 11;
  }
  
}