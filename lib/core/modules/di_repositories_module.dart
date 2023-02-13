import 'package:flutter_modular/flutter_modular.dart';
import 'package:wallet_tracker_v2/core/data/repositories/account_operations_repository.dart';
import 'package:wallet_tracker_v2/core/data/repositories/accounts_repository.dart';
import 'package:wallet_tracker_v2/core/data/repositories/shared_preferences_repository.dart';
import 'package:wallet_tracker_v2/core/domain/repositories/account_operations_repository_interface.dart';
import 'package:wallet_tracker_v2/core/domain/repositories/account_repository_interface.dart';
import 'package:wallet_tracker_v2/core/domain/repositories/shared_preferences_repository_interface.dart';

class DIRepositoriesModule extends Module {
  @override
  List<Bind> get binds => [
        Bind.lazySingleton<AccountRepositoryInterface>(
          (i) => AccountRepository(i()),
          export: true,
        ),
        Bind.lazySingleton<AccountOperationsRepositoryInterface>(
          (i) => AccountOperationsRepository(
            i(),
          ),
          export: true,
        ),
        Bind.lazySingleton<SharedPreferencesRepositoryInterface>(
          (i) => SharedPreferencesRepository(),
          export: true,
        )
      ];
}
