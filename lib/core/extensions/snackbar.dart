import 'package:flutter/material.dart';

extension SnackbarExtension on BuildContext {
  void showSnackbar(
    String text, {
    Color backgroundColor = const Color(0xFF4BB543),
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
