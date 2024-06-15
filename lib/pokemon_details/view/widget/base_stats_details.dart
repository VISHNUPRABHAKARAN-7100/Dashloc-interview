import 'package:flutter/material.dart';

class BaseStatsDetails extends StatelessWidget {
  const BaseStatsDetails({
    super.key,
    required this.type,
    required this.progressIndicatorValue,
    required this.progressIndicatorColor,
  });
  final String type;
  final double progressIndicatorValue;
  final Color progressIndicatorColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          type,
          style: const TextStyle(
            fontSize: 20,
          ),
        ),
        const SizedBox(height: 10),
        LinearProgressIndicator(
          value: progressIndicatorValue,
          color: progressIndicatorColor,
          backgroundColor: Colors.grey.shade300,
        ),
        const SizedBox(height: 20)
      ],
    );
  }
}
