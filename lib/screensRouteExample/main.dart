import 'package:flutter/material.dart';
import 'package:flutter_app/screensRouteExample/detail.dart';
import './screensRouteExample/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Routes & Navigation Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //用routes可以不用Home
      // home: HomeScreen(),
      // initialRoute設定初始畫面，設為'/detail'則從'/detail'開始，如不指定預設由'/' (slash)
      // initialRoute: '/detail',
      initialRoute: '/',
      routes: {
        '/': (_) => HomeScreen(),
        // '/detail': (_) => DetailsScreen(),
        //設定  static const route = '/detail';後可以改用DetailsScreen.routeName
        DetailsScreen.routeName: (_) => DetailsScreen(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}