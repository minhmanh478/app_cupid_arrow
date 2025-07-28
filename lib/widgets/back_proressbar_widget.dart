import 'package:flutter/material.dart';

class BackProressbarWidget extends StatelessWidget {
  const BackProressbarWidget({super.key, this.progressWidth});
  final double? progressWidth;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Image.asset(
              'assets/icons/back.png',
              height: 24,
            ),
            splashRadius: 20,
          ),
          const SizedBox(width: 53),
          Expanded(
            child: Container(
              height: 8,
              decoration: BoxDecoration(
                color: const Color(0xFFFFE9F1),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  width: progressWidth ?? 22.5,
                  height: 8,
                  decoration: BoxDecoration(
                    color: const Color(0xFFFF5069),
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
