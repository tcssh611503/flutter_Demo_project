import 'package:flutter/material.dart';



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Routes & Navigation Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FirstPage(),
      routes: {
        '/second': (_) => SecondPage(
          data: 'using a named route',)
      } ,
      debugShowCheckedModeBanner: false,
    );
  }
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Router App"),
        ),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                "first page",
                style: TextStyle(fontSize: 50),
              ),
              RaisedButton(
                child: Text("Go to second"),
                onPressed:(){
                  //pushing a router directly , using a named route
                  Navigator.of(context).pushNamed('/second');
                } ,
              )
          ],
        )
      )
    );
  }
}

class SecondPage extends StatelessWidget {

  final String data;

  SecondPage({
    Key key,
    @required this.data,
  }) :super(key:key);

  @override
  Widget build(BuildContext context) {
        return Scaffold(
        appBar: AppBar(
          title: Text("Router App"),
        ),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                "Second page",
                style: TextStyle(fontSize: 50),
              ),
              Text(
                data,
                style: TextStyle(fontSize: 20),
              ),

          ],
        )
      )
    );
  }

  


}
