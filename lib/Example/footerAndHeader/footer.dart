import 'package:flutter/material.dart';

class Footer extends StatefulWidget{
 const Footer();

 @override
 _Footer createState() => _Footer();
}

class _Footer extends State<Footer> {
 int _selectedIndex = 0;
 final _bottomNavigationBarItems =  <BottomNavigationBarItem>[];

  // icon
 static const _footerIcons = [
   Icons.home,
   Icons.textsms,
   Icons.access_time,
   Icons.content_paste,
   Icons.work,
 ];

  // icon
 static const _footerItemNames = [
   'home',
   'talk',
   'timeline',
   'News',
   'Wallet',
 ];

 @override
 void initState() {
   super.initState();
   _bottomNavigationBarItems.add(_UpdateActiveState(0));
   for ( var i = 1; i < _footerItemNames.length; i++) {
     _bottomNavigationBarItems.add(_UpdateDeactiveState(i));
   }
 }

 /// インデックスのアイテムをアクティベートする
 /// index's item activate
 BottomNavigationBarItem _UpdateActiveState(int index) {
   return BottomNavigationBarItem(
     icon: Icon(
       _footerIcons[index],
       color: Colors.black87,
     ),
     title: Text(
       _footerItemNames[index],
       style: TextStyle(
         color: Colors.black87,
       ),
     )
   );
 }

 /// インデックスのアイテムをディアクティベートする
 /// index's item deactivate
 BottomNavigationBarItem _UpdateDeactiveState(int index) {
   return BottomNavigationBarItem(
       icon: Icon(
         _footerIcons[index],
         color: Colors.black26,
       ),
       title: Text(
         _footerItemNames[index],
         style: TextStyle(
           color: Colors.black26,
         ),
       )
   );
 }

 void _onItemTapped(int index) {
   setState(() {
     _bottomNavigationBarItems[_selectedIndex] = _UpdateDeactiveState(_selectedIndex);
     _bottomNavigationBarItems[index] = _UpdateActiveState(index);
     _selectedIndex = index;
   });
	  }

 @override
 Widget build(BuildContext context) {
   return BottomNavigationBar(
     type: BottomNavigationBarType.fixed, // これを書かないと3つまでしか表示されない
     items: _bottomNavigationBarItems,
     currentIndex: _selectedIndex,
     onTap: _onItemTapped,
   );
 }
}