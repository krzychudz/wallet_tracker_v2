import 'package:flutter_modular/flutter_modular.dart';
import 'package:wallet_tracker_v2/features/accounts_history/presentation/cubit/accounts_history_cubit.dart';
import 'package:wallet_tracker_v2/features/accounts_history/presentation/pages/accounts_history_screen.dart';

class AccountsHistoryModule extends Module {
  static String route = '/accounts_history/';

  @override
  List<Bind> get binds => [
        Bind.factory<AccountsHistoryCubit>(
          (i) => AccountsHistoryCubit(i()),
        ),
      ];

  @override
  List<ChildRoute> get routes => [
        ChildRoute('/', child: (context, args) => const AccountsHistoryScreen())
      ];
}
