import 'package:Bank/home_screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'home_screens/alerts_screen.dart';
import 'home_screens/profile_screen.dart';
import 'home_screens/stats_screen.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();

}

class _HomePageState extends State<HomePage> {

var screens = [
  HomeScreen(),
  StatScreen(),
  NotificationScreen(),
  ProfileScreen(),
];

int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: screens[_currentIndex],
    bottomNavigationBar: BottomNavigationBar(
      selectedFontSize: 10,
      unselectedFontSize: 10,
      elevation: 0,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.white,
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: true,
      backgroundColor: Colors.blue[900],
      currentIndex: _currentIndex,
      items: [ 
        
       BottomNavigationBarItem (
        icon: Icon(Icons.home),
        title: Text("Home"),
        backgroundColor: Colors.blue
        ),
         BottomNavigationBarItem (
        icon: Icon(Icons.insert_chart),
        title: Text("Stats"),
        backgroundColor: Colors.blue
        ),
      
        BottomNavigationBarItem(
        icon: Icon(Icons.notifications_none),
        title: Text("Alerts"),
        backgroundColor: Colors.blue,
        ),
        BottomNavigationBarItem(
        icon: Icon(Icons.person_outline),
        title: Text("Profile"),
        backgroundColor: Colors.blue,
        ),
        ],
        onTap: (index){
          setState(() {
            _currentIndex = index;
          });
        },
        showUnselectedLabels: true,
        iconSize: 25.0,
    ),
     floatingActionButton: FloatingActionButton(
       backgroundColor: Colors.white,
        onPressed: (){},
        elevation: 0,
        child: Container(
          child: Image.asset('images/bank.jpg', fit: BoxFit.contain,),
          height: 10.0,
        ),
     ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,  
      );  
   }
}
        