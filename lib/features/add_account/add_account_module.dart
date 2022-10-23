import 'package:flutter_modular/flutter_modular.dart';
import 'package:wallet_tracker_v2/features/add_account/presentation/pages/add_account_screen.dart';

class AddAccountModule extends Module {
  static String route = '/add_account/';

  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          '/',
          child: (context, args) => const AddAccountScreen(),
        ),
      ];
}
