import 'package:flutter/material.dart';

class UnderlineTextField extends StatelessWidget {
  const UnderlineTextField({
    super.key,
    required this.hintText,
    this.keyboardType,
    this.textInputAction = TextInputAction.done,
  });

  final String hintText;
  final TextInputType? keyboardType;
  final TextInputAction textInputAction;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: const UnderlineInputBorder(),
        hintText: hintText,
      ),
      keyboardType: keyboardType,
      textInputAction: textInputAction,
    );
  }
}
