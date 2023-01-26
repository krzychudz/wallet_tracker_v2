import 'package:flutter_modular/flutter_modular.dart';
import 'package:wallet_tracker_v2/core/modules/di_data_module.dart';
import 'package:wallet_tracker_v2/core/modules/di_repositories_module.dart';
import 'package:wallet_tracker_v2/core/modules/di_usecases_module.dart';
import 'package:wallet_tracker_v2/features/dashboard/dashboard_module.dart';
import 'package:wallet_tracker_v2/features/quick_actions/quick_actions_cubit.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [
        Bind.singleton<QuickActionsCubit>(
          (i) => QuickActionsCubit(i()),
        )
      ];

  @override
  List<Module> get imports => [
        DIDataModule(),
        DIRepositoriesModule(),
        DIUseCasesModule(),
      ];

  @override
  List<ModularRoute> get routes => [
        ModuleRoute(
          '/',
          module: DashboardModule(),
        ),
      ];
}
