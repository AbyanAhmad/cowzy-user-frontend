import 'placeholder_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loginpage/UI/Profile/profile.dart';
import 'home_page.dart' ;
//import CustomIcons from 'D:\FLUTTER\Home Page\homepage\lib\Icon\my_flutter_app_icons.dart' ;


class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState(){
    return _HomeState() ;
  }
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    MyApp(),
   //PlaceholderWidget(Colors.white),
   PlaceholderWidget(Colors.deepOrange),
   PlaceholderWidget(Colors.green),
   HalAkun(),
 ];
  @override
 Widget build(BuildContext context) {
   return Scaffold(
    /* appBar: AppBar(
       title: Text('My Flutter App'),
     ), */
     body: _children[_currentIndex], // new
     bottomNavigationBar: BottomNavigationBar(
       onTap: onTabTapped, // new
       selectedItemColor: Colors.amber,
       unselectedItemColor: Colors.black12,
       currentIndex: _currentIndex, // new
       items: [
         new BottomNavigationBarItem(
           icon: Icon(Icons.home),
           title: Text('Home'),
         ),
         new BottomNavigationBarItem(
           icon: Icon(Icons.library_books),
           title: Text('Activity'),
         ),
         new BottomNavigationBarItem(
           icon: Icon(Icons.history),
           title: Text('History'),
         ),
         new BottomNavigationBarItem(
           icon: Icon(Icons.person),
           title: Text('Profile')
         )
       ],
     ),
   );
 } 

 void onTabTapped(int index) {
   setState(() {
     _currentIndex = index;
   });
 } 
 }