
import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

Future<getdata> fetchPost() async {
  var url = 'https://jsonplaceholder.typicode.com/todos/10';
  final response = await http.get(url);

  if (response.statusCode == 200) {
    return getdata.fromJson(convert.jsonDecode(response.body));
  } else {
    throw Exception('Failed to load post');
  }

}

class getdata {
  final String title;

  getdata({this.title});

  factory getdata.fromJson(Map<String, dynamic> json) {
    return getdata(title: json['title']);
  }
}


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
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
      
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);
  @override
  _MyHomePageState createState() => new _MyHomePageState(data: fetchPost());
}

class _MyHomePageState extends State<MyHomePage> {
 final Future<getdata> data;

  _MyHomePageState({Key key, this.data});

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: Center(
            child: FutureBuilder<getdata>(
      future: data,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return Text(snapshot.data.title);
        } else if (snapshot.hasError) {
          return Text("${snapshot.error}");
        }
        // By default, show a loading spinner
        return CircularProgressIndicator();
      },
    )));
  }
}





