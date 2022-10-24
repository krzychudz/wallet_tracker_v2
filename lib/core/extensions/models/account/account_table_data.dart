import 'package:wallet_tracker_v2/core/data/models/account/account.dart';
import 'package:wallet_tracker_v2/core/database/database.dart' hide Account;

extension AccountTableDataExt on AccountsTableData {
  Account toAccount() {
    return Account(id: id, name: name, currencyCode: currencyCode);
  }
}

extension AccountCompanionExt on Account {
  AccountsTableCompanion toAccountTableData() {
    return AccountsTableCompanion.insert(
      id: id,
      balance: balance,
      currencyCode: currencyCode,
      name: name,
    );
  }
}
