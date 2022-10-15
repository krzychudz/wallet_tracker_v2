import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

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
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routeInformationParser: Modular.routeInformationParser,
      routerDelegate: Modular.routerDelegate,
    );
  }
}
