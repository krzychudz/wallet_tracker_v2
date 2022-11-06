import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:wallet_tracker_v2/core/data/models/account/account.dart';

class AccountTile extends StatelessWidget {
  const AccountTile({
    Key? key,
    required this.account,
  }) : super(key: key);

  final Account account;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              account.name,
              style: Theme.of(context).textTheme.headline3,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'dashboard_accounts_total_balance',
                  style: Theme.of(context).textTheme.headline4,
                ).tr(),
                const SizedBox(height: 4),
                Text(
                  '${account.balance.toString()} ${account.currencyCode}',
                  style: Theme.of(context)
                      .textTheme
                      .headline3
                      ?.copyWith(fontSize: 11),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
