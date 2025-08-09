import 'package:flutter/material.dart';
import 'splash_screen.dart';
import 'about_us.dart';
import 'home.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/splash', // Start with Splash
      title: 'বাংলাদেশের বিভাগ সমুহ',
        theme: ThemeData(
          primaryColor: const Color(0xFF4CAF50),
          appBarTheme: const AppBarTheme(
            backgroundColor: Color(0xFF4CAF50),
            centerTitle: true,
            titleTextStyle: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      home: const HomePage(),
      routes: {
        '/splash': (context) => const SplashScreen(),
        '/about-us': (context) => const AboutUsPage(),
      },
    );
  }
}

