import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:wallet_tracker_v2/core/widgets/app_bar/app_bar.dart';
import 'package:wallet_tracker_v2/features/add_account/add_account_module.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(
        title: 'Wallet\nTracker',
      ),
      body: Center(
        child: Text('Dashboard Screen'),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () => Modular.to.pushNamed(AddAccountModule.route),
      ),
    );
  }
}
