import 'package:flutter/material.dart';
import 'package:projet1/Themes/theme.dart';
import 'package:projet1/pages/mypage10.dart';
import 'package:projet1/pages/mypage13.dart';

class Mypage11b extends StatelessWidget {
  const Mypage11b({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            leadingWidth: 50,
            toolbarHeight: 90,
            leading: IconButton(
              icon: const Icon(
                Icons.close,
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.fromLTRB(30, 0, 20, 0),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(right: 95),
                  child: const Text(
                    "Enter your email",
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
                    "Please enter a email address to\nrequest a password reset.",
                    style: TextStyle(
                      color: AppTheme.c5,
                      fontSize: 20,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Container(
                  width: 327,
                  child: const TextField(
                      decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    prefixIcon: Icon(Icons.phone),
                    hintText: "082345",
                  )),
                ),
                const SizedBox(
                  height: 25,
                ),
                Container(
                  child: const Text(
                    "Use another method",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 35,
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
                        backgroundColor:
                            MaterialStateProperty.all(AppTheme.premary),
                        padding: MaterialStateProperty.all(const EdgeInsets.all(
                          30,
                        )),
                        minimumSize:
                            MaterialStateProperty.all(const Size(355, 4)),
                      ),
                      child: const Text(
                        "Send Link",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: AppTheme.c3),
                      )),
                ),
              ],
            ),
          ),
        ));
  }
}
