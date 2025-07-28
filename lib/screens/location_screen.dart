import 'package:app_cupid_arrow/screens/cupid_arrow_screen.dart';
import 'package:app_cupid_arrow/widgets/button_widget.dart';
import 'package:app_cupid_arrow/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class LocationScreen extends StatelessWidget {
  const LocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(100, 198, 100, 0),
              child: Image.asset('assets/images/location.png'),
            ),
            const SizedBox(height: 50),
            const TextWidget(
              text: 'Enable your location',
              text2:
                  'Chúng tôi sẽ sử dụng vị trí để tìm kiếm và hiển thị thông tin đối tượng phù hợp',
            ),
            const SizedBox(height: 28),
            ButtonWidget(
              text: 'Continue',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CupidArrowScreen(),
                  ),
                );
              },
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 92, 0, 0),
              child: Image.asset('assets/images/vector6.png'),
            ),
          ],
        ),
      ),
    );
  }
}
