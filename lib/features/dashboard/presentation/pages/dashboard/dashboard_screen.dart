import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:wallet_tracker_v2/features/dashboard/presentation/cubit/dashboard_cubit.dart';
import 'package:wallet_tracker_v2/features/dashboard/presentation/pages/dashboard/dashboard_view.dart';
import 'package:wallet_tracker_v2/features/quick_actions/quick_actions_cubit.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<DashboardCubit>(
          create: (context) => Modular.get<DashboardCubit>(),
        ),
        BlocProvider<QuickActionsCubit>(
          create: (context) => Modular.get<QuickActionsCubit>(),
        )
      ],
      child: const DashboardView(),
    );
  }
}
