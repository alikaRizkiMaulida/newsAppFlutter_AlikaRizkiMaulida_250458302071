import 'package:flutter/material.dart';
import 'package:news/page/splash_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  //warna tema aplikasi
  static const Color nightPurple = Color.fromARGB(255, 42, 0, 68);
  static const Color lightPurple = Color.fromARGB(255, 189, 157, 210);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'News App Flutter',
      home: SplashScreenPage(),
    );
  }
}
