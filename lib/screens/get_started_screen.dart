import 'package:app_cupid_arrow/styles/app_style.dart';
import 'package:app_cupid_arrow/widgets/logo_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'login_screen.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 12),
              const LogoWidget(),
              const SizedBox(height: 20),
              Image.asset(
                'assets/images/img_get_started.png',
                fit: BoxFit.contain,
              ),
              const SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  'Discover Love where your story begins.',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.inter(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    height: 1.2,
                    letterSpacing: 0,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  'Join us to discover your ideal partner and ignite the sparks of romance in your journey.',
                  textAlign: TextAlign.center,
                  style: AppStyle.s15w400,
                ),
              ),
              const SizedBox(height: 40),
              SizedBox(
                width: 325,
                height: 58,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginScreen(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFFF5069),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  child: Text(
                    'Login with Phone',
                    style: AppStyle.s16w600.copyWith(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
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
      ),
    );
  }
}
