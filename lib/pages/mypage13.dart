import 'package:flutter/material.dart';
import 'package:projet1/Themes/theme.dart';
import 'package:projet1/pages/mypage10.dart';
import 'package:projet1/pages/mypage11.dart';
import 'package:projet1/pages/mypage12.dart';
import 'package:projet1/pages/mypage14.dart';

class Mypage13 extends StatelessWidget {
  const Mypage13({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(),
          body: Padding(
            padding: const EdgeInsets.fromLTRB(35, 100, 0, 10),
            child: Column(
              children: [
                Container(
                  child: Image.asset(
                    "assets/images/fingerprint 1.png",
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Container(
                  child: const Text("Fingerprint",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 30)),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  child: const Text(
                    "Please put your finger in fingerprint\n     sensor until complete",
                    style: TextStyle(color: AppTheme.c5, fontSize: 20),
                  ),
                ),
                const SizedBox(
                  height: 200,
                ),
                Container(
                  padding: const EdgeInsets.only(left: 5, right: 5),
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            PageRouteBuilder(
                                pageBuilder: (_, __, ___) => const Mypage14()));
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
                        "Continue",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: AppTheme.c3),
                      )),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  padding: const EdgeInsets.only(left: 5, right: 5),
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            PageRouteBuilder(
                                pageBuilder: (_, __, ___) => const Mypage13()));
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(AppTheme.c3),
                        padding: MaterialStateProperty.all(const EdgeInsets.all(
                          30,
                        )),
                        minimumSize:
                            MaterialStateProperty.all(const Size(355, 4)),
                      ),
                      child: const Text(
                        "Not Now",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: AppTheme.c5),
                      )),
                ),
              ],
            ),
          ),
        ));
  }
}
