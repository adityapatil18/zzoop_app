import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTabTapped;

  CustomBottomNavigationBar({
    required this.currentIndex,
    required this.onTabTapped,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      fixedColor: Colors.black,
      currentIndex: currentIndex,
      onTap: onTabTapped,
      items: [
        BottomNavigationBarItem(
          backgroundColor: Color(0xFF07D58C),
          icon: Image.asset(
            'images/home.png',
            height: 24,
            width: 24,
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            'images/cate.png',
            height: 24,
            width: 24,
          ),
          label: 'Categories',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            'images/setting.png',
            height: 24,
            width: 24,
          ),
          label: 'Settings',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            'images/person.png',
            height: 24,
            width: 24,
          ),
          label: 'Profile',
        ),
      ],
      unselectedItemColor: Colors.white,
    );
  }
}
