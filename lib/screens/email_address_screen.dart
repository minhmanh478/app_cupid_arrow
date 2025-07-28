import 'package:app_cupid_arrow/screens/date_of_birth.dart';
import 'package:app_cupid_arrow/widgets/back_proressbar_widget.dart';
import 'package:app_cupid_arrow/widgets/button_widget.dart';
import 'package:app_cupid_arrow/widgets/image_backgroup_widget.dart';
import 'package:app_cupid_arrow/widgets/text_field_widget.dart';
import 'package:app_cupid_arrow/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class EmailAddressScreen extends StatelessWidget {
  const EmailAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const BackProressbarWidget(
              progressWidth: 67.5,
            ),
            const SizedBox(height: 50),
            const TextWidget(
              text: 'Email',
              text2: 'Email sẽ giúp chúng tôi kết nối với bạn',
            ),
            const SizedBox(height: 28),
            const TextFieldWidget(
              hintText: 'Nhập Email của bạn',
            ),
            const SizedBox(height: 32),
            ButtonWidget(
              text: 'Continue',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DateOfBirth(),
                  ),
                );
              },
            ),
            const SizedBox(height: 30),
            const ImageBackgroupWidget(image: 'assets/images/vector4.png')
          ],
        ),
      ),
    );
  }
}
