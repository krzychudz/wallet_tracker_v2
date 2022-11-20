import 'package:flutter/material.dart';
import 'package:wallet_tracker_v2/theme/colors/custom_colors.dart';

extension SnackbarExtension on BuildContext {
  void showSnackbar(
    String text, {
    Color backgroundColor = CustomColors.greenSuccess,
  }) {
    final snackbar = SnackBar(
      content: Text(text),
      backgroundColor: backgroundColor,
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.only(left: 8, right: 8, bottom: 8),
      behavior: SnackBarBehavior.floating,
    );

    ScaffoldMessenger.of(this).showSnackBar(snackbar);
  }
}
