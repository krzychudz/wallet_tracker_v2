import 'package:formz/formz.dart';
import 'package:wallet_tracker_v2/core/utils/regexp.dart';

enum MoneyInputError { wrongFormat, empty }

class MoneyInput extends FormzInput<String, MoneyInputError> {
  const MoneyInput.pure() : super.pure('');
  const MoneyInput.dirty({String value = ''}) : super.dirty(value);

  @override
  MoneyInputError? validator(String value) {
    if (value.isEmpty) {
      return MoneyInputError.empty;
    } else if (!RegExpPatterns.moneyRegExp.hasMatch(value) && value != '0') {
      return MoneyInputError.wrongFormat;
    }

    return null;
  }
}
