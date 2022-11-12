import 'package:money2/money2.dart';

extension CurrencyExtension on int {
  String formatCurrency() {
    Money costPrice = Money.fromInt(this, code: 'PLN');
    return costPrice.format("###.###.###,#0 S").replaceAll('.', ' ');
  }
}
