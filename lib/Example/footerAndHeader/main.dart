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
       body: Center(child: Text("Home")),
       bottomNavigationBar: Footer() // <- Footer Widget (Footer Instance)
     ),
   );
 }
}

