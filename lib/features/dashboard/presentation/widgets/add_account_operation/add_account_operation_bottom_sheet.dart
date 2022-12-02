import 'package:flutter/material.dart';
import 'package:wallet_tracker_v2/core/enums/operation_type.dart';
import 'package:wallet_tracker_v2/features/dashboard/presentation/widgets/add_account_operation/acc_account_operation_bottom_sheet_body.dart';

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
        builder: (context) => AddAccountOperationBottomSheetBody(
          accountOperationType: accountOperationType,
        ),
      );
}
