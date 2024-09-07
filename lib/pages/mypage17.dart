import 'package:flutter/material.dart';
import 'package:projet1/Themes/theme.dart';
import 'package:projet1/pages/mypage18.dart';

class Mypage17 extends StatefulWidget {
  const Mypage17({super.key});

  @override
  _Mypage17State createState() => _Mypage17State();
}

class _Mypage17State extends State<Mypage17> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(padding: EdgeInsets.only(top: 25)),
            TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search),
                suffixIcon: const Icon(Icons.close),
                hintText: 'UX Design',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide.none,
                ),
                fillColor: Colors.white,
                filled: true,
              ),
            ),
            const SizedBox(height: 16),
            // Filters Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Filter Button
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.filter_list),
                  label: const Text('Filter'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
                // Sort By Dropdown
                DropdownButton<String>(
                  value: 'Sort by',
                  items: <String>['Sort by', 'Relevance', 'Date']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {},
                ),
                // All Levels Dropdown
                DropdownButton<String>(
                  value: 'All levels',
                  items: <String>[
                    'All levels',
                    'Beginner',
                    'Intermediate',
                    'Advanced'
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {},
                ),
              ],
            ),
            const SizedBox(height: 16),
            // Results Count
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('10,000 results', style: TextStyle(fontSize: 16)),
                Row(
                  children: [
                    IconButton(
                      icon: const Icon(
                        Icons.grid_view,
                        color: Colors.grey,
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            PageRouteBuilder(
                                pageBuilder: (_, __, ___) => const Mypage18()));
                      },
                    ),
                    IconButton(
                      icon: const Icon(Icons.view_agenda_outlined),
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset("assets/images/imagem.png"),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            Color.fromARGB(255, 217, 225, 187)),
                      ),
                      child: const Text(
                        "UX Design",
                        style: TextStyle(
                            color: Color.fromARGB(255, 0, 255, 76),
                            fontSize: 15),
                      ),
                    ),
                    const Text(
                      "User Experience Design\nEssentials: Figma UI UX\nDesign",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      "\$89.00",
                      style: TextStyle(color: Colors.blue, fontSize: 20),
                    ),
                    const Text(
                      "4.8 (31,882)",
                      style: TextStyle(color: AppTheme.c5, fontSize: 15),
                    )
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset("assets/images/imagel.png"),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            Color.fromARGB(255, 45, 206, 117)),
                      ),
                      child: const Text(
                        "UX Design",
                        style: TextStyle(
                            color: Color.fromARGB(255, 0, 255, 76),
                            fontSize: 15),
                      ),
                    ),
                    const Text(
                      "Master Digital Product\nDesign: UX Research & UI\nDesign",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      "\$69.00",
                      style: TextStyle(color: Colors.blue, fontSize: 20),
                    ),
                    const Text(
                      "4.5 (1,765)",
                      style: TextStyle(color: AppTheme.c5, fontSize: 15),
                    )
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset("assets/images/imagek.png"),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            Color.fromARGB(255, 210, 225, 187)),
                      ),
                      child: const Text(
                        "UX Design",
                        style: TextStyle(
                            color: Color.fromARGB(255, 0, 255, 76),
                            fontSize: 15),
                      ),
                    ),
                    const Text(
                      "UX Design for Beginners:\nThe Essential of UX\nUsability",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      "\$111.99",
                      style: TextStyle(color: Colors.blue, fontSize: 20),
                    ),
                    const Text(
                      "4.5 (1,765)",
                      style: TextStyle(color: AppTheme.c5, fontSize: 15),
                    )
                  ],
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
}
