import 'package:app_cupid_arrow/screens/email_address_screen.dart';
import 'package:app_cupid_arrow/widgets/back_proressbar_widget.dart';
import 'package:app_cupid_arrow/widgets/button_widget.dart';
import 'package:app_cupid_arrow/widgets/image_backgroup_widget.dart';
import 'package:app_cupid_arrow/widgets/text_field_widget.dart';
import 'package:app_cupid_arrow/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class YourNameScreen extends StatelessWidget {
  const YourNameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const BackProressbarWidget(
              progressWidth: 45,
            ),
            const SizedBox(height: 50),
            const TextWidget(
              text: 'Họ tên của bạn',
              text2: 'Thông tin họ tên của bạn',
            ),
            const SizedBox(height: 28),
            const TextFieldWidget(
              hintText: 'Nhập họ tên của bạn',
            ),
            const SizedBox(height: 32),
            ButtonWidget(
              text: 'Continue',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const EmailAddressScreen(),
                  ),
                );
              },
            ),
            const SizedBox(height: 30),
            const ImageBackgroupWidget(image: 'assets/images/vector3.png')
          ],
        ),
      ),
    );
  }
}
