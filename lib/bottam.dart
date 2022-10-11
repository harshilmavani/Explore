import 'package:explore/Detail_Page.dart';
import 'package:explore/Home_Page.dart';
import 'package:flutter/material.dart';

import 'Welcome_Page.dart';

class Bottam extends StatefulWidget {
  const Bottam({Key? key}) : super(key: key);

  @override
  State<Bottam> createState() => _BottamState();
}

class _BottamState extends State<Bottam> {
  int page = 0;

  List a = [
    WelcomePage(),
    HomePage(),
    DetailPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: a[page],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: page,
        onTap: (value) {
          setState(() {
            page = value;
          });
        },
        selectedItemColor: Colors.teal,
        unselectedItemColor: Colors.grey,
        selectedIconTheme: IconThemeData(size: 35),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.star_border), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
        ],
      ),
    );
  }
}
