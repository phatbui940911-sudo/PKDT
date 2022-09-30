import 'package:demo_project/screens/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'account_screen.dart';
import 'category_screen.dart';
import 'messenger_screen.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  List pages = [
    MainScreen(),
    CategoryScreen(),
    MessengerScreen(),
    AccountScreen(),
  ];

  int currentIndex = 0;

  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTap,
        backgroundColor: Colors.white,
        fixedColor: Color(0xff122636),
        type: BottomNavigationBarType.fixed,
        iconSize: 20.sp,
        currentIndex: currentIndex,
        unselectedItemColor: Colors.grey.withOpacity(0.5),
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), title: Text('Home')),
          BottomNavigationBarItem(
            icon: Icon(Icons.computer_outlined),
            title: Text('Category'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message_outlined),
            title: Text('Messenger'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            title: Text('Account'),
          )
        ],
      ),
    );
  }
}
