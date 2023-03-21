import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_ui_design_task/constants.dart';
import 'package:flutter_ui_design_task/screens/auth_screen.dart';
import 'package:flutter_ui_design_task/screens/home_screen.dart';
import 'package:flutter_ui_design_task/screens/location_screen.dart';
import 'package:flutter_ui_design_task/screens/profile.dart';
import 'package:flutter_ui_design_task/screens/restrurant_details.dart';
import 'package:flutter_ui_design_task/screens/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const WelcomeScreen(),
    );
  }
}

class BottomAppBars extends StatefulWidget {
  const BottomAppBars({Key? key}) : super(key: key);

  @override
  State<BottomAppBars> createState() =>
      _BottomAppBarsState();
}

class _BottomAppBarsState extends State<BottomAppBars> {
  int _selectedIndex = 0;
  static const List<Widget> _screens = <Widget>[
    HomeScreen(),
    LocationScreen(),
    Profile(),
  ];

  _onItemTapped(int index) {
    _selectedIndex = index;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: Color(0XFF32B768),
        unselectedItemColor: Colors.white30,
        items: [
          BottomNavigationBarItem(
            activeIcon: SvgPicture.asset(kImageAssets8, color: Color(0XFF32B768),),
            icon: SvgPicture.asset(kImageAssets8, color: Color(0XFF4B5563),),
            label: "",
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            activeIcon: SvgPicture.asset(kImageAssets9, color: Color(0XFF32B768),),
            icon: SvgPicture.asset(kImageAssets9, color: Color(0XFF4B5563),),
            label: "",
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            activeIcon: SvgPicture.asset(kImageAssets10, color: Color(0XFF32B768),),
            icon: SvgPicture.asset(kImageAssets10, color: Color(0XFF4B5563),),
            label: "",
            backgroundColor: Colors.white,
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}