import 'package:flutter/material.dart';

class AddAccountView extends StatelessWidget {
  const AddAccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New Account'),
      ),
      body: Center(
        child: Text('New Account Screen'),
      ),
    );
  }
}
