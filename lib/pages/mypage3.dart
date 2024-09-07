import 'package:flutter/material.dart';
import 'package:projet1/Themes/theme.dart';
import 'package:projet1/pages/mypage4.dart';

class Mypage3 extends StatelessWidget {
  const Mypage3({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Padding(
            padding:const EdgeInsets.fromLTRB(30, 0, 20, 0),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    Image.asset(
                      "assets/images/Logo.png",
                      height: 50,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    const Text(
                      "Overskill",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 100,
                ),
                Row(children: [
                  const SizedBox(
                    width: 50,
                  ),
                  Image.asset(
                    "assets/images/image2.jpg",
                  ),
                ]),
                const SizedBox(
                  height: 70,
                ),
                const Text("Expand Your Career\n Opporturnity",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 35,
                        fontWeight: FontWeight.bold)),
                const SizedBox(height: 10),
                const Text(
                    "Explore the best courses online with\n thousands of classes in design, business,\n marketing, and many more.",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                        fontWeight: FontWeight.normal)),
                const SizedBox(
                  height: 40,
                ),
                Row(children: [
                  Expanded(
                      child: Container(
                    height: 4,
                    width: 50,
                    decoration: const BoxDecoration(color: AppTheme.c5),
                  )),
                  Expanded(
                      child: Container(
                    height: 4,
                    width: 50,
                    decoration: const BoxDecoration(color: AppTheme.premary),
                  ))
                ]),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Container(
                      height: 55,
                      width: 55,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: AppTheme.premary),
                      child: const Icon(
                        Icons.arrow_forward,
                        color: AppTheme.c3,
                        size: 30.0,
                      ),
                    ),
                   const SizedBox(
                      width: 30,
                    ),
                    SizedBox(
                      width: 260,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                PageRouteBuilder(
                                    pageBuilder: (_, __, ___) =>
                                        const Mypage4()));
                          },
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(AppTheme.c5),
                              padding: MaterialStateProperty.all(
                                  const EdgeInsets.all(20))),
                          child: const Text(
                            "continue",
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: AppTheme.premary),
                          )),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
