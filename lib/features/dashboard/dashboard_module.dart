import 'package:flutter_modular/flutter_modular.dart';
import 'package:wallet_tracker_v2/features/account_details/account_details_module.dart';
import 'package:wallet_tracker_v2/features/accounts_history/accounts_history_module.dart';
import 'package:wallet_tracker_v2/features/add_account/add_account_module.dart';
import 'package:wallet_tracker_v2/features/dashboard/presentation/cubit/add_account_operation/add_account_operation_cubit.dart';
import 'package:wallet_tracker_v2/features/dashboard/presentation/cubit/dashboard_cubit.dart';
import 'package:wallet_tracker_v2/features/dashboard/presentation/pages/dashboard/dashboard_screen.dart';

class DashboardModule extends Module {
  @override
  List<Bind> get binds => [
        Bind.factory((i) => DashboardCubit(i())),
        Bind.factory((i) => AddAccountOperationCubit(i(), i()))
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          '/',
          child: (context, args) => const DashboardScreen(),
        ),
        ModuleRoute(
          AddAccountModule.route,
          module: AddAccountModule(),
        ),
        ModuleRoute(
          AccountDetailsModule.route,
          module: AccountDetailsModule(),
        ),
        ModuleRoute(
          AccountsHistoryModule.route,
          module: AccountsHistoryModule(),
        )
      ];
}
