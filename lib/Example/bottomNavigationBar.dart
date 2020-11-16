import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
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
  int _selectedIndex = 0;
  static const List<Widget> _widgetOption = <Widget>[
    Icon(FontAwesomeIcons.flag, size: 200.0,),
    Icon(Icons.home, size: 200.0,),
    Icon(
      Icons.favorite,
      color: Colors.pink,
      size: 200.0,
      semanticLabel: 'Text to announce in accessibility modes',
    ),
  ];
  void _onItemTap(int index) {
    setState(() => _selectedIndex = index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("BottomNavigationBar"),
          leading: Icon(FontAwesomeIcons.igloo),
        ),
        bottomNavigationBar: BottomNavigationBar(items: [
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.flag), title: Text('flag')),
          BottomNavigationBarItem(
              icon: Icon(Icons.home), title: Text('home')),
          BottomNavigationBarItem(
              icon:  Icon(
      Icons.favorite,
      color: Colors.pink,
      size: 24.0,
      semanticLabel: 'Text to announce in accessibility modes',
    ), title: Text('MyLove')),
        ],
        onTap: _onItemTap,
        currentIndex: _selectedIndex,),
        body: Center(child: _widgetOption.elementAt(_selectedIndex),));
  }
}