import 'package:flutter/material.dart';

class DateHeader extends StatelessWidget {
  const DateHeader({
    super.key,
    required this.label,
  });

  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFE6E6E6),
      padding: const EdgeInsets.all(12),
      child: Text(
        label,
        style: Theme.of(context).textTheme.headline3,
      ),
    );
  }
}
