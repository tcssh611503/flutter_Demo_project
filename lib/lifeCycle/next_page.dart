import 'package:flutter/material.dart';

class NextPageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Life Cycle 2'),
      ),
      body: Center(
        child: Text('Now is page 2'),
      ),
    );
  }
}
