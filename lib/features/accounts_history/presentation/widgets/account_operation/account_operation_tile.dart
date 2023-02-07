import 'package:flutter/material.dart';
import 'package:wallet_tracker_v2/core/data/models/account_operation/account_operation.dart';
import 'package:wallet_tracker_v2/core/enums/operation_type.dart';
import 'package:wallet_tracker_v2/core/extensions/currency/currency.dart';
import 'package:wallet_tracker_v2/core/extensions/date_time/date_time.dart';

class AccountOperationTile extends StatelessWidget {
  const AccountOperationTile({
    Key? key,
    required this.accountOperation,
    this.applyDivider = false,
  }) : super(key: key);

  final AccountOperation accountOperation;
  final bool applyDivider;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: AccountOperationTileBody(accountOperation: accountOperation),
          ),
          if (applyDivider) const Divider(height: 1, indent: 16, endIndent: 16)
        ],
      ),
    );
  }
}

class AccountOperationTileBody extends StatelessWidget {
  const AccountOperationTileBody({
    Key? key,
    required this.accountOperation,
  }) : super(key: key);

  final AccountOperation accountOperation;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(accountOperation.createdAt.format('dd.MM.yyyy - HH:mm')),
            Text(
              accountOperation.accountName ?? '',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
        const Spacer(),
        AccountOperationValue(
          value: accountOperation.value,
          currencyCode: accountOperation.currencyCode ?? 'EUR',
          type: accountOperation.type,
        ),
      ],
    );
  }
}

class AccountOperationValue extends StatelessWidget {
  const AccountOperationValue({
    Key? key,
    required this.value,
    required this.currencyCode,
    required this.type,
  }) : super(key: key);

  final int value;
  final String currencyCode;
  final AccountOperationType type;

  @override
  Widget build(BuildContext context) {
    final formattedValue = value.formatCurrency(currencyCode);

    return Text(
      type == AccountOperationType.income
          ? formattedValue
          : '-${formattedValue}',
      style: TextStyle(
        color: type == AccountOperationType.income
            ? Colors.green
            : Colors.redAccent,
      ),
    );
  }
}
