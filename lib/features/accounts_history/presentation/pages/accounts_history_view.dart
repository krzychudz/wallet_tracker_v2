import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sliver_tools/sliver_tools.dart';
import 'package:wallet_tracker_v2/core/data/models/account_operation/account_operation.dart';
import 'package:wallet_tracker_v2/core/data/models/grouped_data/grouped_data.dart';
import 'package:wallet_tracker_v2/core/widgets/app_bar/app_bar.dart';
import 'package:wallet_tracker_v2/features/accounts_history/presentation/cubit/accounts_history_cubit.dart';
import 'package:wallet_tracker_v2/features/accounts_history/presentation/cubit/accounts_history_state.dart';
import 'package:wallet_tracker_v2/features/accounts_history/presentation/widgets/account_operation/account_operation_tile.dart';
import 'package:wallet_tracker_v2/features/accounts_history/presentation/widgets/date_header.dart';

class AccountsHistoryView extends StatelessWidget {
  const AccountsHistoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(title: tr('accounts_history_label')),
      body: BlocBuilder<AccountsHistoryCubit, AccountsHistoryState>(
        buildWhen: (previous, current) => previous != current,
        builder: (context, state) => state.map(
          data: (accountOperations) => AccountsOperationList(
            accountsOperation: accountOperations.data,
          ),
          loading: (_) => const ProgressIndicator(),
          error: (_) => const ErrorPlaceholder(),
        ),
      ),
    );
  }
}

class AccountsOperationList extends StatelessWidget {
  const AccountsOperationList({
    Key? key,
    required this.accountsOperation,
  }) : super(key: key);

  final List<GroupedData<String, AccountOperation>> accountsOperation;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        ...accountsOperation.map(
          (accountOperationsGroup) => MultiSliver(
            pushPinnedChildren: true,
            children: [
              SliverPinnedHeader(
                child: DateHeader(label: accountOperationsGroup.header),
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) => AccountOperationTile(
                    accountOperation: accountOperationsGroup.data[index],
                    applyDivider:
                        index != accountOperationsGroup.data.length - 1,
                  ),
                  childCount: accountOperationsGroup.data.length,
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}

class ErrorPlaceholder extends StatelessWidget {
  const ErrorPlaceholder({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(child: Text(tr('accounts_history_empty')));
  }
}

class ProgressIndicator extends StatelessWidget {
  const ProgressIndicator({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(child: CircularProgressIndicator());
  }
}
