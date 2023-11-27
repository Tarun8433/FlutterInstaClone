import 'package:flutter/material.dart';
import 'package:quiz/pages/add.dart';
import 'package:quiz/pages/home.dart';
import 'package:quiz/pages/profile.dart';
import 'package:quiz/pages/reels.dart';
import 'package:quiz/pages/search.dart';

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {

  int _selectedIndex = 0;

  // navigate on tap

  void _navigateBottomNavBar(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _children = [
    Home(),
    const UserSearch(),
    const UserAdd(),
    const UserReels(),
    const UserProfile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        fixedColor: Color.fromARGB(255, 0, 76, 0),
        onTap: _navigateBottomNavBar,
        type: BottomNavigationBarType.fixed,
        items: const[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.add_circle), label: 'add'),
          BottomNavigationBarItem(icon: Icon(Icons.video_call), label: 'reels'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'User'),        
        ],
      ),
    );
  }
}
