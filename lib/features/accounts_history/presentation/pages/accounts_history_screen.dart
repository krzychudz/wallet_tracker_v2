import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:wallet_tracker_v2/features/accounts_history/presentation/cubit/accounts_history_cubit.dart';
import 'package:wallet_tracker_v2/features/accounts_history/presentation/pages/accounts_history_view.dart';

class AccountsHistoryScreen extends StatelessWidget {
  const AccountsHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) =>
            Modular.get<AccountsHistoryCubit>()..onPageEntered(),
        child: const AccountsHistoryView());
  }
}
