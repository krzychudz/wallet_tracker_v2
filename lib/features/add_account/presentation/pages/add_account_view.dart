import 'package:flutter/material.dart';
import 'package:wallet_tracker_v2/core/widgets/app_bar/app_bar.dart';

class AddAccountView extends StatelessWidget {
  const AddAccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(
        title: "New Account Screen",
      ),
      body: Center(
        child: Text('New Account Screen'),
      ),
    );
  }
}
