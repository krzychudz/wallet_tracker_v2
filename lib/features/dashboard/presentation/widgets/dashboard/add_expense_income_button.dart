import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:wallet_tracker_v2/core/enums/operation_type.dart';

class AddAccountOperationButton extends StatelessWidget {
  const AddAccountOperationButton({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  final void Function(AccountOperationType accountOperationType) onTap;

  @override
  Widget build(BuildContext context) {
    return SpeedDial(
      icon: Icons.add,
      children: [
        SpeedDialChild(
          child: const Icon(Icons.money_off),
          label: 'add_expense'.tr(),
          backgroundColor: Colors.red,
          onTap: () => onTap(AccountOperationType.expense),
        ),
        SpeedDialChild(
          child: const Icon(Icons.attach_money),
          label: 'add_income'.tr(),
          backgroundColor: Colors.green,
          onTap: () => onTap(AccountOperationType.income),
        )
      ],
    );
  }
}
