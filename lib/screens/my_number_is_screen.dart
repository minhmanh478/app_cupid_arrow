import 'package:app_cupid_arrow/screens/my_number_is_screen2.dart';
import 'package:app_cupid_arrow/widgets/button_widget.dart';
import 'package:app_cupid_arrow/widgets/text_flag_widget.dart';
import 'package:flutter/material.dart';

class MyNumberIsScreen extends StatelessWidget {
  const MyNumberIsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 18, 98, 0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Image.asset(
                      'assets/icons/back.png',
                      height: 24,
                    ),
                    splashRadius: 20,
                  ),
                  const SizedBox(width: 53),
                  Expanded(
                    child: Container(
                      height: 8,
                      decoration: BoxDecoration(
                        color: const Color(0xFFFFE9F1),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          width: 22.5,
                          height: 8,
                          decoration: BoxDecoration(
                            color: const Color(0xFFFF5069),
                            borderRadius: BorderRadius.circular(4),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 50),
            const Padding(
              padding: EdgeInsets.fromLTRB(54, 0, 54, 0),
              child: Text(
                'My Number Is',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
            ),
            const SizedBox(height: 14),
            const Padding(
              padding: EdgeInsets.fromLTRB(49, 0, 49, 0),
              child: Text(
                "We'll need your phone number to send an OTP for verification.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF8A8A8A),
                ),
              ),
            ),
            const SizedBox(height: 28),
            const TextFlagWidget(
              icon: 'assets/icons/flag_login.png',
              hintText: 'Enter phone number',
            ),
            const SizedBox(height: 32),
            ButtonWidget(
              text: 'Continue',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MyNumberIsScreen2(),
                  ),
                );
              },
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
              child: SizedBox(
                width: double.infinity,
                child: Image.asset(
                  'assets/images/vector1.png',
                  fit: BoxFit.cover,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
