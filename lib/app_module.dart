import 'package:flutter_modular/flutter_modular.dart';
import 'package:wallet_tracker_v2/feature-dashboard/dashboard_module.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ModuleRoute('/', module: DashboardModule()),
      ];
}
