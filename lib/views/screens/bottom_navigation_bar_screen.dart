import 'package:flutter/material.dart';
import 'package:zzoop/views/screens/cateogires_screen.dart';
import 'package:zzoop/views/screens/home_screen.dart';
import 'package:zzoop/views/screens/profile_screen.dart';

import '../custom_widgets/custom_navigationbar_widget.dart';
import 'settings_screen.dart';

class BottomNavigationBarScreen extends StatefulWidget {
  const BottomNavigationBarScreen({super.key});

  @override
  State<BottomNavigationBarScreen> createState() =>
      _BottomNavigationBarScreenState();
}

class _BottomNavigationBarScreenState extends State<BottomNavigationBarScreen> {
  int _currentIndex = 0;
  final List<Widget> screens = [
    HomeScreen(),
    CategoriesScreen(),
    SettingsScreen(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: screens[_currentIndex],
        bottomNavigationBar: CustomBottomNavigationBar(
          currentIndex: _currentIndex,
          onTabTapped: (int index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ));
  }
}
