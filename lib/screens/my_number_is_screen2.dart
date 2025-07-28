import 'package:app_cupid_arrow/screens/your_name_screen.dart';
import 'package:app_cupid_arrow/styles/app_style.dart';
import 'package:app_cupid_arrow/widgets/back_proressbar_widget.dart';
import 'package:app_cupid_arrow/widgets/button_widget.dart';
import 'package:app_cupid_arrow/widgets/otp_widget.dart';
import 'package:flutter/material.dart';

class MyNumberIsScreen2 extends StatefulWidget {
  const MyNumberIsScreen2({super.key});

  @override
  State<MyNumberIsScreen2> createState() => _MyNumberIsScreen2State();
}

class _MyNumberIsScreen2State extends State<MyNumberIsScreen2> {
  final controller1 = TextEditingController();
  final controller2 = TextEditingController();
  final controller3 = TextEditingController();
  final controller4 = TextEditingController();

  @override
  void dispose() {
    controller1.dispose();
    controller2.dispose();
    controller3.dispose();
    controller4.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const BackProressbarWidget(
              progressWidth: 22.5,
            ),
            const SizedBox(height: 50),
            const Padding(
              padding: EdgeInsets.fromLTRB(54, 0, 54, 0),
              child: Text(
                'Verification Code',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
            ),
            const SizedBox(height: 14),
            Padding(
              padding: const EdgeInsets.fromLTRB(48, 0, 48, 0),
              child: RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(
                  text: "Please enter code we just send to",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF333333),
                  ),
                  children: [
                    TextSpan(
                      text: '\n+91 99292 77633',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF333333),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(45, 28, 45, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  OtpWidget(controller: controller1),
                  const SizedBox(width: 12),
                  OtpWidget(controller: controller2),
                  const SizedBox(width: 12),
                  OtpWidget(controller: controller3),
                  const SizedBox(width: 12),
                  OtpWidget(controller: controller4),
                  const SizedBox(width: 12),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(122, 28, 122, 0),
              child: Text.rich(
                TextSpan(
                  text: 'Didn’t receive OTP?',
                  style: AppStyle.s14w400,
                  children: [
                    TextSpan(
                      text: 'Resend Code',
                      style: AppStyle.s14w600.copyWith(
                        color: const Color(0xFFFF5069),
                      ),
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 40),
            ButtonWidget(
              text: 'Verify',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const YourNameScreen(),
                  ),
                );
              },
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
              child: SizedBox(
                width: double.infinity,
                child: Image.asset(
                  'assets/images/vector2.png',
                  height: 327,
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
