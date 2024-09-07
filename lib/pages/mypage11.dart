import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:projet1/Themes/theme.dart';
import 'package:projet1/pages/mypage10.dart';
import 'package:projet1/pages/mypage11a.dart';
import 'package:projet1/pages/mypage11b.dart';
import 'package:projet1/pages/mypage9.dart';

class Mypage11 extends StatelessWidget {
  const Mypage11({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Container(
            padding: const EdgeInsets.fromLTRB(30, 0, 20, 0),
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(20))),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 0, right: 415, top: 20),
                  child: IconButton(
                    icon: const Icon(
                      Icons.close,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          PageRouteBuilder(
                              pageBuilder: (_, __, ___) => const Mypage9()));
                      ();
                    },
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  padding: const EdgeInsets.only(right: 95),
                  child: const Text(
                    "Forgot Password?",
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
                    "Please choose a method to request\na password reset.",
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
                  height: 90,
                  margin: const EdgeInsets.only(top: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFFF3F4F6),
                  ),
                  child: Center(
                    child: ListTile(
                      leading: const Icon(
                        Icons.email_outlined,
                        size: 30,
                      ),
                      title: const Text(
                        'Your email',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Color(0xFF1E2857)),
                      ),
                      subtitle: const Text('Enter your email'),
                      trailing: const Icon(Icons.arrow_forward_ios),
                      onTap: () {
                        showModalBottomSheet(
                          context: context,
                          builder: (BuildContext context) {
                            return Mypage11a();
                          },
                        );
                      },
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 90,
                  margin: const EdgeInsets.only(top: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFFF3F4F6),
                  ),
                  child: Center(
                    child: ListTile(
                      leading: const Icon(
                        Icons.phone_callback_sharp,
                        size: 30,
                      ),
                      title: const Text(
                        'Phone number',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Color(0xFF1E2857)),
                      ),
                      subtitle: const Text('Enter your phone number'),
                      trailing: const Icon(Icons.arrow_forward_ios),
                      onTap: () {
                        showModalBottomSheet(
                          context: context,
                          builder: (BuildContext context) {
                            return Mypage11b();
                          },
                        );
                      },
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
