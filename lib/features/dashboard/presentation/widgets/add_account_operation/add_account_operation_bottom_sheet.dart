import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:wallet_tracker_v2/core/enums/operation_type.dart';
import 'package:wallet_tracker_v2/core/widgets/submit_button/submit_button.dart';
import 'package:wallet_tracker_v2/core/widgets/text_field/underline_text_field.dart';

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
      padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            accountOperationType == AccountOperationType.expense
                ? 'add_expense'.tr()
                : 'add_income'.tr(),
            style: Theme.of(context).textTheme.headline2,
          ),
          const SizedBox(height: 16),
          UnderlineTextField(
            hintText: 'add_account_enter_account_value'.tr(),
            keyboardType: TextInputType.number,
          ),
          const SizedBox(height: 12),
          DropdownButton<String>(
            value: null,
            hint: const Text('add_account_select_currency').tr(),
            isExpanded: true,
            underline: Container(
              height: 1.5,
              color: Theme.of(context).colorScheme.secondary,
            ),
            items: [
              DropdownMenuItem(
                value: 'Account 1',
                child: Text('Account1'),
              ),
              DropdownMenuItem(
                value: 'Account 2',
                child: Text('Account1'),
              ),
            ],
            onChanged: (account) => print(account),
          ),
          const SizedBox(height: 16),
          SubmitButton(
            label: tr('add_account_create_account'),
            onPressed: () => {},
          ),
        ],
      ),
    );
  }
}
