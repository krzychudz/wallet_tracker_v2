import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_tracker_v2/core/data/models/account/account.dart';
import 'package:wallet_tracker_v2/core/widgets/app_bar/app_bar.dart';
import 'package:wallet_tracker_v2/core/widgets/divider/primary_divider.dart';
import 'package:wallet_tracker_v2/core/widgets/header/app_header.dart';
import 'package:wallet_tracker_v2/core/widgets/submit_button/submit_button.dart';
import 'package:wallet_tracker_v2/features/account_details/presentation/cubit/account_details_cubit.dart';
import 'package:wallet_tracker_v2/features/account_details/presentation/cubit/account_details_state.dart';

class AccountDetailsView extends StatelessWidget {
  const AccountDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AccountDetailsCubit, AccountDetailsState>(
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
              AccountDetailsSection(account: account),
              const SizedBox(height: 32),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child:
                    SubmitButton(label: 'account_details_remove_account'.tr()),
              ),
            ],
          ),
        );
      },
    );
  }
}

class AccountDetailsSection extends StatelessWidget {
  const AccountDetailsSection({
    Key? key,
    required this.account,
  }) : super(key: key);

  final Account? account;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AccountInfoTile(
            label: 'account_details_name'.tr(), value: account?.name ?? ''),
        const PrimaryDivider(),
        AccountInfoTile(
            label: 'account_details_balance'.tr(),
            value: account?.balance.toString() ?? ''),
        const PrimaryDivider(),
        AccountInfoTile(
            label: 'account_details_currency_code'.tr(),
            value: account?.currencyCode ?? ''),
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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: Theme.of(context).textTheme.headline3,
          ),
          Text(
            value,
            style: Theme.of(context).textTheme.headline2,
          ),
        ],
      ),
    );
  }
}
