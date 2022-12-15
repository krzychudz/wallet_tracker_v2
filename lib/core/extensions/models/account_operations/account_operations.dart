import 'package:collection/collection.dart';
import 'package:wallet_tracker_v2/core/data/models/account_operation/account_operation.dart';
import 'package:wallet_tracker_v2/core/data/models/grouped_data/grouped_data.dart';

extension AccountOperationOperationsList on List<AccountOperation> {
  List<GroupedData<String, AccountOperation>> get groupedByData {
    final groupedData = groupBy(this, (obj) => obj.createdAt);

    final dataList = groupedData.entries
        .map((entry) => GroupedData<String, AccountOperation>(
            header: entry.key.toString(), data: entry.value))
        .toList();

    print("DATA GROUPED: $dataList");

    return dataList;
  }
}
