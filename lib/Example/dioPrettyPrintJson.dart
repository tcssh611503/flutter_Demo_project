import 'dart:convert';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _ipAddress = 'Unknown';
      String result;

  void _getRequestFunction1() async {

    Dio dio = new Dio();
    String url = "https://jsonplaceholder.typicode.com/posts/1/comments";
    Response response = await dio.get(url);
    var data = response.data;

    JsonEncoder encoder = new JsonEncoder.withIndent('  ');
    String prettyprint = encoder.convert(data);
    print(prettyprint);
    //check dataType
    print(prettyprint.runtimeType);

    setState(() {
      result = data.toString();
        _ipAddress = result;//4
    });
  }

  @override
  Widget build(BuildContext context) {
    var spacer = SizedBox(height: 10.0);
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(100.0),
        child: Column(
          children: <Widget>[
            Text('Data：'),
            spacer,
            Text('$_ipAddress'),
            spacer,
           RaisedButton(
              onPressed: _getRequestFunction1,
              child: Text('get'),
            ),
          ],
        ),
      ),
    );
  }
}
