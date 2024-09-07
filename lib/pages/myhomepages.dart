// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:projet1/Themes/theme.dart';
import 'package:projet1/pages/Mypage2.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const Mypage2(),
          ));
    });

    return Scaffold(
      backgroundColor: AppTheme.premary,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/images/Logo.png",
            width: 52,
            height: 74,
          ),
         const SizedBox(
            height: 20,
          ),
          const Text(
            "Overskill",
            style: TextStyle(
                color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            "Unlock your potential with us!",
            style: TextStyle(color: Colors.white, fontSize: 15),
          )
        ],
      )),
    );
  }
}
