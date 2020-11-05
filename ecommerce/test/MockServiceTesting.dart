import 'package:ecommerce/main.dart';
import 'package:ecommerce/service/IApiService.dart';
import 'package:ecommerce/viewmodel/CounterViewModel.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
class MockServiceTesting extends Mock implements IApiService
{
  void main() 
  {
    setUpAll
    (
      ()
      {
        setupService();
        iserv.allowReassignment = true;
      }
    );  
    test('Increment Counter', 
    ()async
    {
       // reassign storage service with a mock
      var mockService = MockServiceTesting();
      when(mockService.getCounter()).thenAnswer(
        (_) => Future.value(0),
      );
      iserv.registerSingleton<IApiService>(mockService);

      // increment counter
      final viewModel = CounterViewModel();
      viewModel.increment();
      expect(viewModel.counter, 1);
    });
  }
}