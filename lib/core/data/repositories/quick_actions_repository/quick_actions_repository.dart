import 'dart:async';

import 'package:wallet_tracker_v2/core/domain/repositories/quick_actions_repository/quick_actions_repository.dart';

enum QuickAction { newIncome, newExpense }

class QuickActionsRepository implements QuickActionsRepositoryInterface {
  final StreamController<QuickAction> _currentActionStream =
      StreamController.broadcast();

  @override
  Stream<QuickAction> get currentActionStream => _currentActionStream.stream;

  @override
  void setCurrentAction(QuickAction action) => _currentActionStream.add(action);
}
