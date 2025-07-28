import 'package:app_cupid_arrow/widgets/story_box_widget.dart';
import 'package:flutter/material.dart';

class CupidArrowScreen extends StatefulWidget {
  const CupidArrowScreen({super.key});

  @override
  State<CupidArrowScreen> createState() => _CupidArrowScreenState();
}

class _CupidArrowScreenState extends State<CupidArrowScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<IconData> _icons = [
    Icons.style,
    Icons.favorite,
    Icons.menu,
    Icons.person,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 5, 20, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Nút bấm bên trái
                  InkWell(
                    borderRadius: BorderRadius.circular(30),
                    onTap: () {
                      // TODO: handle left button tap
                    },
                    child: Image.asset(
                      'assets/icons/apps.png', // thay icon trái
                      width: 32,
                      height: 32,
                    ),
                  ),

                  // Logo + Tên app
                  Row(
                    children: [
                      Image.asset(
                        'assets/images/logo.png',
                        width: 115,
                        height: 43,
                      ),
                      const SizedBox(width: 8),
                    ],
                  ),
                  InkWell(
                    borderRadius: BorderRadius.circular(30),
                    onTap: () {
                      // TODO: handle right button tap
                    },
                    child: Image.asset(
                      'assets/icons/filter_list.png', // thay icon phải
                      width: 32,
                      height: 32,
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  StoryBoxWidget(
                    name: 'Add Story',
                    borderColor: Color(0xFFFF5069),
                    imageAsset: '',
                  ),
                  StoryBoxWidget(
                    name: 'Jessica',
                    imageAsset: '',
                  ),
                  StoryBoxWidget(
                    name: 'Micheal',
                    imageAsset: '',
                  ),
                  StoryBoxWidget(
                    name: 'Micheal',
                    imageAsset: '',
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(20, 16, 20, 0),
              child: Image(
                image: AssetImage('assets/images/img_home.png'),
              ),
            ),
            Padding(
                padding: const EdgeInsets.fromLTRB(60, 38, 60, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    RawMaterialButton(
                      onPressed: () {},
                      elevation: 2.0,
                      fillColor: Colors.white,
                      shape: const CircleBorder(),
                      constraints: BoxConstraints.tight(const Size(60, 60)),
                      child:
                          const Icon(Icons.close, color: Colors.pink, size: 30),
                    ),
                    RawMaterialButton(
                      onPressed: () {},
                      elevation: 4.0,
                      fillColor: Colors.pinkAccent,
                      shape: const CircleBorder(),
                      constraints: BoxConstraints.tight(const Size(80, 80)),
                      child: const Icon(Icons.favorite,
                          color: Colors.white, size: 40),
                    ),
                    RawMaterialButton(
                      onPressed: () {},
                      elevation: 2.0,
                      fillColor: Colors.amber,
                      shape: const CircleBorder(),
                      constraints: BoxConstraints.tight(const Size(60, 60)),
                      child:
                          const Icon(Icons.star, color: Colors.white, size: 30),
                    ),
                  ],
                )),
          ],
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 95,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          selectedItemColor: const Color(0xFFE94057),
          unselectedItemColor: Colors.grey,
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          items: _icons.map((icon) {
            return BottomNavigationBarItem(
              icon: Icon(icon),
              label: '',
            );
          }).toList(),
        ),
      ),
    );
  }
}
