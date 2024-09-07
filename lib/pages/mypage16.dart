import 'package:flutter/material.dart';
import 'package:projet1/Themes/theme.dart';
import 'package:projet1/pages/mypage14.dart';
import 'package:projet1/pages/mypage15.dart';

class Mypage16 extends StatefulWidget {
  const Mypage16({super.key});

  @override
  _Mypage16State createState() => _Mypage16State();
}

class _Mypage16State extends State<Mypage16> {
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
            Container(
              padding: const EdgeInsets.fromLTRB(30, 10, 20, 0),
              color: AppTheme.premary,
              height: 250,
              child: Column(
                children: [
                  Container(
                    padding:
                        const EdgeInsets.only(left: 0, right: 410, top: 10),
                    child: IconButton(
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          PageRouteBuilder(
                            pageBuilder: (_, __, ___) => const Mypage14(),
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      const Text(
                        "Design courses",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        ),
                      ),
                      const SizedBox(width: 40),
                      Container(
                        padding: const EdgeInsets.only(left: 40, top: 30),
                        child: Image.asset("assets/images/Image 5.png"),
                      ),
                    ],
                  ),
                  const SizedBox(height: 25),
                  Container(
                    padding: const EdgeInsets.only(right: 82),
                    child: const Text(
                      "Let’s explore course you get started!",
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Column(
              children: [
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(left: 25),
                      child: const Text(
                        "Most popular",
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
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              PageRouteBuilder(
                                  pageBuilder: (_, __, ___) =>
                                      const Mypage15()));
                        },
                        child: const Text(
                          "See more",
                          style: TextStyle(color: Colors.black87, fontSize: 18),
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 20),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      _buildCourseCard(
                        imagePath: "assets/images/imagec.png",
                        category: "Finance",
                        title: "Photoshop : Blend Tool to\nSave Your Photo",
                        price: "\$30.00",
                        rating: "4.9 (40,312)",
                      ),
                      _buildCourseCard(
                        imagePath: "assets/images/imagee.png",
                        category: "Finance",
                        title: "Complete Guide to Illustrator\n: For Beginner",
                        price: "\$150.00",
                        rating: null,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 25),
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
                      padding: const EdgeInsets.only(right: 25),
                      child: const Text(
                        "See more",
                        style: TextStyle(color: Colors.black87, fontSize: 18),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildTopicCard(
                      imagePath: "assets/images/image 10.png",
                      title: "Branding",
                    ),
                    const SizedBox(width: 20),
                    _buildTopicCard(
                      imagePath: "assets/images/image 11.png",
                      title: "UX Design",
                    ),
                    const SizedBox(width: 20),
                    _buildTopicCard(
                      imagePath: "assets/images/image 13.png",
                      title: "Illustration",
                    ),
                    const SizedBox(width: 20),
                    _buildTopicCard(
                      imagePath: "assets/images/logos_figma.png",
                      title: "Figma",
                    ),
                  ],
                ),
                const SizedBox(height: 25),
                Container(
                  padding: const EdgeInsets.only(right: 200, left: 0),
                  child: const Text(
                    "Featured course",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
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

  Widget _buildCourseCard({
    required String imagePath,
    required String category,
    required String title,
    required String price,
    String? rating,
  }) {
    return Container(
      margin: const EdgeInsets.fromLTRB(18, 0, 18, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(imagePath),
          const SizedBox(height: 10),
          Text(
            category,
            style: const TextStyle(
              color: Colors.red,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            title,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              Text(
                price,
                style: const TextStyle(
                  color: Colors.blue,
                  fontSize: 15,
                ),
              ),
              if (rating != null) ...[
                const SizedBox(width: 25),
                Text(
                  rating,
                  style: const TextStyle(
                    color: Colors.black87,
                    fontSize: 10,
                  ),
                ),
              ],
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildTopicCard({
    required String imagePath,
    required String title,
  }) {
    return Column(
      children: [
        Image.asset(
          imagePath,
          height: 40,
          width: 40,
        ),
        const SizedBox(height: 15),
        Text(
          title,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 15,
          ),
        ),
      ],
    );
  }
}
