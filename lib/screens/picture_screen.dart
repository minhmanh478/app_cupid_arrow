import 'dart:ui';
import 'package:app_cupid_arrow/screens/location_screen.dart';
import 'package:flutter/material.dart';
import 'package:app_cupid_arrow/widgets/back_proressbar_widget.dart';
import 'package:app_cupid_arrow/widgets/button_widget.dart';
import 'package:app_cupid_arrow/widgets/text_widget.dart';

class PictureScreen extends StatefulWidget {
  const PictureScreen({super.key});

  @override
  State<PictureScreen> createState() => _PictureScreenState();
}

class _PictureScreenState extends State<PictureScreen> {
  String? mainImage;
  List<String?> otherImages = List.filled(5, null);

  void pickImage(bool isMain, [int? index]) async {
    String dummyImage = 'https://via.placeholder.com/150';
    setState(() {
      if (isMain) {
        mainImage = dummyImage;
      } else if (index != null) {
        otherImages[index] = dummyImage;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const BackProressbarWidget(progressWidth: 210),
            const SizedBox(height: 50),
            const TextWidget(
              text: 'Upload ảnh của bạn',
              text2:
                  'Mọi người sẽ nhìn thấy ảnh của bạn. Hãy lựa chọn những bức ảnh đẹp nhất nhé',
            ),
            const SizedBox(height: 28),

            /// Row trên: 1 to + 2 nhỏ
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buildBox(
                    width: 206,
                    height: 216,
                    image: mainImage,
                    onTap: () => pickImage(true),
                  ),
                  const SizedBox(width: 12),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      buildBox(
                        width: 100,
                        height: 100,
                        image: otherImages[0],
                        onTap: () => pickImage(false, 0),
                      ),
                      const SizedBox(height: 12),
                      buildBox(
                        width: 100,
                        height: 100,
                        image: otherImages[1],
                        onTap: () => pickImage(false, 1),
                      ),
                    ],
                  )
                ],
              ),
            ),

            const SizedBox(height: 20),

            /// Row dưới: 3 nhỏ
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (int i = 2; i < 5; i++) ...[
                  buildBox(
                    width: 100,
                    height: 100,
                    image: otherImages[i],
                    onTap: () => pickImage(false, i),
                  ),
                  if (i != 4) const SizedBox(width: 12),
                ]
              ],
            ),
            const SizedBox(height: 30),
            const SizedBox(height: 27),
            const Spacer(),
            Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  height: 100,
                  child: Image.asset(
                    'assets/images/vector6.png',
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 15),
                ButtonWidget(
                  text: 'Continue',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LocationScreen(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

/// Box
Widget buildBox({
  required double width,
  required double height,
  String? image,
  required VoidCallback onTap,
}) {
  return GestureDetector(
    onTap: onTap,
    child: CustomPaint(
      painter: DashedBorderPainter(radius: 12),
      child: Container(
        width: width,
        height: height,
        alignment: Alignment.center,
        child: image != null
            ? Image.network(image, fit: BoxFit.cover)
            : const Image(
                image: AssetImage('assets/icons/add_image.png'),
                width: 30,
                height: 30,
              ),
      ),
    ),
  );
}

/// Dashed Border
class DashedBorderPainter extends CustomPainter {
  final double radius;

  DashedBorderPainter({this.radius = 12});

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = const Color(0xFFFF5069)
      ..strokeWidth = 1
      ..style = PaintingStyle.stroke;

    final Path path = Path()
      ..addRRect(RRect.fromRectAndRadius(
        Rect.fromLTWH(0, 0, size.width, size.height),
        Radius.circular(radius),
      ));

    const dashWidth = 4.0;
    const dashSpace = 4.0;
    double distance = 0.0;

    final PathMetrics pathMetrics = path.computeMetrics();
    for (final metric in pathMetrics) {
      while (distance < metric.length) {
        final extractPath = metric.extractPath(distance, distance + dashWidth);
        canvas.drawPath(extractPath, paint);
        distance += dashWidth + dashSpace;
      }
      distance = 0.0;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
