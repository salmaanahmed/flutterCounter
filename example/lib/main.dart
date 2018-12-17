import 'package:flutter/material.dart';
import 'package:flutter_counter/flutter_counter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Counter Control'),
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
  num _counter = 0;
  num _defaultValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Callback from the counter control: $_counter',
            ),
            Counter(
              initialValue: _defaultValue,
              minValue: 0,
              maxValue: 10,
              step: 0.5,
              decimalPlaces: 1,
              onChanged: (value) {
                setState(() {
                  _defaultValue = value;
                  _counter = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
