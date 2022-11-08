import 'package:flutter/material.dart';
import 'package:wallet_tracker_v2/features/account_details/presentation/pages/account_details/account_details_view.dart';

class AccountDetailsScreen extends StatelessWidget {
  const AccountDetailsScreen({
    super.key,
    required this.accountId,
  });

  final String accountId;

  @override
  Widget build(BuildContext context) {
    return AccountDetailsView(accountId: accountId);
  }
}
