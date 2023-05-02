import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'screens/height_width.dart';
import 'screens/return.dart';
import 'screens/themechanger.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
    var scrind = 0;
  List screens = [const ThemeChange(),HeightWidth(),Return()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      // appBar: AppBar(
      //   backgroundColor: Colors.lightGreen,
      //   title: Text("App Bar"),
      //   elevation: 0,
      // ),
      body:screens[scrind],
       
      // floatingActionButton: FloatingActionButton(
      //   backgroundColor: Colors.lightGreen,
      //   onPressed: () {
      //     Navigator.of(context).push(MaterialPageRoute(builder: (context) => ThemeChange()));
      //   },
      //   child: Icon(Icons.circle),
      // ),
      // ---BOTTOM NAVIGATION BAR---
      bottomNavigationBar:Container(
        height: 60,
        color: Colors.lightGreen,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          InkWell(
            onTap: () {
              setState(() {
               scrind =0;
               print(scrind);
                
              });
            },
            child: Icon(Icons.home)),
          InkWell(  onTap: () {
               setState(() {
               scrind =1;
               print(scrind);
                
              });
            },
            child: Icon(Icons.abc)),
          InkWell(  onTap: () {
              setState(() {
               scrind =2;
               print(scrind);
                
              });
            },child: Icon(Icons.settings))
        ],
      ),
      )
      /*
       bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
        ],
      ),

      */
    );
 
  }
}