import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class UnderlineTextField extends StatelessWidget {
  const UnderlineTextField({
    super.key,
    required this.hintText,
    this.keyboardType,
    this.textInputAction = TextInputAction.done,
    this.onChange,
    this.inputFormatters,
    this.errorText,
  });

  final String hintText;
  final TextInputType? keyboardType;
  final TextInputAction textInputAction;
  final Function(String)? onChange;
  final List<TextInputFormatter>? inputFormatters;
  final String? errorText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: const UnderlineInputBorder(),
        hintText: hintText,
        errorText: errorText,
      ),
      keyboardType: keyboardType,
      textInputAction: textInputAction,
      onChanged: onChange,
      inputFormatters: inputFormatters,
    );
  }
}
