import 'package:flutter_modular/flutter_modular.dart';
import 'package:wallet_tracker_v2/core/modules/di_data_module.dart';
import 'package:wallet_tracker_v2/features/dashboard/dashboard_module.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<Module> get imports => [
        DIDataModule(),
      ];

  @override
  List<ModularRoute> get routes => [
        ModuleRoute(
          '/',
          module: DashboardModule(),
        ),
      ];
}
