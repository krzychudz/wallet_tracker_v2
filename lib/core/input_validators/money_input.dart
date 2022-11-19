import 'package:formz/formz.dart';

enum MoneyInputError { wrongFormat, empty }

class MoneyInput extends FormzInput<String, MoneyInputError> {
  final minInputLength = 3;

  const MoneyInput.pure() : super.pure('');
  const MoneyInput.dirty({String value = ''}) : super.dirty(value);

  @override
  MoneyInputError? validator(String value) {
    if (value.isEmpty) {
      return MoneyInputError.empty;
    } else if (value.length < minInputLength) {
      return MoneyInputError.wrongFormat;
    }

    return null;
  }
}
