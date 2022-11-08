import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:wallet_tracker_v2/core/data/models/account/account.dart';

class AccountTile extends StatelessWidget {
  const AccountTile({
    Key? key,
    required this.account,
    required this.onTap,
  }) : super(key: key);

  final Account account;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
          child: Row(
            children: [
              AccountInfoSection(account: account),
              const Spacer(),
              AccountBalanceSection(account: account)
            ],
          ),
        ),
      ),
    );
  }
}

class AccountBalanceSection extends StatelessWidget {
  const AccountBalanceSection({
    Key? key,
    required this.account,
  }) : super(key: key);

  final Account account;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          const Spacer(),
          Expanded(
            flex: 4,
            child: Column(
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
            ),
          ),
        ],
      ),
    );
  }
}

class AccountInfoSection extends StatelessWidget {
  const AccountInfoSection({
    Key? key,
    required this.account,
  }) : super(key: key);

  final Account account;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Text(
        account.name,
        style: Theme.of(context).textTheme.headline3,
      ),
    );
  }
}
