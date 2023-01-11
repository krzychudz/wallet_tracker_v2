import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart'
    hide ModularWatchExtension;
import 'package:wallet_tracker_v2/core/enums/operation_type.dart';
import 'package:wallet_tracker_v2/core/extensions/snackbar.dart';
import 'package:wallet_tracker_v2/core/widgets/submit_button/submit_button.dart';
import 'package:wallet_tracker_v2/core/widgets/text_field/underline_text_field.dart';
import 'package:wallet_tracker_v2/features/dashboard/presentation/cubit/add_account_operation/add_account_operation_cubit.dart';
import 'package:wallet_tracker_v2/features/dashboard/presentation/cubit/add_account_operation/add_account_operation_state.dart';
import 'package:wallet_tracker_v2/features/dashboard/presentation/widgets/add_account_operation/account_picker.dart';

class AddAccountOperationBottomSheetBody extends StatelessWidget {
  const AddAccountOperationBottomSheetBody(
      {super.key, required this.accountOperationType});

  final AccountOperationType accountOperationType;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => Modular.get<AddAccountOperationCubit>()
        ..init(
          accountOperationType: accountOperationType,
        ),
      child: BlocListener<AddAccountOperationCubit, AddAccountOperationState>(
        listenWhen: (previous, current) =>
            previous.accountOperationCreationStatus !=
            current.accountOperationCreationStatus,
        listener: (context, state) => onAccountOperationStatusChanged(
          context,
          status: state.accountOperationCreationStatus,
          accountOperationType: state.accountOperationType,
        ),
        child: AddAccountOperationBottomSheetContent(
            accountOperationType: accountOperationType),
      ),
    );
  }

  void onAccountOperationStatusChanged(
    BuildContext context, {
    AccountOperationCreationStatus? status,
    required AccountOperationType accountOperationType,
  }) {
    if (status == null) return;

    if (status == AccountOperationCreationStatus.success) {
      final confirmationText =
          accountOperationType == AccountOperationType.expense
              ? 'expense_added'.tr()
              : 'income_added'.tr();
      context.showSnackbar(confirmationText);
      Modular.to.pop();
    }
  }
}

class AddAccountOperationBottomSheetContent extends StatelessWidget {
  const AddAccountOperationBottomSheetContent({
    Key? key,
    required this.accountOperationType,
  }) : super(key: key);

  final AccountOperationType accountOperationType;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 32.0,
        right: 32.0,
        top: 16.0,
        bottom: 16.0 + MediaQuery.of(context).viewInsets.bottom,
      ),
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
            hintText: 'add_account_operation_value'.tr(),
            keyboardType: TextInputType.number,
            onChange: (value) =>
                context.read<AddAccountOperationCubit>().onValueChanged(value),
          ),
          const SizedBox(height: 12),
          const AccountPicker(),
          const SizedBox(height: 16),
          SubmitButton(
            label: 'account_operation_add'.tr(),
            onPressed: () =>
                context.read<AddAccountOperationCubit>().onSubmitPressed(),
          ),
        ],
      ),
    );
  }
}
