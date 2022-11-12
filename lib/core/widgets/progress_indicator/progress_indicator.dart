import 'package:flutter/material.dart';

class DataProgressIndicator extends StatelessWidget {
  const DataProgressIndicator({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(color: Colors.black),
    );
  }
}
