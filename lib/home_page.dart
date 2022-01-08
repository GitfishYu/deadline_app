import 'dart:ui';

import 'package:flutter/material.dart';

import './deadline_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text(
          'All Deadlines',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage("assets/images/app_bg.jpeg"),
          fit: BoxFit.cover,
          opacity: 5.0,
        )),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
          child: Container(color: Colors.white.withOpacity(0.0)),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const DeadlinePage()),
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
      ),
    );
  }
}
