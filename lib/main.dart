import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart'
    hide ModularWatchExtension;
import 'package:wallet_tracker_v2/features/quick_actions/quick_actions_cubit.dart';
import 'package:wallet_tracker_v2/theme/theme%20data/theme_light.dart';

import 'app_module.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
      supportedLocales: const [Locale('en')],
      path: 'assets/translations',
      fallbackLocale: const Locale('en'),
      child: ModularApp(
        module: AppModule(),
        child: const WalletTrackerApp(),
      ),
    ),
  );
}

class WalletTrackerApp extends StatefulWidget {
  const WalletTrackerApp({super.key});

  @override
  State<WalletTrackerApp> createState() => _WalletTrackerAppState();
}

class _WalletTrackerAppState extends State<WalletTrackerApp> {
  @override
  void initState() {
    Modular.get<QuickActionsCubit>().init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Wallet Tracker',
      theme: lightThemeData(context),
      locale: context.locale,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      routeInformationParser: Modular.routeInformationParser,
      routerDelegate: Modular.routerDelegate,
    );
  }
}
