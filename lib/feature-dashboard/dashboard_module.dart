import 'package:flutter_modular/flutter_modular.dart';
import 'package:wallet_tracker_v2/feature-dashboard/screen/dashboard_screen.dart';

class DashboardModule extends Module {
  @override
  List<ChildRoute> get routes => [
        ChildRoute('/', child: (context, args) => const DashboardScreen()),
      ];
}
