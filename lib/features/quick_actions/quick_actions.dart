// ignore_for_file: constant_identifier_names

import 'package:quick_actions/quick_actions.dart';
import 'package:wallet_tracker_v2/core/data/repositories/quick_actions_repository/quick_actions_repository.dart';

enum Shortcut { AddIncome, AddExpense }

const QuickActions quickActions = QuickActions();

final shortcutItems = <ShortcutItem>[
  ShortcutItem(
    type: QuickAction.newIncome.name,
    localizedTitle: 'Add new Income',
    icon: 'ic_launcher',
  ),
  ShortcutItem(
    type: QuickAction.newExpense.name,
    localizedTitle: 'Add new Expense',
    icon: 'ic_launcher',
  ),
];
