import 'package:flutter/material.dart';

class ImageBackgroupWidget extends StatelessWidget {
  const ImageBackgroupWidget({super.key, this.image});
  final String? image;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
      child: SizedBox(
        width: double.infinity,
        child: Image.asset(
          image ?? 'assets/images/vector2.png',
          height: 327,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
