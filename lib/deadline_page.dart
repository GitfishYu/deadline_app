import 'dart:ui';

import 'package:flutter/material.dart';

class DeadlinePage extends StatelessWidget {
  const DeadlinePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          title: const Text(
            'Deadline',
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
        ));
  }
}
