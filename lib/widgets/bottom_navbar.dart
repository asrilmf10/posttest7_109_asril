import 'package:flutter/material.dart';

import '../pages/home_page.dart';
import '../pages/profil_page.dart';
import '../pages/request_page.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({super.key});

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  int _index = 0;
  final List<Widget> _children = [
    HomePage(),
    RequestPage(),
    ProfilPage(),
  ];

  void onTappedBar(int index) {
    setState(() {
      _index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text(
          "Posttest 7 - Mobile\nAsril Muhamad Fahroji - 2009106109",
          style: Theme.of(context).textTheme.labelLarge,
        ),
      ),
      body: _children[_index],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTappedBar,
        currentIndex: _index,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_rounded),
            label: "Beranda",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle_rounded),
            label: "Req. Resep",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_rounded),
            label: "Beranda",
          ),
        ],
      ),
    );
  }
}
