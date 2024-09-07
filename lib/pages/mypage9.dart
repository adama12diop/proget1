import 'package:flutter/material.dart';
import 'package:projet1/Themes/theme.dart';
import 'package:projet1/pages/mypage10.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:projet1/pages/mypage12.dart';
import 'package:projet1/pages/mypage8.dart';

class Mypage9 extends StatelessWidget {
  const Mypage9({super.key});

  get _onPhoneNumberChanged => null;

  get _phoneNumber => null;

  get _controller => null;

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
                          pageBuilder: (_, __, ___) => const Mypage8()));
                  ();
                },
              ),
            ),
            body: Padding(
                padding: const EdgeInsets.fromLTRB(30, 0, 20, 0),
                child: Column(children: [
                  Container(
                    padding: const EdgeInsets.only(right: 70.0),
                    child: const Text(
                      "What’s Your Mobile\nPhone Number?",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: const EdgeInsets.only(right: 23),
                    child: const Text(
                      "Enter your mobile phone number so we\ncan text you an authentication code",
                      style: TextStyle(
                        color: AppTheme.c5,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Stack(
                    children: [
                      InternationalPhoneNumberInput(
                        onInputChanged: _onPhoneNumberChanged,
                        selectorConfig: const SelectorConfig(
                            selectorType: PhoneInputSelectorType.DROPDOWN,
                            showFlags: true),
                        ignoreBlank: false,
                        autoFocus: false,
                        initialValue: _phoneNumber,
                        textFieldController: _controller,
                        formatInput: true,
                        keyboardType: TextInputType.phone,
                        inputDecoration: const InputDecoration(
                            hintText: "8889 77",
                            suffixIcon: Icon(
                              Icons.close_sharp,
                            ),
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8)))),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 120,
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 5, right: 5),
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              PageRouteBuilder(
                                  pageBuilder: (_, __, ___) =>
                                      const Mypage12()));
                        },
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(AppTheme.premary),
                          padding:
                              MaterialStateProperty.all(const EdgeInsets.all(
                            30,
                          )),
                          minimumSize:
                              MaterialStateProperty.all(const Size(355, 4)),
                        ),
                        child: const Text(
                          "Send Code",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: AppTheme.c3),
                        )),
                  ),
                ]))));
  }
}
