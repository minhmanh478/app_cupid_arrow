import 'package:app_cupid_arrow/screens/grender_screen.dart';
import 'package:app_cupid_arrow/widgets/back_proressbar_widget.dart';
import 'package:app_cupid_arrow/widgets/button_widget.dart';
import 'package:app_cupid_arrow/widgets/image_backgroup_widget.dart';
import 'package:app_cupid_arrow/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class DateOfBirth extends StatelessWidget {
  const DateOfBirth({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const BackProressbarWidget(
              progressWidth: 90,
            ),
            const SizedBox(height: 50),
            const TextWidget(
              text: 'Bạn bao nhiêu tuổi',
              text2:
                  'Cung cấp tuổi của bạn để hệ thống ghép đôi phù hợp với bạn nhé',
            ),
            ButtonWidget(
              text: 'Continue',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const GenderScreen(),
                  ),
                );
              },
            ),
            const ImageBackgroupWidget(
              image: 'assets/images/vector5.png',
            ),
          ],
        ),
      ),
    );
  }
}
