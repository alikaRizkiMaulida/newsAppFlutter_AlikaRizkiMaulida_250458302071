import 'package:flutter/material.dart';
import 'package:news/main.dart';
import 'package:news/page/home_page.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({super.key});

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  static const Duration splashDuration = Duration(seconds: 3);

  Future<void> _Next() async {
    await Future<void>.delayed(splashDuration);
    //mounted itu adalah sebuah property yang digunakan untuk mengecek apakah widget masih terpasang
    //di dalam widget tree atau tidak atau dgn kata lain apakah widget masih aktif atau tidak dan menerima update
    if (!mounted) return;
    Navigator.of(context).pushReplacement(
      MaterialPageRoute<void>(builder: (context) => HomePageScreen()),
    );
  }

  //initstate itu adalah sesuatu yg pertama kali dijlankan ketika page dibuka atau di akses
  //dan cuma dijalankan sekali saja ketika page pertama kali dibuka atau diakses
  @override
  void initState() {
    super.initState();
    _Next();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MainApp.nightPurple,
      //safearea itu di pake kalo misalnya dipagenya gapake appbar
      //jadi biar ui nya ga ke ganggu sama status bar, navigation bar, atau notch
      body: SafeArea(
        child: Center(
          child: ClipRRect(
            //cliprrect itu untuk membuat gambar menjadi melengkung atau membulat sesuai
            //dengan nilai borderRadius yang kita berikan
            borderRadius: BorderRadius.circular(24),
            child: Image.asset(
              'assets/image/muka-arion.png',
              width: 160,
              height: 160,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  width: 160,
                  height: 160,
                  decoration: BoxDecoration(
                    color: MainApp.nightPurple.withValues(alpha: 0.1),
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: Icon(
                    Icons.newspaper_rounded,
                    size: 65,
                    color: MainApp.nightPurple,
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
