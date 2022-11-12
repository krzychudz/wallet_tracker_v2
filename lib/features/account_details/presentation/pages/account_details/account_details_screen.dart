import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:wallet_tracker_v2/features/account_details/presentation/cubit/account_details_cubit.dart';
import 'package:wallet_tracker_v2/features/account_details/presentation/pages/account_details/account_details_view.dart';

class AccountDetailsScreen extends StatelessWidget {
  const AccountDetailsScreen({
    super.key,
    required this.accountId,
  });

  final String accountId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          Modular.get<AccountDetailsCubit>()..getAccountData(accountId),
      child: const AccountDetailsView(),
    );
  }
}
