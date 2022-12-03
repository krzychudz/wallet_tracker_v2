import 'package:flutter_modular/flutter_modular.dart';
import 'package:wallet_tracker_v2/core/data/repositories/accounts_repository.dart';
import 'package:wallet_tracker_v2/core/domain/repositories/account_repository_interface.dart';

class DIRepositoriesModule extends Module {
  @override
  List<Bind> get binds => [
        Bind.lazySingleton<AccountRepositoryInterface>(
          (i) => AccountRepository(i(), i()),
          export: true,
        )
      ];
}
