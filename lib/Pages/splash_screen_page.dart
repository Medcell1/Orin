import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:orin/Pages/Home_Page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    (Timer(
      Duration(seconds: 3),
      () => Navigator.push(
        context,
        CupertinoPageRoute(
          builder: (_) => HomePage(),
        ),
      ),
    ));
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFEF7EB),
      body: Center(
        child: Text(
          'orin',
          style: TextStyle(
            fontFamily: 'ComforterBrush',
            fontWeight: FontWeight.w600,
            fontSize: 64,
            color: Color(0xFF8D0636),
          ),
        ),
      ),
    );
  }
}
