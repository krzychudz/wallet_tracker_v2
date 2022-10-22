import 'package:flutter_modular/flutter_modular.dart';
import 'package:wallet_tracker_v2/features/add_account/add_account_module.dart';
import 'package:wallet_tracker_v2/features/dashboard/presentation/pages/dashboard/dashboard_screen.dart';

class DashboardModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          '/',
          child: (context, args) => const DashboardScreen(),
        ),
        ModuleRoute(
          AddAccountModule.route,
          module: AddAccountModule(),
        )
      ];
}
