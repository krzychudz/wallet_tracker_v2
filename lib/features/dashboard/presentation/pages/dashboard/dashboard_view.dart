import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:wallet_tracker_v2/core/data/models/account/account.dart';
import 'package:wallet_tracker_v2/core/widgets/app_bar/app_bar.dart';
import 'package:wallet_tracker_v2/core/widgets/progress_indicator/progress_indicator.dart';
import 'package:wallet_tracker_v2/features/dashboard/presentation/cubit/dashboard_cubit.dart';
import 'package:wallet_tracker_v2/features/dashboard/presentation/cubit/dashboard_state.dart';
import 'package:wallet_tracker_v2/features/dashboard/presentation/widgets/dashboard/account_tile.dart';
import 'package:wallet_tracker_v2/features/dashboard/presentation/widgets/dashboard/accounts_header.dart';
import 'package:wallet_tracker_v2/features/dashboard/presentation/widgets/dashboard/add_expense_income_button.dart';
import 'package:wallet_tracker_v2/features/dashboard/presentation/widgets/dashboard/empty_account_list_placeholder.dart';
import 'package:wallet_tracker_v2/theme/colors/custom_colors.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.mainBackground,
      appBar: MainAppBar(
        title: 'app_name_label'.tr(),
      ),
      body: BlocBuilder<DashboardCubit, DashboardState>(
        builder: (context, state) {
          return state.map(
            loading: (_) => const DataProgressIndicator(),
            data: (data) => AccountsList(accounts: data.accounts),
          );
        },
      ),
      floatingActionButton: AddAccountOperationButton(
        onTap: (accountOperationType) => print(accountOperationType),
      ),
    );
  }
}

class AccountsList extends StatelessWidget {
  const AccountsList({
    Key? key,
    required this.accounts,
  }) : super(key: key);

  final List<Account> accounts;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverPadding(
          padding: EdgeInsets.only(right: 8, left: 8, top: 16),
          sliver: SliverToBoxAdapter(child: AccountsHeader()),
        ),
        accounts.isEmpty
            ? const SliverPadding(
                padding: EdgeInsets.only(right: 8, left: 8, top: 2),
                sliver: SliverToBoxAdapter(
                  child: EmptyAccountListPlaceholder(),
                ),
              )
            : SliverList(
                delegate: SliverChildBuilderDelegate(
                  childCount: accounts.length,
                  (context, index) => AccountTileContainer(
                    account: accounts[index],
                  ),
                ),
              ),
      ],
    );
  }
}
