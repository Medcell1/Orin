import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:orin/Pages/Home_Page.dart';

class GBottom extends StatefulWidget {
  const GBottom({Key? key}) : super(key: key);

  @override
  State<GBottom> createState() => _GBottomState();
}

class _GBottomState extends State<GBottom> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    HomePage(),
    HomePage(),
    HomePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        height: 80,
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10.0),
            topRight: Radius.circular(10.0),
          ),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.search),
                label: 'Search',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.explore_outlined,
                  size: 30,
                ),
                label: 'Explore',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  CupertinoIcons.profile_circled,
                  size: 30,
                ),
                label: 'You',
              ),
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: Color(0xFFFBD68B),
            unselectedLabelStyle: TextStyle(
              color: Color(0xFF919194),
            ),
            unselectedItemColor: Color(0xFF919194),
            onTap: _onItemTapped,
            backgroundColor: Color(0xFF8E0636),
            // fixedColor: Color(0xFF8E0636),
          ),
        ),
      ),
    );
  }
}
