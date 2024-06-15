import 'package:flutter/material.dart';

class DetailsColumn extends StatelessWidget {
  const DetailsColumn({
    super.key,
    required this.title,
    required this.description,
  });

  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 18,
          ),
        ),
        Text(
          description,
          style: const TextStyle(
            fontSize: 18,
          ),
        ),
      ],
    );
  }
}
