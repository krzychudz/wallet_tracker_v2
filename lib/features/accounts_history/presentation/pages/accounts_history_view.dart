import 'package:flutter/material.dart';
import 'package:wallet_tracker_v2/core/widgets/app_bar/app_bar.dart';

class AccountsHistoryView extends StatelessWidget {
  const AccountsHistoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MainAppBar(title: 'History'),
      body: Center(
        child: Text('History'),
      ),
    );
  }
}
