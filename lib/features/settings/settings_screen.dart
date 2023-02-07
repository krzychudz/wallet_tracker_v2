import 'package:flutter/material.dart';
import 'package:wallet_tracker_v2/core/widgets/app_bar/app_bar.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  static String route = '/settings';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(
        title: 'Settings Screen',
      ),
      body: ListView(children: [Text("Settings scren")]),
    );
  }
}
