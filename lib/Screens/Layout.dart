import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:yemen_mobile/Screens/Contacts.dart';
import 'package:yemen_mobile/Screens/Settings.dart';
import 'package:yemen_mobile/Screens/fav.dart';
import 'package:yemen_mobile/Screens/homeScreen.dart';

class Layout extends StatefulWidget {


  @override
  _layoutstate createState() => _layoutstate();
}

 class _layoutstate extends State<Layout> {
  var _currentIndex = 0;

   @override
  Widget build(BuildContext context) {
    print(_currentIndex);
    return Scaffold(
      body: 
                    
    
           IndexedStack(index:_currentIndex , children:[HomeScreen(),Favert(),Contacts(),Settings()]),
        bottomNavigationBar: SalomonBottomBar(
          currentIndex: _currentIndex,
          onTap: (i) => setState(() => _currentIndex = i),
          items: [
            /// Home
            SalomonBottomBarItem(
              icon: Icon(Icons.home),
              title: Text("الرئيسية"),
              selectedColor:  Color.fromARGB(255, 180, 44, 76),
            ),

            /// Likes
            SalomonBottomBarItem(
              icon: Icon(Icons.favorite_border),
              title: Text("المفظلة"),
              selectedColor: Color.fromARGB(255, 180, 44, 76),
            ),

            /// Search
            SalomonBottomBarItem(
              icon: Icon(Icons.call),
              title: Text("تواصل معنا"),
              selectedColor: Color.fromARGB(255, 180, 44, 76),
            ),

            /// Profile
            SalomonBottomBarItem(
              icon: Icon(Icons.settings),
              title: Text("الإعدادات"),
              selectedColor: Color.fromARGB(255, 180, 44, 76),
            ),
           
          ],
          
        ),
        
      );
      
    
  }
  
}

