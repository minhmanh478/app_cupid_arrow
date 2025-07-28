import 'package:flutter/material.dart';

class TextFlagWidget extends StatelessWidget {
  final String? hintText;
  final String? icon;
  const TextFlagWidget({super.key, this.hintText, this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(25, 34, 25, 0),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(50),
        ),
        child: Row(
          children: [
            // Flag
            Image.asset(
              icon ?? 'assets/icons/flag_login.png',
              width: 38,
              height: 38,
            ),
            const SizedBox(width: 5),
            const Text(
              '+91',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 14,
              ),
            ),
            const SizedBox(width: 8),
            Image.asset(
              'assets/icons/down.png',
              width: 8,
            ),

            const SizedBox(width: 13),

            // Vertical Line
            Container(
              width: 1,
              height: 30,
              color: const Color(0xFFD8D8D8),
            ),

            const SizedBox(width: 11),

            // TextField
            Expanded(
              child: TextField(
                keyboardType: TextInputType.phone,
                style: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 15,
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: hintText ?? 'Enter phone number',
                  hintStyle: const TextStyle(
                    fontSize: 15,
                    color: Color(0xFF888888),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
