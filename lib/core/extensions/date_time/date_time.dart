import 'package:easy_localization/easy_localization.dart';

extension Date on DateTime {
  String format(String pattern) {
    final formatter = DateFormat(pattern);
    return formatter.format(this);
  }
}
