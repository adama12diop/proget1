import 'package:flutter/material.dart';
import 'package:projet1/Themes/theme.dart';
import 'package:projet1/pages/mypage16.dart';

class Mypage14 extends StatefulWidget {
  const Mypage14({super.key});

  @override
  _Mypage14State createState() => _Mypage14State();
}

class _Mypage14State extends State<Mypage14> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  color: AppTheme.premary,
                  padding: const EdgeInsets.fromLTRB(30, 45, 20, 0),
                  height: 380,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Welcome, Jason 👋',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              border: Border.all(
                                color: Colors.white,
                                width: 1.0,
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(12)),
                            ),
                            child: Row(
                              children: [
                                const Icon(
                                  Icons.radio_button_off_sharp,
                                  color: Colors.white,
                                ),
                                const SizedBox(width: 8),
                                Stack(
                                  children: [
                                    const Icon(
                                      Icons.notifications_none,
                                      color: Colors.white,
                                      size: 30.0,
                                    ),
                                    Positioned(
                                      right: 0,
                                      child: Container(
                                        padding: const EdgeInsets.all(2),
                                        decoration: BoxDecoration(
                                          color: Colors.red,
                                          borderRadius:
                                              BorderRadius.circular(6),
                                        ),
                                        constraints: const BoxConstraints(
                                          minWidth: 12,
                                          minHeight: 12,
                                        ),
                                        child: const Text(
                                          '1',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 8,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8.0),
                      const Text(
                        'Upgrade your skill for better futures!',
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 16.0,
                        ),
                      ),
                      const SizedBox(height: 35.0),
                      TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.blueGrey,
                          prefixIcon: const Icon(Icons.search),
                          hintText: 'What do you want to learn?',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        "Continue Learning",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  child: Container(
                    margin:
                        const EdgeInsets.only(top: 300, left: 20, right: 20),
                    padding: const EdgeInsets.only(
                        top: 20, bottom: 20, left: 10, right: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow: const [BoxShadow(blurRadius: 5)],
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Image.asset("assets/images/Image (1).png"),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ElevatedButton(
                                  onPressed: () {},
                                  style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all(AppTheme.c5),
                                  ),
                                  child: const Text(
                                    "Website",
                                    style: TextStyle(
                                        color: Colors.orange, fontSize: 15),
                                  ),
                                ),
                                const Text(
                                  "Fundamentals of HTML & CSS\nFrom Scratch",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 20),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "23 of 33 lessons",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 15),
                            ),
                            Text(
                              "75% completed",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 15),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            Expanded(
                              flex: 3,
                              child: Container(
                                height: 8,
                                decoration: const BoxDecoration(
                                    color: AppTheme.premary),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                height: 8,
                                decoration:
                                    const BoxDecoration(color: AppTheme.c5),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 15),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Recently added",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            PageRouteBuilder(
                                pageBuilder: (_, __, ___) => const Mypage16()));
                      },
                      child: const Text(
                        "See more",
                        style: TextStyle(color: Colors.black87, fontSize: 18),
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 25),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 18),
                    child: Column(
                      children: [
                        Image.asset("assets/images/image.png"),
                        const SizedBox(height: 10),
                        const Text(
                          "Finance",
                          style: TextStyle(color: Colors.red, fontSize: 15),
                        ),
                        const SizedBox(height: 20),
                        const Text(
                          "The Complete Investment\nBanking Course 2023",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Row(
                          children: [
                            Text(
                              "\$120.00",
                              style:
                                  TextStyle(color: Colors.blue, fontSize: 20),
                            ),
                            SizedBox(
                              width: 25,
                            ),
                            Text(
                              "4.8 (31,882)",
                              style:
                                  TextStyle(color: AppTheme.c5, fontSize: 15),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 18),
                    child: Column(
                      children: [
                        Image.asset("assets/images/image (2).png"),
                        const SizedBox(height: 10),
                        const Text(
                          "Finance",
                          style: TextStyle(color: Colors.red, fontSize: 15),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          "Guide to Integrate API in\nBack End Development",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          "\$96.00",
                          style: TextStyle(color: Colors.blue, fontSize: 20),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(30, 45, 20, 0),
              color: AppTheme.premary,
              height: 200,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Text(
                        'Welcome, Jason 👋',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          border: Border.all(
                            color: Colors.white,
                            width: 1.0,
                          ),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(12)),
                        ),
                        child: Row(
                          children: [
                            const Icon(
                              Icons.radio_button_off_sharp,
                              color: Colors.white,
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Stack(
                              children: [
                                const Icon(
                                  Icons.notifications_none,
                                  color: Colors.white,
                                  size: 30.0,
                                ),
                                Positioned(
                                  right: 0,
                                  child: Container(
                                    padding: const EdgeInsets.all(2),
                                    decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.circular(6),
                                    ),
                                    constraints: const BoxConstraints(
                                      minWidth: 12,
                                      minHeight: 12,
                                    ),
                                    child: const Text(
                                      '1',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 8,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 8.0),
                  const Text(
                    'Upgrade your skill for better futures!',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 16.0,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 25),
                  child: const Text(
                    "Explore topics",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Spacer(),
                Container(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          PageRouteBuilder(
                              pageBuilder: (_, __, ___) => const Mypage16()));
                    },
                    child: const Text(
                      "See more",
                      style: TextStyle(color: Colors.black87, fontSize: 18),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 60,
                    margin:
                        const EdgeInsets.only(left: 35, top: 20, bottom: 20),
                    padding: const EdgeInsets.fromLTRB(10, 0, 20, 0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: const [BoxShadow(blurRadius: 1)],
                    ),
                    child: Row(
                      children: [
                        Image.asset("assets/images/Image 5.png"),
                        const SizedBox(width: 10),
                        const Text(
                          "Design",
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 20),
                  Container(
                    height: 60,
                    margin:
                        const EdgeInsets.only(left: 35, top: 20, bottom: 20),
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: const [BoxShadow(blurRadius: 1)],
                    ),
                    child: Row(
                      children: [
                        Image.asset("assets/images/Image 6.png"),
                        const SizedBox(width: 10),
                        const Text(
                          "Business",
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 60,
                  margin: const EdgeInsets.only(left: 35, top: 20, bottom: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: const [BoxShadow(blurRadius: 1)],
                  ),
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: Row(
                    children: [
                      Image.asset("assets/images/image 5 (1).png"),
                      const SizedBox(width: 10),
                      const Text(
                        "Finance",
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 10),
                Container(
                  height: 60,
                  margin: const EdgeInsets.only(left: 35, top: 20, bottom: 20),
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: const [BoxShadow(blurRadius: 1)],
                  ),
                  child: Row(
                    children: [
                      Image.asset("assets/images/image 5 (2).png"),
                      const SizedBox(width: 10),
                      const Text(
                        "Marketing",
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 25),
                  child: const Text(
                    "Popular courses",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Spacer(),
                Container(
                  padding: const EdgeInsets.only(right: 25),
                  child: const Text(
                    "See more",
                    style: TextStyle(color: Colors.black87, fontSize: 18),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(18, 0, 18, 0),
                    child: Column(
                      children: [
                        Image.asset("assets/images/imagea.png"),
                        const SizedBox(height: 10),
                        const Text(
                          "Finance",
                          style: TextStyle(color: Colors.red, fontSize: 15),
                        ),
                        const SizedBox(height: 20),
                        const Text(
                          "Master Digital Product\nDesign: UX Research",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Row(
                          children: [
                            Text(
                              "\$70.00",
                              style:
                                  TextStyle(color: Colors.blue, fontSize: 20),
                            ),
                            SizedBox(
                              width: 25,
                            ),
                            Text(
                              "4.7 (1,882)",
                              style:
                                  TextStyle(color: AppTheme.c5, fontSize: 15),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(width: 5),
                  Container(
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.only(left: 30),
                          margin: const EdgeInsets.fromLTRB(25, 0, 18, 0),
                          child: Image.asset("assets/images/imageb.png"),
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          "Finance",
                          style: TextStyle(color: Colors.red, fontSize: 15),
                        ),
                        const SizedBox(height: 10),
                        Container(
                          padding: const EdgeInsets.only(left: 20),
                          child: const Text(
                            "Adobe Family : Guide\nTo pen tool in illustrator",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          "\$50.00",
                          style: TextStyle(color: Colors.blue, fontSize: 20),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 30),
                  child: const Text(
                    "Suggestion for you",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Spacer(),
                Container(
                  padding: const EdgeInsets.only(right: 25),
                  child: const Text(
                    "See more",
                    style: TextStyle(color: Colors.black87, fontSize: 18),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Action pour le bouton central
        },
        backgroundColor: Colors.indigo, // Couleur du bouton
        child: const Icon(
          Icons.menu_book_outlined, // Icône du bouton central
          size: 35,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border_outlined),
            label: "Explore",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.folder),
            label: "Wishlist",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_2_outlined),
            label: "Profile",
          ),
        ],
        selectedItemColor: Colors.indigo, // Couleur de l'élément sélectionné
        unselectedItemColor: Colors.grey,
      ),
    );
  }
}
