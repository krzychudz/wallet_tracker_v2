import 'package:money2/money2.dart';

extension MoneyExtension on String {
  int parseMoneyToInt(String currencyCode) {
    String filteredInput = trimRight().replaceAll(',', '.');

    if (filteredInput.endsWith('.')) {
      filteredInput = filteredInput.padRight(2, '00');
    }

    final inputParsed = double.parse(filteredInput);

    final currency = Currencies().find(currencyCode);
    final scaleFactor = currency?.scaleFactor.toInt() ?? 100;

    final finalValue = inputParsed * scaleFactor;

    return finalValue.toInt();
  }
}
