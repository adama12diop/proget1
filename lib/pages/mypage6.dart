import 'package:flutter/material.dart';
import 'package:projet1/Themes/theme.dart';
import 'package:projet1/pages/mypage5.dart';
import 'package:projet1/pages/mypage7.dart';

class Mypage6 extends StatelessWidget {
  const Mypage6({super.key});

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
                      pageBuilder: (_, __, ___) => const Mypage5()));
              ();
            },
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(30, 0, 20, 0),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(right: 90.0),
                child: const Text(
                  "Hi! Welcome Back   ",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                child: const Text(
                  "We happy to see you again! to use your\n account, you should sign in first.",
                  style: TextStyle(
                    color: AppTheme.c5,
                    fontSize: 20,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Padding(padding: EdgeInsets.only(left: 20.0)),
                  Container(
                    child: const Text(
                      "Email",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    width: 70.0,
                  ),
                  Container(
                      child: const Text(
                    "Phone Number",
                    style: TextStyle(color: AppTheme.c5),
                  )),
                ],
              ),
              const SizedBox(
                height: 20,
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
                )),
              ]),
              const SizedBox(
                height: 25,
              ),
              const SizedBox(
                height: 20,
              ),
              const SizedBox(
                width: 5,
              ),
              Container(
                  width: 327,
                  child: const TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      prefixIcon: Icon(Icons.mail_lock_outlined),
                      hintText: "jasonmark@mail.com",
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
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      prefixIcon: Icon(Icons.lock_clock_outlined),
                      suffixIcon: Icon(Icons.visibility_off),
                      hintText: "Your password",
                    ),
                  )),
              const SizedBox(
                height: 35,
              ),
              const SizedBox(
                height: 25,
              ),
              Container(
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          PageRouteBuilder(
                              pageBuilder: (_, __, ___) => const Mypage7()));
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
                      "Sign In",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: AppTheme.c3),
                    )),
              ),
              const SizedBox(
                height: 45,
              ),
              Container(
                padding: const EdgeInsets.only(left: 0, right: 0),
                child: const Text(
                  'Or with email',
                  style: TextStyle(color: Colors.black, fontSize: 15),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(),
                  Row(
                    children: [
                      Image.asset("assets/images/apple.png"),
                      Container(
                        child: const Text(
                          "Apple",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 50,
                  ),
                  Container(),
                  Row(
                    children: [
                      Image.asset("assets/images/google.jpg"),
                      Container(
                        child: const Text(
                          "Google",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      )
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
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
      ),
    );
  }
}
