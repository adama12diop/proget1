import 'package:flutter/material.dart';
import 'package:projet1/Themes/theme.dart';
import 'package:projet1/pages/mypage6.dart';
import 'package:projet1/pages/mypage8.dart';

class Mypage7 extends StatelessWidget {
  const Mypage7({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            leadingWidth: 75,
            toolbarHeight: 90,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.push(
                    context,
                    PageRouteBuilder(
                        pageBuilder: (_, __, ___) => const Mypage6()));
                ();
              },
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.fromLTRB(30, 0, 20, 0),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(right: 70.0),
                  child: const Text(
                    "Sign up to Overskill",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 29,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  child: const Text(
                    "Explore the best courses online with\n thousands of classes in design,business,\n marketing, and many more.",
                    style: TextStyle(
                      color: AppTheme.c5,
                      fontSize: 18,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 18,
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                    width: 327,
                    child: const TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        prefixIcon: Icon(Icons.person_2_outlined),
                        hintText: "Your name",
                      ),
                    )),
                const SizedBox(
                  height: 20,
                ),
                Container(
                    width: 327,
                    child: const TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        prefixIcon: Icon(Icons.mail_lock_outlined),
                        hintText: "Your email",
                      ),
                    )),
                const SizedBox(
                  height: 20,
                ),
                Container(
                    width: 327,
                    child: const TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        prefixIcon: Icon(Icons.lock_clock_outlined),
                        suffixIcon: Icon(Icons.visibility_off_rounded),
                        hintText: "Min. 8 characters",
                      ),
                    )),
                const SizedBox(
                  height: 40,
                ),
                Container(
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            PageRouteBuilder(
                                pageBuilder: (_, __, ___) => const Mypage8()));
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
                        "Sign Up",
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
                  padding: const EdgeInsets.only(left: 0, right: 0),
                  child: const Text(
                    'By signing up you agree to Overskill’s Terms of\n Services and Privacy Policy.',
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  ),
                ),
                const SizedBox(
                  height: 75,
                ),
                Row(
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Already have an account? ",
                      style: TextStyle(fontSize: 15),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: const Text(
                        "Sign ln",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: AppTheme.premary),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
