import 'package:flutter/material.dart';
import 'package:projet1/pages/mypage17.dart';

class Mypage15 extends StatefulWidget {
  const Mypage15({super.key});

  @override
  _Mypage15State createState() => _Mypage15State();
}

class _Mypage15State extends State<Mypage15> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    // Naviguer vers la page correspondante en fonction de l'index
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(right: 15),
              padding: const EdgeInsets.only(
                  left: 18, top: 70), // Ajout de padding supplémentaire
              width: double.infinity,
              child: const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  prefixIcon: Icon(Icons.search),
                  suffixIcon: Icon(Icons.lock_rounded),
                  hintText: "Search for anything",
                  hintStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15),
            Container(
              margin: const EdgeInsets.only(
                  top: 20, right: 20, left: 20, bottom: 20),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.indigo,
                boxShadow: const [BoxShadow(blurRadius: 5)],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Explore Our Best\nLearning Paths",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "View All",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Image.asset("assets/images/imageperson.png"),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 25),
                  child: const Text(
                    "Topics",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Spacer(),
                Container(
                  padding: const EdgeInsets.only(left: 25),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          PageRouteBuilder(
                              pageBuilder: (_, __, ___) => const Mypage17()));
                    },
                    child: const Text(
                      "See more",
                      style: TextStyle(color: Colors.black87, fontSize: 18),
                    ),
                  ),
                )
              ],
            ),
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
                  const SizedBox(
                    width: 15,
                  ),
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
                const SizedBox(
                  width: 15,
                ),
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
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 25),
                  child: const Text(
                    "Recently added",
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
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(30, 0, 20, 0),
                    child: Column(
                      children: [
                        Image.asset("assets/images/imageabc.png"),
                        const SizedBox(height: 10),
                        const Text(
                          "Finance",
                          style: TextStyle(
                              color: Colors.red,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(30, 0, 20, 0),
                    child: Column(
                      children: [
                        Image.asset("assets/images/imageab.png"),
                        const SizedBox(height: 8),
                        const Text(
                          "Finance",
                          style: TextStyle(
                              color: Colors.red,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
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
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border_outlined),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.folder),
            label: 'Wishlist',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_2_outlined),
            label: 'Profile',
          ),
        ],
        selectedItemColor: Colors.indigo, // Couleur de l'élément sélectionné
        unselectedItemColor: Colors.grey, // Couleur des autres éléments
      ),
    );
  }
}
