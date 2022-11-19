import 'package:formz/formz.dart';

enum NonEmptyInputError { empty, tooShort }

class NonEmptyInput extends FormzInput<String, NonEmptyInputError> {
  final minInputLength = 3;

  const NonEmptyInput.pure() : super.pure('');
  const NonEmptyInput.dirty({String value = ''}) : super.dirty(value);

  @override
  NonEmptyInputError? validator(String value) {
    if (value.isEmpty) {
      return NonEmptyInputError.empty;
    } else if (value.length < minInputLength) {
      return NonEmptyInputError.tooShort;
    }

    return null;
  }
}
