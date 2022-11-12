import 'package:flutter/material.dart';

class AppHeader extends StatelessWidget {
  const AppHeader({
    super.key,
    required this.label,
  });

  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.withOpacity(0.5),
      padding: const EdgeInsets.all(12),
      child: Text(
        label,
        style: Theme.of(context).textTheme.headline3,
      ),
    );
  }
}
