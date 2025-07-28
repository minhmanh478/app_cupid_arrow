import 'package:app_cupid_arrow/screens/my_number_is_screen.dart';
import 'package:app_cupid_arrow/styles/app_style.dart';
import 'package:app_cupid_arrow/widgets/button_widget.dart';
import 'package:app_cupid_arrow/widgets/text_flag_widget.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            const SizedBox(height: 12),
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/background.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              height: 43,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/logo.png'),
                  fit: BoxFit.contain,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(54, 46, 54, 0),
              child: SizedBox(
                child: Text(
                  'Let’s start with your number',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
            const TextFlagWidget(),
            const SizedBox(height: 30),
            ButtonWidget(
              text: 'Continue',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MyNumberIsScreen(),
                  ),
                );
              },
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 79,
                  height: 1,
                  color: const Color(0xFFD8D8D8),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    'OR',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                  ),
                ),
                Container(
                  width: 79,
                  height: 1,
                  color: const Color(0xFFD8D8D8),
                ),
              ],
            ),
            const SizedBox(height: 30),
            SizedBox(
              width: 325,
              height: 56,
              child: ElevatedButton(
                onPressed: () {
                  // màn
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(56),
                  ),
                  elevation: 2,
                  padding: EdgeInsets
                      .zero, // xoá padding mặc định của ElevatedButton
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(width: 13),
                    Image.asset(
                      'assets/icons/facebook.png',
                      height: 30,
                    ),
                    const SizedBox(width: 40),
                    Text(
                      'Login with Facebook',
                      style: AppStyle.s16w500.copyWith(
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: 325,
              height: 56,
              child: ElevatedButton(
                onPressed: () {
                  // TODO: Navigate
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(56),
                  ),
                  elevation: 2,
                  padding: EdgeInsets
                      .zero, // xoá padding mặc định của ElevatedButton
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(width: 13),
                    Image.asset(
                      'assets/icons/google.png',
                      height: 30,
                    ),
                    const SizedBox(width: 40),
                    Text(
                      'Login with Facebook',
                      style: AppStyle.s16w500.copyWith(
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 165),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text.rich(
                TextSpan(
                  text: 'Don’t have an account? ',
                  style: AppStyle.s14w400,
                  children: [
                    TextSpan(
                      text: 'Sign Up',
                      style: AppStyle.s14w600.copyWith(
                        color: const Color(0xFFFF5069),
                      ),
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
