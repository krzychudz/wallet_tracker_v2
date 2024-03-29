// ignore_for_file: constant_identifier_names

import 'package:quick_actions/quick_actions.dart';

enum QuickAction { newExpense, newIncome }

const QuickActions quickActions = QuickActions();

final shortcutItems = <ShortcutItem>[
  ShortcutItem(
    type: QuickAction.newIncome.name,
    localizedTitle: 'Add new Income',
    icon: 'add_income',
  ),
  ShortcutItem(
    type: QuickAction.newExpense.name,
    localizedTitle: 'Add new Expense',
    icon: 'add_expense',
  ),
];
