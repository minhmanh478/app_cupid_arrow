import 'package:app_cupid_arrow/screens/picture_screen.dart';
import 'package:app_cupid_arrow/widgets/back_proressbar_widget.dart';
import 'package:app_cupid_arrow/widgets/button_widget.dart';
import 'package:app_cupid_arrow/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class InterestScreen extends StatefulWidget {
  const InterestScreen({super.key});

  @override
  State<InterestScreen> createState() => _InterestScreenState();
}

class _InterestScreenState extends State<InterestScreen> {
  final List<String> interests = [
    'Reading',
    'Photography',
    'Gaming',
    'Music',
    'Travel',
    'Painting',
    'Politics',
    'Charity',
    'Cooking',
    'Pets',
    'Sports',
    'Fashion',
  ];

  final List<IconData> icons = [
    Icons.menu_book,
    Icons.camera_alt,
    Icons.sports_esports,
    Icons.music_note,
    Icons.flight,
    Icons.palette,
    Icons.people,
    Icons.volunteer_activism,
    Icons.restaurant_menu,
    Icons.pets,
    Icons.sports_basketball,
    Icons.checkroom,
  ];

  /// trạng thái chọn
  late List<bool> selected;

  @override
  void initState() {
    super.initState();
    selected = List<bool>.filled(interests.length, false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const BackProressbarWidget(
              progressWidth: 22.57,
            ),
            const SizedBox(height: 50),
            const TextWidget(
              text: 'Sở thích của bạn',
              text2:
                  'Chúng tôi sẽ, sử dụng thông tin sở thích để ghép đôi phù hợp nhất với bạn',
            ),
            const SizedBox(height: 28),
            Padding(
              padding: const EdgeInsets.all(23),
              child: Column(
                children: [
                  // Dòng 1 - 2 tag
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      buildInterest(interests[0], icons[0], selected[0], 0),
                      const SizedBox(width: 12),
                      buildInterest(interests[1], icons[1], selected[1], 1),
                    ],
                  ),
                  const SizedBox(height: 12),

                  // Dòng 2 - 3 tag
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      buildInterest(interests[2], icons[2], selected[2], 2),
                      const SizedBox(width: 12),
                      buildInterest(interests[3], icons[3], selected[3], 3),
                      const SizedBox(width: 12),
                      buildInterest(interests[4], icons[4], selected[4], 4),
                    ],
                  ),
                  const SizedBox(height: 12),

                  // Dòng 3 - 2 tag
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      buildInterest(interests[5], icons[5], selected[5], 5),
                      const SizedBox(width: 12),
                      buildInterest(interests[6], icons[6], selected[6], 6),
                    ],
                  ),
                  const SizedBox(height: 12),

                  // Dòng 4 - 3 tag
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      buildInterest(interests[7], icons[7], selected[7], 7),
                      const SizedBox(width: 12),
                      buildInterest(interests[8], icons[8], selected[8], 8),
                      const SizedBox(width: 12),
                      buildInterest(interests[9], icons[9], selected[9], 9),
                    ],
                  ),
                  const SizedBox(height: 12),

                  // Dòng 5 - 2 tag
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      buildInterest(interests[10], icons[10], selected[10], 10),
                      const SizedBox(width: 12),
                      buildInterest(interests[11], icons[11], selected[11], 11),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 0),
            const Spacer(),
            // lỗi image vector7
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 14, 0, 0),
              child: Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: 100,
                    child: Image.asset(
                      'assets/images/vector7.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 15),
                  ButtonWidget(
                    text: 'Continue',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const PictureScreen(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildInterest(String text, IconData icon, bool isSelected, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selected[index] = !selected[index];
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: isSelected ? const Color(0xFFFF5069) : Colors.white,
          borderRadius: BorderRadius.circular(50),
          border: Border.all(
            color: isSelected ? const Color(0xFFFF5069) : Colors.transparent,
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
              size: 16,
              color: isSelected ? Colors.white : const Color(0xFFFF5069),
            ),
            const SizedBox(width: 6),
            Text(
              text,
              style: TextStyle(
                color: isSelected ? Colors.white : Colors.black,
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
