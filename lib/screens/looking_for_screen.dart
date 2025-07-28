import 'package:app_cupid_arrow/screens/interest_screen.dart';
import 'package:app_cupid_arrow/widgets/back_proressbar_widget.dart';
import 'package:app_cupid_arrow/widgets/button_widget.dart';
import 'package:app_cupid_arrow/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class LookingForScreen extends StatefulWidget {
  const LookingForScreen({super.key});

  @override
  State<LookingForScreen> createState() => _LookingForScreenState();
}

class _LookingForScreenState extends State<LookingForScreen> {
  String? selectedOption;

  final List<String> options = [
    'A relationship',
    'Something casual',
    'I’m not sure yet',
    'Prefer not to say',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const BackProressbarWidget(
              progressWidth: 135,
            ),
            const SizedBox(height: 50),
            const TextWidget(
              text: 'I am Looking for...',
              text2: 'Provide us with further insights into your preferences',
            ),
            const SizedBox(height: 28),
            // List of options
            Expanded(
              child: ListView.builder(
                padding:
                    const EdgeInsets.symmetric(vertical: 0, horizontal: 25),
                itemCount: options.length,
                itemBuilder: (context, index) {
                  final option = options[index];
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedOption = option;
                      });
                    },
                    child: Container(
                      margin: const EdgeInsets.symmetric(vertical: 6),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 14),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        border: Border.all(
                          color: selectedOption == option
                              ? const Color(0xFFFF5069)
                              : Colors.transparent,
                          width: 1.5,
                        ),
                        color: Colors.white,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            option,
                            style: const TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                            ),
                          ),
                          Container(
                            width: 24,
                            height: 24,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: selectedOption == option
                                    ? const Color(0xFFFF5069)
                                    : Colors.black38,
                                width: 5,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
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
                    height: 0,
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
                          builder: (context) => const InterestScreen(),
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
}
