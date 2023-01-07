import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sliver_tools/sliver_tools.dart';
import 'package:wallet_tracker_v2/core/data/models/account_operation/account_operation.dart';
import 'package:wallet_tracker_v2/core/data/models/grouped_data/grouped_data.dart';
import 'package:wallet_tracker_v2/core/widgets/app_bar/app_bar.dart';
import 'package:wallet_tracker_v2/features/accounts_history/presentation/cubit/accounts_history_cubit.dart';
import 'package:wallet_tracker_v2/features/accounts_history/presentation/cubit/accounts_history_state.dart';

class AccountsHistoryView extends StatelessWidget {
  const AccountsHistoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MainAppBar(title: 'History'),
      body: BlocBuilder<AccountsHistoryCubit, AccountsHistoryState>(
          buildWhen: (previous, current) => previous != current,
          builder: (context, state) => state.map(
                data: (accountOperations) => AccountsOperationList(
                  accountsOperation: accountOperations.data,
                ),
                loading: (_) => const ProgressIndicator(),
                error: (_) => const ErrorPlaceholder(),
              )),
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
          (element) => MultiSliver(
            children: [
              SliverPinnedHeader(
                child: Text(element.header, style: TextStyle(fontSize: 24)),
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) => Text(
                    element.data[index].value.toString(),
                  ),
                  childCount: element.data.length,
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}

class AccountOperationsDateList extends StatelessWidget {
  const AccountOperationsDateList({
    Key? key,
    required this.accountsOperation,
  }) : super(key: key);

  final List<AccountOperation> accountsOperation;

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(
      ((context, index) => Row(
            children: [
              Text(accountsOperation[index].accountName ?? ""),
              Text(accountsOperation[index].value.toString())
            ],
          )),
      childCount: accountsOperation.length,
    ));
  }
}

class ErrorPlaceholder extends StatelessWidget {
  const ErrorPlaceholder({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('No data available'));
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
