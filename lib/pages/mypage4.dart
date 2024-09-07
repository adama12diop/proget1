import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:projet1/Themes/theme.dart';
import 'package:projet1/pages/mypage5.dart';

class Mypage4 extends StatelessWidget {
  const Mypage4({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(),
          body: Padding(
            padding: const EdgeInsets.fromLTRB(30, 0, 20, 0),
            child: Column(
              children: [
                Container(
                  height: 90,
                ),
                Image.asset("assets/images/light-bulb 1.png"),
                Container(
                  padding: const EdgeInsets.only(top: 10),
                ),
                // ignore: avoid_unnecessary_containers
                Container(
                  child: const Text(
                    "Welcome to Overskill",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                // ignore: avoid_unnecessary_containers
                Container(
                  child: const Text(
                    "One Lesson at a Time with Overskill",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Container(
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            PageRouteBuilder(
                                pageBuilder: (_, __, ___) => const Mypage5()));
                      },
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(AppTheme.premary),
                        padding: MaterialStateProperty.all(const EdgeInsets.all(
                          30,
                        )),
                        minimumSize:
                            MaterialStateProperty.all(const Size(355, 4)),
                      ),
                      child: const Text(
                        "Get Started",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: AppTheme.c3),
                      )),
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(children: [
                  Expanded(
                      child: Container(
                    height: 2,
                    width: 48,
                    decoration: const BoxDecoration(color: AppTheme.c5),
                  )),
                  const Expanded(
                      child: Text(
                    " sign in with",
                    style: TextStyle(color: AppTheme.c4, fontSize: 20),
                  )),
                  Expanded(
                      child: Container(
                    height: 2,
                    width: 48,
                    decoration: const BoxDecoration(color: AppTheme.c5),
                  ))
                ]),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/images/google.jpg"),
                    Image.asset("assets/images/apple.png"),
                    Image.asset("assets/images/Facebook.png"),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                Container(
                  child: Row(
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Don’t have an account? ",
                        style: TextStyle(fontSize: 15),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: const Text(
                          "Sign Up",
                          style: TextStyle(
                              color: AppTheme.premary,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }
}
