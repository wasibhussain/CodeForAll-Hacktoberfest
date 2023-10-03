
import 'package:flutter/material.dart';

class NeuBox extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final x;
  const NeuBox({super.key, required this.x});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          // darker shadow on bottom right
          BoxShadow(
              color: Colors.grey.shade500,
              blurRadius: 15,
              offset: const Offset(5, 5)),

          // lighter shadow on top left
          const BoxShadow(
              color: Colors.white, blurRadius: 15, offset: Offset(-5, -5)),
        ],
      ),
      child: Center(
        child: x,
      ),
    );
  }
}
