import 'package:collection/collection.dart';
import 'package:wallet_tracker_v2/core/data/models/account_operation/account_operation.dart';
import 'package:wallet_tracker_v2/core/data/models/grouped_data/grouped_data.dart';
import 'package:wallet_tracker_v2/core/extensions/date_time/date_time.dart';

extension AccountOperationOperationsList on List<AccountOperation> {
  List<GroupedData<String, AccountOperation>> get groupedByData {
    final groupedData =
        groupBy(this, (obj) => obj.createdAt.format('yyyy-MM-dd'));

    final dataList = groupedData.entries
        .map((entry) => GroupedData<String, AccountOperation>(
            header: entry.key.toString(), data: entry.value))
        .toList();

    return dataList;
  }
}
