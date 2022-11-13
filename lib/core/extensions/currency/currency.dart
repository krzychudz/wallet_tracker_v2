import 'package:money2/money2.dart';

extension CurrencyExtension on int {
  String formatCurrency(String currencyCode) {
    Money costPrice = Money.fromInt(this, code: currencyCode);
    return costPrice.format("###.###.###,#0 S").replaceAll('.', ' ');
  }
}
