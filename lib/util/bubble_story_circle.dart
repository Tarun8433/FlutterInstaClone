import 'package:flutter/material.dart';

class BubbleStoryCircle extends StatelessWidget {

  final String text;
  const BubbleStoryCircle({super.key,  required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color.fromARGB(255, 152, 152, 152),
            ),
          ),
          const SizedBox(height: 8),
          Text(text),
        ],
      ),
    );
  }
}
