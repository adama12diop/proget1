import 'package:flutter/material.dart';
import 'package:projet1/Themes/theme.dart';

class Mypage19 extends StatefulWidget {
  const Mypage19({super.key});

  @override
  _Mypage19State createState() => _Mypage19State();
}

class _Mypage19State extends State<Mypage19> {
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
                hintText: 'Search something',
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
                const Text('Popular Courses',
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                        fontWeight: FontWeight.bold)),
                Row(
                  children: [
                    IconButton(
                      icon: const Icon(
                        Icons.grid_view,
                        color: Colors.grey,
                      ),
                      onPressed: () {},
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
                Image.asset("assets/images/image26.png"),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                           const Color.fromARGB(255, 208, 225, 187)),
                      ),
                      child: const Text(
                        "UX Design",
                        style: TextStyle(
                            color: Color.fromARGB(255, 0, 255, 76),
                            fontSize: 15),
                      ),
                    ),
                    const Text(
                      "Master Digital Product\nDesign: UX Research",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      "\$70.99",
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
                Image.asset("assets/images/image27.png"),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            Color.fromARGB(255, 225, 191, 187)),
                      ),
                      child: const Text(
                        " Finance ",
                        style: TextStyle(color: Colors.red, fontSize: 15),
                      ),
                    ),
                    const Text(
                      "The Complete Investment\nBanking Course 2023",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      "\$189.99",
                      style: TextStyle(color: Colors.blue, fontSize: 20),
                    ),
                    const Text(
                      "4.8 (21,765)",
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
                Image.asset("assets/images/image28.png"),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(AppTheme.c5),
                      ),
                      child: const Text(
                        "  Design",
                        style: TextStyle(color: Colors.blue, fontSize: 15),
                      ),
                    ),
                    const Text(
                      "Photoshop : Blend Tool to\nSave Your Photo",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      "\$98.00",
                      style: TextStyle(color: Colors.blue, fontSize: 20),
                    ),
                    const Text(
                      "4.7 (11,021)",
                      style: TextStyle(color: AppTheme.c5, fontSize: 15),
                    )
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
                Image.asset("assets/images/image29.png"),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            Color.fromARGB(255, 208, 225, 187)),
                      ),
                      child: const Text(
                        "UX Design",
                        style: TextStyle(
                            color: Color.fromARGB(255, 0, 255, 76),
                            fontSize: 15),
                      ),
                    ),
                    const Text(
                      "Complete Web Design\nfrom Figma to Webflow",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      "\$98.00",
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
          ],
        ),
      ),
    );
  }
}
