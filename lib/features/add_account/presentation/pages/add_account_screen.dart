import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:wallet_tracker_v2/features/add_account/presentation/cubit/add_account_cubit.dart';
import 'package:wallet_tracker_v2/features/add_account/presentation/cubit/add_account_form/add_account_form_cubit.dart';
import 'package:wallet_tracker_v2/features/add_account/presentation/pages/add_account_view.dart';

class AddAccountScreen extends StatelessWidget {
  const AddAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => Modular.get<AddAccountCubit>()),
        BlocProvider(create: (context) => Modular.get<AddAccountFormCubit>()),
      ],
      child: const AddAccountView(),
    );
  }
}
