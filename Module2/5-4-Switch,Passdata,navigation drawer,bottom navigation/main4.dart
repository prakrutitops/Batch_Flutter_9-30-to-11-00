import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget
{
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation>
{
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>
  [
    Text('Home Page', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Text('Search Page', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Text('Profile Page', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
  ];


  void _onItemTapped(int index)
  {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        appBar: AppBar(title: Text("Bottom Navigation Example"),),
        body: Center
          (
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
          bottomNavigationBar: BottomNavigationBar
            (
              items: 
              [
                
                  BottomNavigationBarItem
                    (

                      icon: Icon(Icons.home),
                      label: 'Home',
                      backgroundColor: Colors.green
                    ),
                BottomNavigationBarItem
                  (

                    icon: Icon(Icons.search),
                    label: 'Search',
                    backgroundColor: Colors.green
                ),
                BottomNavigationBarItem
                  (

                    icon: Icon(Icons.person),
                    label: 'Profile',
                    backgroundColor: Colors.green
                )
                
              ],

              type: BottomNavigationBarType.shifting,
              currentIndex: _selectedIndex,
              selectedItemColor: Colors.black,
              iconSize: 40,
              onTap: _onItemTapped,
              elevation: 5
          ),
      );
  }
}
