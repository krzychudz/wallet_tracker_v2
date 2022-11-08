import 'package:flutter/material.dart';

class AccountDetailsView extends StatelessWidget {
  const AccountDetailsView({super.key, required this.accountId});

  final String accountId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Account ID: $accountId'),
      ),
    );
  }
}
