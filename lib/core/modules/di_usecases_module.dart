import 'package:flutter_modular/flutter_modular.dart';
import 'package:wallet_tracker_v2/core/domain/usecases/account/add_account.dart';

class DIUseCasesModule extends Module {
  @override
  List<Bind> get binds => [
        Bind.lazySingleton<AddAccount>((i) => AddAccount(i()), export: true),
      ];
}
