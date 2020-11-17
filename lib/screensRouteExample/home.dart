import 'package:flutter/material.dart';
import './detail.dart';


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
       appBar: AppBar(
         title: Text('Home Page'),
       ),
        body: Center(
          child: Column(
            children: <Widget>[
              Text(
                'We are in the home page now',
                 style: TextStyle(
                   fontSize: 22 
                   ),
                ),
              RaisedButton(
                child: Text('Go to details'),
                // onPressed: null,
                onPressed: (){
                  //使用 Navigator.push
                  // Navigator.push(context,MaterialPageRoute(
                  //   builder: (context) => DetailsScreen(),
                  // ));
                  //使用 Navigator.of(context).pushNamed
                  // Navigator.of(context).pushNamed('/detail');
                  //設定  static const route = '/detail';後可以改用DetailsScreen.routeName
                  Navigator.of(context).pushNamed(DetailsScreen.routeName);
                },
              ),
            ],
          )
        ),
      );
  }
}