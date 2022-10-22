import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:wallet_tracker_v2/theme/theme.dart';

import 'app_module.dart';

void main() {
  runApp(
    ModularApp(
      module: AppModule(),
      child: const WalletTrackerApp(),
    ),
  );
}

class WalletTrackerApp extends StatelessWidget {
  const WalletTrackerApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Wallet Tracker',
      theme: lightThemeData(context),
      routeInformationParser: Modular.routeInformationParser,
      routerDelegate: Modular.routerDelegate,
    );
  }
}
