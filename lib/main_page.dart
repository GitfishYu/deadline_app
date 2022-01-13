import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

import './deadline_page.dart';
import './profile_page.dart';
import './home_page.dart';
import './main.dart';
import './deadline_model.dart';

late Box<DeadlineModel> deadlineBox;

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return _MainPageState();
  }
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = [
    HomePage(),
    ProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    deadlineBox = Hive.box<DeadlineModel>(deadlineBoxName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // extendBodyBehindAppBar: true,
      // appBar: AppBar(
      //   title: const Text(
      //     'All Dealines',
      //     style: TextStyle(color: Color(0xFF606060)),
      //   ),
      //   backgroundColor: Colors.transparent,
      //   elevation: 0.0,
      // ),
      // backgroundColor: const Color(0xFFC1D6D0),
      // body: Container(
      //   color: const Color(0xFFC1D6D0),
      // decoration: const BoxDecoration(
      //     image: DecorationImage(
      //   image: AssetImage("assets/images/app_bg.jpeg"),
      //   fit: BoxFit.cover,
      //   opacity: 5.0,
      // )),
      // child: BackdropFilter(
      //   filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
      //   child: Container(color: Colors.white.withOpacity(0.0)),
      // ),
      //),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => DeadlinePage()),
          );
        },
        child: const Icon(
          Icons.add,
        ),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white.withOpacity(1),
        items: const [
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/images/activity_icon.png")),
              label: 'Activity'), //Icon(Icons.local_activity), label: 'home'),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/images/profile_icon.png")),
              label: 'Profile'),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: const Color(0xFFC1D6D0),
        onTap: _onItemTapped,
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
    );
  }
}
