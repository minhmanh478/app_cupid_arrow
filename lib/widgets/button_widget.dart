import 'package:app_cupid_arrow/styles/app_style.dart';
import 'package:flutter/material.dart';
import 'package:app_cupid_arrow/screens/login_screen.dart';

class ButtonWidget extends StatelessWidget {
  final String? text;
  final VoidCallback? onPressed;

  const ButtonWidget({
    super.key,
    this.text,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 325,
      height: 56,
      child: ElevatedButton(
        onPressed: onPressed ??
            () {
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
          text ?? 'Login with Phone',
          style: AppStyle.s16w600.copyWith(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
