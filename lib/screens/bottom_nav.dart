import 'package:covid19_dashboard/screens/document_screen.dart';
import 'package:covid19_dashboard/screens/home_screen.dart';
import 'package:covid19_dashboard/screens/information_screen.dart';
import 'package:covid19_dashboard/screens/statistics_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../constants/colors.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int currentIndex = 0;
  final _pages =  [
     HomeScreen(),
    const StatisticsScreen(),
    const DocumentScreen(),
    const InformationScreen(),
  ];

  void _changeIndex(index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
    );
    return Scaffold(
      extendBody: true,
      drawer: const Drawer(),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        onTap: _changeIndex,
        elevation: 0,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: currentIndex,
        selectedItemColor: Colors.white,
        unselectedItemColor: btnInactiveBg,
        items: [
          BottomNavigationBarItem(
            icon: Container(
              padding: const EdgeInsets.symmetric(horizontal:15,vertical:5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: currentIndex == 0 ? accentColor : Colors.transparent,
              ),
              child: const Icon(Icons.home),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Container(
              padding: const EdgeInsets.symmetric(horizontal:15,vertical:5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: currentIndex == 1 ? accentColor : Colors.transparent,
              ),
              child: const Icon(Icons.insert_chart),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Container(
              padding: const EdgeInsets.symmetric(horizontal:15,vertical:5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: currentIndex == 2 ? accentColor : Colors.transparent,
              ),
              child: const Icon(Icons.sticky_note_2_outlined),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Container(
              padding: const EdgeInsets.symmetric(horizontal:15,vertical:5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: currentIndex == 3 ? accentColor : Colors.transparent,
              ),
              child: const Icon(Icons.info),
            ),
            label: '',
          )
        ],
      ),
      body: _pages[currentIndex],
    );
  }
}
