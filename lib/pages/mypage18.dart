import 'package:flutter/material.dart';
import 'package:projet1/Themes/theme.dart';
import 'package:projet1/pages/mypage19.dart';

class Mypage18 extends StatefulWidget {
  const Mypage18({super.key});

  @override
  _Mypage18State createState() => _Mypage18State();
}

class _Mypage18State extends State<Mypage18> {
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
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.bold)),
                Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.grid_view),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: const Icon(Icons.view_agenda_outlined),
                      onPressed: () {
                        Navigator.push(
                            context,
                            PageRouteBuilder(
                                pageBuilder: (_, __, ___) => const Mypage19()));
                      },
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 25),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 18),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset("assets/images/image20.png"),
                        const SizedBox(height: 10),
                        ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                Color.fromARGB(255, 212, 225, 187)),
                          ),
                          child: const Text(
                            "UX Design",
                            style: TextStyle(color: Colors.green, fontSize: 15),
                          ),
                        ),
                        const SizedBox(height: 20),
                        const Text(
                          "Master Digital\nProduct Design: UX Research on",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Row(
                          children: [
                            Text(
                              "\$89.00",
                              style:
                                  TextStyle(color: Colors.blue, fontSize: 20),
                            ),
                            SizedBox(
                              width: 25,
                            ),
                            Text(
                              "4.8",
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset("assets/images/image21.png"),
                        const SizedBox(height: 10),
                        ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                Color.fromARGB(255, 225, 187, 223)),
                          ),
                          child: const Text(
                            " Finance ",
                            style: TextStyle(color: Colors.red, fontSize: 15),
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          "The Complete\nInvestment Banking Course 2023",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Row(
                          children: [
                            Text(
                              "\$89.00",
                              style:
                                  TextStyle(color: Colors.blue, fontSize: 20),
                            ),
                            SizedBox(
                              width: 25,
                            ),
                            Text(
                              "4.8",
                              style:
                                  TextStyle(color: AppTheme.c5, fontSize: 15),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset("assets/images/image22.png"),
                        const SizedBox(height: 10),
                        ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                const Color.fromARGB(255, 187, 219, 225)),
                          ),
                          child: const Text(
                            "  Design",
                            style: TextStyle(
                                color: Color.fromARGB(255, 68, 0, 255),
                                fontSize: 15),
                          ),
                        ),
                        const SizedBox(height: 20),
                        const Text(
                          "Photoshop : Blend\nTool to Save Your Photo",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Row(
                          children: [
                            Text(
                              "\$89.00",
                              style:
                                  TextStyle(color: Colors.blue, fontSize: 20),
                            ),
                            SizedBox(
                              width: 25,
                            ),
                            Text(
                              "4.8",
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset("assets/images/image23.png"),
                        const SizedBox(height: 10),
                        ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                Color.fromARGB(255, 208, 225, 187)),
                          ),
                          child: const Text(
                            "UX Design",
                            style: TextStyle(color: Colors.green, fontSize: 15),
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          "Complete Web\nDesign from Figma to Webflow",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Row(
                          children: [
                            Text(
                              "\$89.00",
                              style:
                                  TextStyle(color: Colors.blue, fontSize: 20),
                            ),
                            SizedBox(
                              width: 25,
                            ),
                            Text(
                              "4.6",
                              style:
                                  TextStyle(color: AppTheme.c5, fontSize: 15),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              children: [
                const Padding(padding: EdgeInsets.only(left: 20)),
                Image.asset("assets/images/image24.png"),
                const SizedBox(
                  width: 55,
                ),
                Image.asset("assets/images/image25.png"),
              ],
            )
          ],
        ),
      ),
    );
  }
}
