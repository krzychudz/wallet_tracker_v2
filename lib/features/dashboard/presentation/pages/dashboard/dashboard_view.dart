import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:wallet_tracker_v2/features/add_account/add_account_module.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(
          "Wallet\ntracker",
          style: Theme.of(context).textTheme.headline1,
        ),
        actions: [
          IconButton(
            onPressed: () => {},
            color: Theme.of(context).accentColor,
            icon: Icon(Icons.menu),
          ),
        ],
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
