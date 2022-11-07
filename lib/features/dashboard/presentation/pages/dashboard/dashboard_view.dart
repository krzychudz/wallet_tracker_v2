import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_tracker_v2/core/widgets/app_bar/app_bar.dart';
import 'package:wallet_tracker_v2/features/dashboard/presentation/cubit/dashboard_cubit.dart';
import 'package:wallet_tracker_v2/features/dashboard/presentation/cubit/dashboard_state.dart';
import 'package:wallet_tracker_v2/features/dashboard/presentation/widgets/dashboard/account_tile.dart';
import 'package:wallet_tracker_v2/features/dashboard/presentation/widgets/dashboard/accounts_header.dart';

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
          final accounts = state.accounts;
          return CustomScrollView(
            slivers: [
              const SliverPadding(
                padding: EdgeInsets.only(right: 8, left: 8, top: 16),
                sliver: SliverToBoxAdapter(child: AccountsHeader()),
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  childCount: accounts.length,
                  (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 8, left: 8, top: 2),
                      child: AccountTile(account: accounts[index]),
                    );
                  },
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
