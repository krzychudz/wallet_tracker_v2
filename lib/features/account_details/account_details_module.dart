import 'package:flutter_modular/flutter_modular.dart';
import 'package:wallet_tracker_v2/features/account_details/presentation/pages/account_details/account_details_screen.dart';

class AccountDetailsModule extends Module {
  static String route = '/account_details/';

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          '/',
          child: (context, args) => AccountDetailsScreen(
            accountId: args.data,
          ),
        ),
      ];
}
