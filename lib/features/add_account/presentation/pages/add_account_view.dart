import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart'
    hide ModularWatchExtension;
import 'package:formz/formz.dart';
import 'package:wallet_tracker_v2/core/data/currencies/currencies.dart';
import 'package:wallet_tracker_v2/core/extensions/snackbar.dart';
import 'package:wallet_tracker_v2/core/input_validators/money_input.dart';
import 'package:wallet_tracker_v2/core/input_validators/non_empty_input.dart';
import 'package:wallet_tracker_v2/core/widgets/app_bar/app_bar.dart';
import 'package:wallet_tracker_v2/core/widgets/submit_button/submit_button.dart';
import 'package:wallet_tracker_v2/core/widgets/text_field/underline_text_field.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:wallet_tracker_v2/features/add_account/presentation/cubit/add_account_cubit.dart';
import 'package:wallet_tracker_v2/features/add_account/presentation/cubit/add_account_form/add_account_form_cubit.dart';
import 'package:wallet_tracker_v2/features/add_account/presentation/cubit/add_account_form/add_account_form_state.dart';
import 'package:wallet_tracker_v2/features/add_account/presentation/cubit/add_account_state.dart';
import 'package:wallet_tracker_v2/theme/colors/custom_colors.dart';

class AddAccountView extends StatelessWidget {
  const AddAccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(
        title: 'add_account_title'.tr(),
      ),
      body: BlocListener<AddAccountCubit, AddAccountState>(
        listenWhen: (previous, current) =>
            previous.accountCreationState != current.accountCreationState,
        listener: (context, state) => onCreationStateChanged(state, context),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: ListView(
            children: const [
              SizedBox(height: 16),
              AccountNameInput(),
              SizedBox(height: 16),
              BalanceInput(),
              SizedBox(height: 16),
              CurrencyPicker(),
              SizedBox(height: 24),
              SaveButton()
            ],
          ),
        ),
      ),
    );
  }

  void onCreationStateChanged(AddAccountState state, BuildContext context) {
    if (state.accountCreationState == AccountCreationState.success) {
      context.showSnackbar(
          'add_account_success_info'.tr(args: [state.accountData?.name ?? '']));
      Modular.to.pop();
    } else if (state.accountCreationState == AccountCreationState.failure) {
      context.showSnackbar(
        'add_account_error_info'.tr(),
        backgroundColor: CustomColors.redError,
      );
    }
  }
}

class BalanceInput extends StatelessWidget {
  const BalanceInput({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddAccountFormCubit, AddAccountFormState>(
      buildWhen: (previous, current) =>
          previous.initialValue != current.initialValue,
      builder: (context, state) {
        final accountBalanceError = state.initialValue.error;
        final isAccountBalanceInvalid = state.initialValue.invalid;
        return UnderlineTextField(
          hintText: 'add_account_enter_account_value'.tr(),
          keyboardType: TextInputType.number,
          errorText: isAccountBalanceInvalid
              ? _getErrorText(accountBalanceError)
              : null,
          onChange: (value) =>
              context.read<AddAccountFormCubit>().onValueChanged(value),
        );
      },
    );
  }

  String? _getErrorText(MoneyInputError? inputError) {
    if (inputError == null) return null;
    if (inputError == MoneyInputError.empty) {
      return 'add_account_empty_balance'.tr();
    }

    return 'add_account_invalid_balance'.tr();
  }
}

class AccountNameInput extends StatelessWidget {
  const AccountNameInput({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddAccountFormCubit, AddAccountFormState>(
      buildWhen: (previous, current) =>
          previous.accountName != current.accountName,
      builder: (context, state) {
        final accountNameError = state.accountName.error;
        final isAccountNameInvalid = state.accountName.invalid;
        return UnderlineTextField(
          hintText: 'add_account_enter_account_name'.tr(),
          errorText:
              isAccountNameInvalid ? _getErrorText(accountNameError) : null,
          textInputAction: TextInputAction.next,
          onChange: (value) =>
              context.read<AddAccountFormCubit>().onNameChanged(value),
        );
      },
    );
  }

  String? _getErrorText(NonEmptyInputError? inputError) {
    if (inputError == null) return null;
    if (inputError == NonEmptyInputError.empty) {
      return 'add_account_empty_name'.tr();
    }

    return 'add_account_too_short_name'.tr();
  }
}

class CurrencyPicker extends StatelessWidget {
  const CurrencyPicker({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddAccountFormCubit, AddAccountFormState>(
        buildWhen: (previous, current) =>
            previous.currencyCode.value != current.currencyCode.value,
        builder: (context, state) {
          final currencyCode = state.currencyCode.value;
          return DropdownButton(
            value: currencyCode.isNotEmpty ? currencyCode : null,
            iconEnabledColor: Theme.of(context).colorScheme.secondary,
            hint: Text(
              'add_account_select_currency',
              style: TextStyle(color: Theme.of(context).colorScheme.secondary),
            ).tr(),
            isExpanded: true,
            underline: Container(
              height: 1.5,
              color: Theme.of(context).colorScheme.secondary,
            ),
            items: supportedCurrencies
                .map(
                  (currency) => DropdownMenuItem(
                      value: currency.code,
                      child: Text('${currency.name} (${currency.code})')),
                )
                .toList(),
            onChanged: (currencyCode) => context
                .read<AddAccountFormCubit>()
                .onCurrencyChanged(currencyCode),
          );
        });
  }
}

class SaveButton extends StatelessWidget {
  const SaveButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final formStatus = context.watch<AddAccountFormCubit>().state.formStatus;
    final accountCreationState =
        context.watch<AddAccountCubit>().state.accountCreationState;

    return SubmitButton(
      label: tr('add_account_create_account'),
      onPressed: formStatus == FormzStatus.valid
          ? () => _onSubmitPressed(context)
          : null,
      inProgress: accountCreationState == AccountCreationState.inProgress,
    );
  }

  void _onSubmitPressed(BuildContext context) {
    final accountData = context.read<AddAccountFormCubit>().getAccountData();
    context.read<AddAccountCubit>().onSubmit(accountData);
  }
}
