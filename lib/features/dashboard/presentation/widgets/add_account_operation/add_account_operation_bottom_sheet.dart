import 'package:flutter/material.dart';
import 'package:wallet_tracker_v2/core/enums/operation_type.dart';

class AddAccountOperationBottomSheet {
  static show(BuildContext context,
          {required AccountOperationType accountOperationType}) =>
      showModalBottomSheet(
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(20),
          ),
        ),
        context: context,
        builder: (context) => _AddAccountOperationBottomSheetBody(
          accountOperationType: accountOperationType,
        ),
      );
}

class _AddAccountOperationBottomSheetBody extends StatelessWidget {
  const _AddAccountOperationBottomSheetBody(
      {required this.accountOperationType});

  final AccountOperationType accountOperationType;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            accountOperationType == AccountOperationType.expense
                ? "Add expense"
                : "Add income",
          ),
          Text('BLA BLABLA'),
        ],
      ),
    );
  }
}
