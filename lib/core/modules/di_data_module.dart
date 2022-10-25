import 'package:flutter_modular/flutter_modular.dart';
import 'package:wallet_tracker_v2/core/database/database.dart';

class DIDataModule extends Module {
  @override
  List<Bind> get binds => [
        Bind.lazySingleton((i) => AppDatabase().accountsDao, export: true),
      ];
}
