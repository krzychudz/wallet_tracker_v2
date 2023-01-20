import 'package:flutter/material.dart';
import 'package:wallet_tracker_v2/theme/colors/custom_colors.dart';

class AppHeader extends StatelessWidget {
  const AppHeader({
    super.key,
    required this.label,
  });

  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: CustomColors.grey,
      padding: const EdgeInsets.all(12),
      child: Text(
        label,
        style: Theme.of(context).textTheme.headline3,
      ),
    );
  }
}
