import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:projet1/Themes/theme.dart';
import 'package:projet1/pages/mypage10.dart';
import 'package:projet1/pages/mypage13.dart';

class Mypage12 extends StatelessWidget {
  const Mypage12({super.key});

  @override
  Widget build(BuildContext context) {
    var pinCondeTextfield;
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            leadingWidth: 95,
            toolbarHeight: 90,
            leading: IconButton(
              icon: const Icon(Icons.close, color: Colors.black),
              onPressed: () {
                Navigator.push(
                    context,
                    PageRouteBuilder(
                        pageBuilder: (_, __, ___) => const Mypage13()));
                ();
              },
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.fromLTRB(30, 0, 20, 0),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(right: 25),
                  child: const Text(
                    "Authentication Code",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  child: const Text(
                    "Enter 5-digit code we just texted to your\nphone number +1 8976889043",
                    style: TextStyle(color: AppTheme.c5, fontSize: 18),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(4, (index) {
                      return Container(
                        width: 56,
                        height: 56,
                        margin: const EdgeInsets.symmetric(horizontal: 5),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      );
                    })),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  padding: const EdgeInsets.only(right: 40),
                  child: const Text(
                    "Use different phone number",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 70,
                ),
                Container(
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            PageRouteBuilder(
                                pageBuilder: (_, __, ___) => const Mypage13()));
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
                        "Verify Account",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: AppTheme.c3),
                      )),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            PageRouteBuilder(
                                pageBuilder: (_, __, ___) => const Mypage10()));
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(AppTheme.c3),
                        padding: MaterialStateProperty.all(const EdgeInsets.all(
                          30,
                        )),
                        minimumSize:
                            MaterialStateProperty.all(const Size(360, 4)),
                      ),
                      child: const Text(
                        "Resend Code",
                        style: TextStyle(
                            fontSize: 25,
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

class PinTheme {}
