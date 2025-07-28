import 'package:app_cupid_arrow/screens/looking_for_screen.dart';
import 'package:app_cupid_arrow/widgets/back_proressbar_widget.dart';
import 'package:app_cupid_arrow/widgets/button_widget.dart';
import 'package:app_cupid_arrow/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class GenderScreen extends StatefulWidget {
  const GenderScreen({super.key});

  @override
  State<GenderScreen> createState() => _GenderScreenState();
}

class _GenderScreenState extends State<GenderScreen> {
  String? selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const BackProressbarWidget(
              progressWidth: 90,
            ),
            const SizedBox(height: 50),
            const TextWidget(
              text: 'Giới tính',
              text2: 'Cho chúng tôi biết giới tính của bạn',
            ),
            const SizedBox(height: 56),

            /// Giới tính
            GestureDetector(
              onTap: () {
                setState(() {
                  selectedGender = 'male';
                });
              },
              child: Column(
                children: [
                  Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: selectedGender == 'male'
                            ? const Color(0xFFFF5069)
                            : const Color(0xFFF0E4E6)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.male,
                          size: 39,
                          color: selectedGender == 'male'
                              ? Colors.white
                              : Colors.black,
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'Male',
                          style: TextStyle(
                            color: selectedGender == 'male'
                                ? Colors.white
                                : Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 48),
            GestureDetector(
              onTap: () {
                setState(() {
                  selectedGender = 'female';
                });
              },
              child: Column(
                children: [
                  Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: selectedGender == 'female'
                          ? const Color(0xFFFF5069)
                          : const Color(0xFFF0E4E6),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.female,
                          size: 40,
                          color: selectedGender == 'female'
                              ? Colors.white
                              : Colors.black,
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'Female',
                          style: TextStyle(
                            color: selectedGender == 'female'
                                ? Colors.white
                                : Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 27),
            const Spacer(),
            Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  height: 100,
                  child: Image.asset(
                    'assets/images/vector6.png',
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
                        builder: (context) => const LookingForScreen(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
