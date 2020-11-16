import 'package:flutter/material.dart';
import 'package:flutter_app/routerExample/route_generator.dart';



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Routes & Navigation Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: FirstPage(),
      initialRoute: '/',
      onGenerateRoute: RouteGenerator.generateRoute,
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
                  Navigator.of(context).pushNamed(
                    '/second',
                    // 路徑錯誤
                    // '/error',
                    arguments:"This is SECOND"
                    // 參數錯誤
                    // arguments:123456789
                  );
                },
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
