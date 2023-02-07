import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart'
    hide ModularWatchExtension;
import 'package:wallet_tracker_v2/core/data/models/account/account.dart';
import 'package:wallet_tracker_v2/core/extensions/currency/currency.dart';
import 'package:wallet_tracker_v2/core/widgets/app_bar/app_bar.dart';
import 'package:wallet_tracker_v2/core/widgets/divider/primary_divider.dart';
import 'package:wallet_tracker_v2/core/widgets/header/app_header.dart';
import 'package:wallet_tracker_v2/core/widgets/submit_button/submit_button.dart';
import 'package:wallet_tracker_v2/features/account_details/presentation/cubit/account_details_cubit.dart';
import 'package:wallet_tracker_v2/features/account_details/presentation/cubit/account_details_state.dart';
import 'package:wallet_tracker_v2/core/extensions/snackbar.dart';
import 'package:wallet_tracker_v2/theme/colors/custom_colors.dart';

class AccountDetailsView extends StatelessWidget {
  const AccountDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AccountDetailsCubit, AccountDetailsState>(
      listenWhen: (previous, current) =>
          previous.accountRemoveStatus != current.accountRemoveStatus,
      listener: (context, state) =>
          onAccountRemoveStatusChanged(state, context),
      buildWhen: (previous, current) => previous.account != current.account,
      builder: (context, state) {
        final account = state.account;
        return Scaffold(
          appBar: MainAppBar(
            title: 'account_details_app_bar_title'.tr(
              args: [account?.name ?? 'Unknown'],
            ),
          ),
          body: ListView(
            children: [
              AppHeader(
                label: 'account_details_label'.tr(),
              ),
              if (account != null) AccountDetailsSection(account: account),
              const SizedBox(height: 32),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: SubmitButton(
                  label: 'account_details_remove_account'.tr(),
                  onPressed: () => context
                      .read<AccountDetailsCubit>()
                      .onRemovedAccountPressed(),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  void onAccountRemoveStatusChanged(
      AccountDetailsState state, BuildContext context) {
    final accountRemoveStatus = state.accountRemoveStatus;
    if (accountRemoveStatus == AccountRemoveStatus.error) {
      _displayErrorSnackBar(context);
    } else if (accountRemoveStatus == AccountRemoveStatus.success) {
      final accountName = state.account?.name ?? '';
      _displaySuccessSnackBar(context, accountName);
      Modular.to.pop();
    }
  }

  void _displayErrorSnackBar(BuildContext context) {
    context.showSnackbar(
      'account_details_remove_account_error_info'.tr(),
      backgroundColor: CustomColors.redError,
    );
  }

  void _displaySuccessSnackBar(BuildContext context, String accountName) {
    context.showSnackbar(
      'account_details_remove_success_info'.tr(args: [accountName]),
    );
  }
}

class AccountDetailsSection extends StatelessWidget {
  const AccountDetailsSection({
    Key? key,
    required this.account,
  }) : super(key: key);

  final Account account;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AccountInfoTile(
            label: 'account_details_name'.tr(), value: account.name),
        const PrimaryDivider(),
        AccountInfoTile(
          label: 'account_details_balance'.tr(),
          value: account.balance.formatCurrency(account.currencyCode),
        ),
        const PrimaryDivider(),
        AccountInfoTile(
            label: 'account_details_currency_code'.tr(),
            value: account.currencyCode),
        const PrimaryDivider(),
      ],
    );
  }
}

class AccountInfoTile extends StatelessWidget {
  const AccountInfoTile({
    Key? key,
    required this.label,
    required this.value,
  }) : super(key: key);

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.secondary,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              label,
              style: Theme.of(context).textTheme.displaySmall,
            ),
            Text(
              value,
              style: Theme.of(context).textTheme.displayMedium,
            ),
          ],
        ),
      ),
    );
  }
}
