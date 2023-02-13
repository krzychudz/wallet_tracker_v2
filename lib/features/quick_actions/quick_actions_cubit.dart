import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quick_actions/quick_actions.dart';
import 'package:wallet_tracker_v2/features/quick_actions/quick_actions.dart';

class QuickActionsCubit extends Cubit<QuickAction?> {
  QuickActionsCubit() : super(null);

  late QuickActions quickActions;

  void init() async {
    quickActions = const QuickActions();
    quickActions.initialize((String shortcutType) {
      final quickAction = QuickAction.values.byName(shortcutType);
      emit(quickAction);
    });

    await _setShortcutItems();
  }

  Future<void> _setShortcutItems() async {
    await quickActions.setShortcutItems(shortcutItems);
  }
}
