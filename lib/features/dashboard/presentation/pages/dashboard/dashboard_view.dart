import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:wallet_tracker_v2/core/data/models/account/account.dart';
import 'package:wallet_tracker_v2/core/widgets/app_bar/app_bar.dart';
import 'package:wallet_tracker_v2/core/widgets/progress_indicator/progress_indicator.dart';
import 'package:wallet_tracker_v2/features/account_details/account_details_module.dart';
import 'package:wallet_tracker_v2/features/dashboard/presentation/cubit/dashboard_cubit.dart';
import 'package:wallet_tracker_v2/features/dashboard/presentation/cubit/dashboard_state.dart';
import 'package:wallet_tracker_v2/features/dashboard/presentation/widgets/dashboard/account_tile.dart';
import 'package:wallet_tracker_v2/features/dashboard/presentation/widgets/dashboard/accounts_header.dart';
import 'package:wallet_tracker_v2/features/dashboard/presentation/widgets/dashboard/empty_account_list_placeholder.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFf0efeb),
      appBar: MainAppBar(
        title: 'app_name_label'.tr(),
      ),
      body: BlocBuilder<DashboardCubit, DashboardState>(
        builder: (context, state) {
          return state.map(
            loading: (_) => const DataProgressIndicator(),
            data: (data) {
              final accounts = data.accounts;
              return AccountsList(accounts: accounts);
            },
          );
        },
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
                  (context, index) {
                    final account = accounts[index];
                    return Padding(
                      padding: const EdgeInsets.only(right: 8, left: 8, top: 2),
                      child: AccountTile(
                        account: account,
                        onTap: () => Modular.to.pushNamed(
                          AccountDetailsModule.route,
                          arguments: account.id,
                        ),
                      ),
                    );
                  },
                ),
              ),
      ],
    );
  }
}
