import 'dart:ui';

import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text(
          'Profile',
          style: TextStyle(color: Color(0xFF606060)),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      backgroundColor: const Color(0xFFC1D6D0),
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
    );
  }
}
