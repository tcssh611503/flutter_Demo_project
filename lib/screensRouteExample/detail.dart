import 'package:flutter/material.dart';


class DetailsScreen extends StatelessWidget {
  static const routeName = '/detail';
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
       appBar: AppBar(
         title: Text('Details Page'),
       ),
        body: Center(
          child: Column(
            children: <Widget>[
              Text(
                'We are in the Details page now',
                 style: TextStyle(
                   fontSize: 22 
                   ),
                ),
                FloatingActionButton(
                  child: Icon(Icons.arrow_back_ios),
                  onPressed: (){
                  Navigator.pop(context);
                  },
              ),
            ],
          )
        ),
      );
  }
}