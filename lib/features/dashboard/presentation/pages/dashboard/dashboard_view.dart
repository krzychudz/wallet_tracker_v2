import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:wallet_tracker_v2/core/widgets/app_bar/app_bar.dart';
import 'package:wallet_tracker_v2/features/add_account/add_account_module.dart';
import 'package:wallet_tracker_v2/features/dashboard/presentation/cubit/dashboard_cubit.dart';
import 'package:wallet_tracker_v2/features/dashboard/presentation/cubit/dashboard_state.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(
        title: 'Wallet\nTracker',
      ),
      body: BlocBuilder<DashboardCubit, DashboardState>(
        builder: (context, state) {
          final accounts = state.accounts;
          return CustomScrollView(
            slivers: [
              const SliverPadding(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                sliver: SliverToBoxAdapter(child: AccountsHeader()),
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  childCount: accounts.length,
                  (context, index) {
                    return Text(
                      accounts[index].name,
                      style: const TextStyle(fontSize: 120),
                    );
                  },
                ),
              ),
            ],
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () => Modular.to.pushNamed(AddAccountModule.route),
      ),
    );
  }
}

class AccountsHeader extends StatelessWidget {
  const AccountsHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 6,
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(12),
          ),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 12),
        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "dashboard_accounts_label",
              style: Theme.of(context).textTheme.headline2,
            ).tr(),
            Row(
              children: [
                UnderlineTextButton(
                  label: 'dashboard_accounts_add'.tr(),
                  onTap: () => print("c"),
                ),
                const SizedBox(width: 10),
                UnderlineTextButton(
                  label: 'dashboard_accounts_history'.tr(),
                  onTap: () => print("d"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class UnderlineTextButton extends StatelessWidget {
  const UnderlineTextButton({
    Key? key,
    required this.label,
    required this.onTap,
  }) : super(key: key);

  final String label;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        label,
        style: const TextStyle(
          decoration: TextDecoration.underline,
          decorationColor: Colors.black,
        ),
      ),
    );
  }
}
