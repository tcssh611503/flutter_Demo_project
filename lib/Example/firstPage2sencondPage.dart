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
                  //pushing a router directly ,Without using a named route
                  Navigator.of(context).push(
                    //With MaterialPageRoute , you can pass data between pages
                    // but if you have  complex , you will quiclkly get lost
                    MaterialPageRoute(
                      builder: (context) =>
                        SecondPage(data: "Hello there frome first page!"),
                    ),
                  );
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
