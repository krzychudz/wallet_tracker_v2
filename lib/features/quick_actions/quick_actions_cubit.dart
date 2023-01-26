import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quick_actions/quick_actions.dart';
import 'package:wallet_tracker_v2/core/data/repositories/quick_actions_repository/quick_actions_repository.dart';
import 'package:wallet_tracker_v2/core/domain/repositories/quick_actions_repository/quick_actions_repository.dart';
import 'package:wallet_tracker_v2/features/quick_actions/quick_actions.dart';

class QuickActionsCubit extends Cubit<QuickAction?> {
  QuickActionsCubit(this._quickActionsRepository) : super(null);

  final QuickActionsRepositoryInterface _quickActionsRepository;

  late QuickActions quickActions;

  void init() async {
    quickActions = const QuickActions();

    quickActions.initialize((String shortcutType) {
      final quickAction = QuickAction.values.byName(shortcutType);
      _quickActionsRepository.setCurrentAction(quickAction);
      emit(quickAction);
    });

    await _setShortcutItems();
  }

  Future<void> _setShortcutItems() async {
    await quickActions.setShortcutItems(shortcutItems);
  }
}
