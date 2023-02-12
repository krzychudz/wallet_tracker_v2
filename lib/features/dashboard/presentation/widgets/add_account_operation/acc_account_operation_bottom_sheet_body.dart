import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart'
    hide ModularWatchExtension;
import 'package:formz/formz.dart';
import 'package:wallet_tracker_v2/core/enums/operation_type.dart';
import 'package:wallet_tracker_v2/core/extensions/snackbar.dart';
import 'package:wallet_tracker_v2/core/input_validators/money_input.dart';
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
                current.accountOperationCreationStatus ||
            previous.formStatus != current.formStatus,
        listener: (context, state) => onAccountOperationStatusChanged(
          context,
          status: state.formStatus,
          accountOperationType: state.accountOperationType,
        ),
        child: AddAccountOperationBottomSheetContent(
            accountOperationType: accountOperationType),
      ),
    );
  }

  void onAccountOperationStatusChanged(
    BuildContext context, {
    FormzStatus? status,
    required AccountOperationType accountOperationType,
  }) {
    if (status == null) return;

    if (status == FormzStatus.submissionSuccess) {
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
            style: Theme.of(context).textTheme.displayLarge,
          ),
          const SizedBox(height: 16),
          const OperationValueInput(),
          const SizedBox(height: 12),
          const AccountPicker(),
          const SizedBox(height: 16),
          const SubmitButtonSection(),
        ],
      ),
    );
  }
}

class OperationValueInput extends StatelessWidget {
  const OperationValueInput({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddAccountOperationCubit, AddAccountOperationState>(
      buildWhen: (previous, current) =>
          previous.accountOperationValue != current.accountOperationValue,
      builder: (context, state) {
        return UnderlineTextField(
          hintText: 'add_account_operation_value'.tr(),
          keyboardType: TextInputType.number,
          errorText: state.accountOperationValue.invalid
              ? _getErrorText(state.accountOperationValue.error)
              : null,
          onChange: (value) =>
              context.read<AddAccountOperationCubit>().onValueChanged(value),
        );
      },
    );
  }

  String? _getErrorText(MoneyInputError? valueError) {
    if (valueError == null) return null;
    if (valueError == MoneyInputError.empty) {
      return "add_account_operation_empty_value_error".tr();
    }
    return "add_account_operation_invalid_value_error".tr();
  }
}

class SubmitButtonSection extends StatelessWidget {
  const SubmitButtonSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddAccountOperationCubit, AddAccountOperationState>(
      buildWhen: (previous, current) =>
          previous.formStatus != current.formStatus ||
          previous.selectedAccountId != current.selectedAccountId,
      builder: (context, state) {
        return SubmitButton(
          label: 'account_operation_add'.tr(),
          inProgress: state.formStatus == FormzStatus.submissionInProgress,
          onPressed: state.formStatus != FormzStatus.invalid &&
                  state.selectedAccountId != null
              ? () => context.read<AddAccountOperationCubit>().onSubmitPressed()
              : null,
        );
      },
    );
  }
}
