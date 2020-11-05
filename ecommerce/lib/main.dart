import 'package:ecommerce/service/ApiService.dart';
import 'package:ecommerce/service/IApiService.dart';
import 'package:ecommerce/service/MockService.dart';
import 'package:ecommerce/viewmodel/CounterViewModel.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
GetIt iserv = GetIt.instance;
setupService()
{
  bool useMockup = true;
  if(useMockup)
  {
    iserv.registerLazySingleton<IApiService>(()=>MockService());
  }
  else
  {
    iserv.registerLazySingleton<IApiService>(()=>ApiService());
  }
}
void main()
{
  setupService();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData
      (
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() 
  {
    super.initState();
    CounterViewModel().loadData();
  }
  void _incrementCounter() {
    CounterViewModel().increment();  
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar
      (
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '${CounterViewModel().counter}',
              style: Theme.of(context).textTheme.display1,
            ),

            // Text(
            //   '$_counter',
            //   style: Theme.of(context).textTheme.display1,
            // ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), 
    );
  }
}
