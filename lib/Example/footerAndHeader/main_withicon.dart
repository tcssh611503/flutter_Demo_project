import 'package:flutter/material.dart';
import 'header.dart'; 
import 'footer.dart';
//reference https://apps-gcp.com/introduction-of-flutter-about-header-and-footer/
void main() {
 runApp(App());
}

class App extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
   return MaterialApp(
     debugShowCheckedModeBanner: false,
     home: Scaffold(
       appBar: Header(),
       body: Center( 
            child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
          Text("Home"),
          RaisedButton(
            elevation: 10,
            color: Colors.blue,
            child: Text("RaisedButton"),
            textColor: Colors.white,
            onPressed: () => {},
          ),
          FlatButton(
            textColor: Colors.blue,
            child: Text("FlatButton"),
            onPressed: () {
              print("FlatButton");
            },
          ),
          OutlineButton(
            textColor: Colors.blue,
            child: Text("OutlineButton"),
            onPressed: () {
              print("OutlineButton");
            },
          ),
          FloatingActionButton(
            child: Text("Float"),
            onPressed: () {
              print("Float");
            },
          ),
          IconButton(
            color: Colors.red,
            icon: Icon(Icons.favorite),
            onPressed: () {
              print("IconButton");
            },
          ),
          RaisedButton.icon(
            icon: Icon(Icons.favorite),
            label: Text("加入我的最愛"),
            onPressed: () {
              print("有ICON的文字按鈕");
            },
          ),
          FlatButton(
            textTheme: ButtonTextTheme.accent,
            shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(18.0),
                side: BorderSide(color: Colors.red)),
            child: Text("Rounded Button"),
            onPressed: () {
              print("Rounded Button");
            },
          ),
          FlatButton(
            shape: BeveledRectangleBorder(
                borderRadius: new BorderRadius.circular(10.0),
                side: BorderSide(color: Colors.red)),
            child: Text("Beveled Button"),
            onPressed: () {
              print("Beveled Button");
            },
          ),
        ],
            )
       ),
       bottomNavigationBar: Footer() // <- Footer Widget (Footer Instance)
     ),
   );
 }
}

