import 'package:flutter/material.dart';

import 'Detail_Page.dart';
import 'Home_Page.dart';
import 'Welcome_Page.dart';
import 'bottam.dart';
import 'drawer_demo.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DrawerDemo(),
    );
  }
}
