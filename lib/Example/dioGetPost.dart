
import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;
import 'package:dio/dio.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Routes & Navigation Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DioTest(),
      debugShowCheckedModeBanner: false,
      
    );
  }
}


class DioTest extends StatefulWidget {
  DioTest({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _DioTestState createState() => _DioTestState();
}

class _DioTestState extends State<DioTest> {
  _loadData() async {
    try {
      Response response = await Dio().get("https://jsonplaceholder.typicode.com/todos/10");
      print(response);
    } catch (e) {
      print(e);
    }
  }

  _loadDataPostMethod() async {
    var postURL ="https://httpbin.org/post";
    var params =  {
      "Id": 12345,
      "Customer": "John Smith",
      "Quantity": 1,
      "Price": 10.00
    };
    // print(params);
    try {
       Response response = await Dio().post(
           postURL, 
           data: params,
           options: Options(headers: {
            "content-type": "application/json",
            })
          );
      print(response.data);
      print(params);
      
    } catch (e) {
      print(e);
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("dio:get and post"),
      ),
      body: Column(
        children: <Widget>[
          RaisedButton(
            child: Text('dio:get'),
            onPressed: () {
              _loadData();
            },
          ),
          RaisedButton(
            child: Text('dio:post'),
            onPressed: () {
               _loadDataPostMethod();
            },
          
          )
        ],
      ),
    );
  }
}
