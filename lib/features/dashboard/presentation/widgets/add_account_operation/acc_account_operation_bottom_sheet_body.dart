import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_modular/flutter_modular.dart'
    hide ModularWatchExtension;
import 'package:wallet_tracker_v2/core/enums/operation_type.dart';
import 'package:wallet_tracker_v2/core/widgets/submit_button/submit_button.dart';
import 'package:wallet_tracker_v2/core/widgets/text_field/underline_text_field.dart';
import 'package:wallet_tracker_v2/features/dashboard/presentation/cubit/add_account_operation/add_account_operation_cubit.dart';
import 'package:wallet_tracker_v2/features/dashboard/presentation/cubit/add_account_operation/add_account_operation_state.dart';

class AddAccountOperationBottomSheetBody extends StatelessWidget {
  const AddAccountOperationBottomSheetBody(
      {super.key, required this.accountOperationType});

  final AccountOperationType accountOperationType;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => Modular.get<AddAccountOperationCubit>()..init(),
      child: _AddAccountOperationBottomSheetContent(
          accountOperationType: accountOperationType),
    );
  }
}

class _AddAccountOperationBottomSheetContent extends StatelessWidget {
  const _AddAccountOperationBottomSheetContent({
    Key? key,
    required this.accountOperationType,
  }) : super(key: key);

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
          const AccountPicker(),
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

class AccountPicker extends HookWidget {
  const AccountPicker({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final pickerValue = useState<String?>(null);

    return BlocBuilder<AddAccountOperationCubit, AddAccountOperationState>(
        buildWhen: (previous, current) => previous.accounts != current.accounts,
        builder: (context, state) {
          return DropdownButton<String>(
            value: pickerValue.value,
            hint: const Text('add_account_select_currency').tr(),
            isExpanded: true,
            underline: Container(
              height: 1.5,
              color: Theme.of(context).colorScheme.secondary,
            ),
            items: state.accounts
                ?.map(
                  (account) => DropdownMenuItem(
                    value: account.id,
                    child: Text(account.name),
                  ),
                )
                .toList(),
            onChanged: (accountId) {
              context
                  .read<AddAccountOperationCubit>()
                  .onSelectedAccount(accountId);

              pickerValue.value = accountId;
            },
          );
        });
  }
}
