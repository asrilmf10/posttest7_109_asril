import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'model/all_recipe.dart';
import 'pages/home_page.dart';
import 'pages/landing_page.dart';
import 'pages/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (BuildContext context) => Recipes(),
        ),
      ],
      child: Builder(builder: (context) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            textTheme: const TextTheme(
              headlineLarge: TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              labelLarge: TextStyle(
                fontFamily: 'Roboto',
                fontWeight: FontWeight.bold,
              ),
              titleLarge: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          initialRoute: '/splash',
          routes: {
            '/splash': (context) => const SplashScreen(),
            '/landing': (context) => const LandingPage(),
            '/home': (context) => const HomePage(),
          },
        );
      }),
    );
  }
}
