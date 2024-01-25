import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:quran_app/screens/audio_screen.dart';
import 'package:quran_app/screens/home_screen.dart';
import 'package:quran_app/screens/prayer_screen.dart';
import 'package:quran_app/screens/quran_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int selectindex = 0;
  List<Widget> _widgetList = [
    HomeScreen(),
    QuranScreen(),
    AudioScreen(),
    PrayerScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: _widgetList[selectindex],
          bottomNavigationBar: ConvexAppBar(
            items: [
              TabItem(
                  icon: Image.asset(
                    'assets/home.png',
                    color: Colors.white,
                  ),
                  title: 'Home'),
              TabItem(
                  icon: Image.asset('assets/quranpak.png', color: Colors.white),
                  title: 'Quran'),
              TabItem(
                  icon: Image.asset('assets/audio.png', color: Colors.white),
                  title: 'Audio'),
              TabItem(
                  icon: Image.asset('assets/masjid.png', color: Colors.white),
                  title: 'Prayer'),
            ],
            initialActiveIndex: 0,
            onTap: updateIndex,
            backgroundColor: Color(0xFF6A0DAD),
            activeColor: Color(0xFF6A0DAD),
          )),
    );
  }

  void updateIndex(index) {
    setState(() {
      selectindex = index;
    });
  }
}
