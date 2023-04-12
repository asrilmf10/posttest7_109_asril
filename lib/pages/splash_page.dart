import 'dart:async';
import 'package:flutter/material.dart';

import 'landing_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    splashStart();
  }

  splashStart() {
    var duration = Duration(seconds: 3);
    Timer(duration, () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) {
          return LandingPage();
        }),
      );
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "assets/MMLogo.png",
              width: MediaQuery.of(context).size.width / 3,
              height: MediaQuery.of(context).size.height / 3,
            ),
            Text(
              "Posttest 7 - Pemrograman Mobile",
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ],
        ),
      ),
    );
  }
}
