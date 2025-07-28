import 'package:flutter/material.dart';

class StoryBoxWidget extends StatelessWidget {
  final String imageAsset;
  final String name;
  final Color borderColor;

  const StoryBoxWidget({
    super.key,
    required this.imageAsset,
    required this.name,
    this.borderColor = Colors.transparent,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
      child: Column(
        children: [
          Container(
            width: 90,
            height: 90,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: borderColor, width: 2),
            ),
            clipBehavior: Clip.hardEdge,
            child: Image.asset(
              imageAsset,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 6),
          Text(
            name,
            style: const TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 14,
            ),
          )
        ],
      ),
    );
  }
}
