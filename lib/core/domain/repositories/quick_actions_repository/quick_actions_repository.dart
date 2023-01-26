import 'package:wallet_tracker_v2/core/data/repositories/quick_actions_repository/quick_actions_repository.dart';

abstract class QuickActionsRepositoryInterface {
  Stream<QuickAction> get currentActionStream;
  void setCurrentAction(QuickAction action);
}
