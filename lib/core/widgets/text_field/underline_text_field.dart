import 'package:flutter/material.dart';

class UnderlineTextField extends StatelessWidget {
  const UnderlineTextField({
    super.key,
    required this.hintText,
    this.keyboardType,
    this.textInputAction = TextInputAction.done,
    this.onChange,
  });

  final String hintText;
  final TextInputType? keyboardType;
  final TextInputAction textInputAction;
  final Function(String)? onChange;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: const UnderlineInputBorder(),
        hintText: hintText,
      ),
      keyboardType: keyboardType,
      textInputAction: textInputAction,
      onChanged: onChange,
    );
  }
}
