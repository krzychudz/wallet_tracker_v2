import 'package:flutter/material.dart';

class UnderlineTextButton extends StatelessWidget {
  const UnderlineTextButton({
    Key? key,
    required this.label,
    required this.onTap,
  }) : super(key: key);

  final String label;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        label,
        style: const TextStyle(
          decoration: TextDecoration.underline,
          decorationColor: Colors.black,
          fontFamily: 'Montserrat',
          fontSize: 12,
          color: Colors.black,
        ),
      ),
    );
  }
}
