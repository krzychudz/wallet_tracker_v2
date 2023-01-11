import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:wallet_tracker_v2/features/dashboard/presentation/cubit/add_account_operation/add_account_operation_cubit.dart';
import 'package:wallet_tracker_v2/features/dashboard/presentation/cubit/add_account_operation/add_account_operation_state.dart';

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
            hint: const Text('add_account_operation_select_account').tr(),
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
