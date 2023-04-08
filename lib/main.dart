import 'package:flutter/material.dart';
import 'package:orin/Pages/Nav.dart';

import 'Pages/Home_Page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: HomePage(),
        bottomNavigationBar: GBottom(),
      ),
    );
  }
}
