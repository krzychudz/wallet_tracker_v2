import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_tracker_v2/core/data/models/account/account.dart';
import 'package:wallet_tracker_v2/core/enums/operation_type.dart';
import 'package:wallet_tracker_v2/core/widgets/app_bar/app_bar.dart';
import 'package:wallet_tracker_v2/core/widgets/progress_indicator/progress_indicator.dart';
import 'package:wallet_tracker_v2/features/dashboard/presentation/cubit/dashboard_cubit.dart';
import 'package:wallet_tracker_v2/features/dashboard/presentation/cubit/dashboard_state.dart';
import 'package:wallet_tracker_v2/features/dashboard/presentation/widgets/add_account_operation/add_account_operation_bottom_sheet.dart';
import 'package:wallet_tracker_v2/features/dashboard/presentation/widgets/dashboard/account_tile.dart';
import 'package:wallet_tracker_v2/features/dashboard/presentation/widgets/dashboard/accounts_header.dart';
import 'package:wallet_tracker_v2/features/dashboard/presentation/widgets/dashboard/add_expense_income_button.dart';
import 'package:wallet_tracker_v2/features/dashboard/presentation/widgets/dashboard/empty_account_list_placeholder.dart';
import 'package:wallet_tracker_v2/features/quick_actions/quick_actions.dart';
import 'package:wallet_tracker_v2/features/quick_actions/quick_actions_cubit.dart';
import 'package:wallet_tracker_v2/theme/colors/custom_colors.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<QuickActionsCubit, QuickAction?>(
      listener: (context, state) => _handleQuickAction(context, state),
      child: const DashboardViewBody(),
    );
  }

  void _handleQuickAction(BuildContext context, QuickAction? quickAction) {
    if (quickAction == null) return;
    final accountOperationType = quickAction == QuickAction.newExpense
        ? AccountOperationType.expense
        : AccountOperationType.income;
    AddAccountOperationBottomSheet.show(context,
        accountOperationType: accountOperationType);
  }
}

class DashboardViewBody extends StatelessWidget {
  const DashboardViewBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        onTap: (accountOperationType) => AddAccountOperationBottomSheet.show(
          context,
          accountOperationType: accountOperationType,
        ),
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
