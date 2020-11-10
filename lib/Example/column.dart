import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(MyApp());

const MaterialColor customSwatch = const MaterialColor(
  0xFFA4C639,
  const <int, Color>{
    50: const Color(0xFFF4F8E7),
    100: const Color(0xFFE4EEC4),
    200: const Color(0xFFD2E39C),
    300: const Color(0xFFBFD774),
    400: const Color(0xFFB2CF57),
    500: const Color(0xFFA4C639),
    600: const Color(0xFF9CC033),
    700: const Color(0xFF92B92C),
    800: const Color(0xFF89B124),
    900: const Color(0xFF78A417),
  },
);


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Appbar',
      theme: ThemeData(
         primarySwatch: customSwatch,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
      debugShowCheckedModeBanner: false,
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
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Column example"),
        leading: Icon(Icons.audiotrack),

      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            '繋がる',
            style: TextStyle(fontSize: 16.0, color: Colors.grey[900]),
          ),
          Text(
            '噛み付く',
            style: TextStyle(fontSize: 16.0, color: Colors.grey[900]),
          ),
          Text(
            '満つ',
            style: TextStyle(fontSize: 16.0, color: Colors.grey[900]),
          ),
          Text(
            '庇う',
            style: TextStyle(fontSize: 16.0, color: Colors.grey[900]),
          ),
          Text(
            '臨む',
            style: TextStyle(fontSize: 16.0, color: Colors.grey[900]),
          ),
          Text(
            '構う',
            style: TextStyle(fontSize: 16.0, color: Colors.grey[900]),
          ),
          Text(
            '関わる',
            style: TextStyle(fontSize: 16.0, color: Colors.grey[900]),
          ),
        ],
      ),
    );
  }
}