import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../widgets/bottom_navbar.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    var lebar = MediaQuery.of(context).size.width;
    var tinggi = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Container(
        width: lebar,
        height: tinggi,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 150,
              height: 125,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/MMLogo.png"),
                ),
              ),
            ),
            const SizedBox(height: 12),
            const Text(
              "Ayo, Belajar Masak Makanan Indonesia !!!",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            CupertinoButton.filled(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return BottomNavbar();
                  }),
                );
              },
              child: const Text(
                "Go To Home Page",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Poppins',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
