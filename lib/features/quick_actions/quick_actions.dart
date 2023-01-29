// ignore_for_file: constant_identifier_names

import 'package:quick_actions/quick_actions.dart';

enum QuickAction { newExpense, newIncome }

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
