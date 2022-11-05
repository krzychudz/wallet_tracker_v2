import 'package:flutter/material.dart';

class SubmitButton extends StatelessWidget {
  const SubmitButton({
    super.key,
    required this.label,
    this.onPressed,
    this.inProgress = false,
  });

  final bool inProgress;
  final String label;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          child: inProgress ? const CircularProgressIndicator() : Text(label),
        ));
  }
}
