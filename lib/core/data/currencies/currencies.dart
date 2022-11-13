import 'package:money2/money2.dart';

final currencyPLN = Currency.create('PLN', 2,
    symbol: 'PLN',
    invertSeparators: true,
    pattern: '0,00S',
    country: 'Polish',
    unit: 'Zloty',
    name: 'Polish Zloty');

final supportedCurrencies = [
  currencyPLN,
  CommonCurrencies().euro,
  CommonCurrencies().usd,
];
