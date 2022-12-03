// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// **************************************************************************
// DriftDatabaseGenerator
// **************************************************************************

// ignore_for_file: type=lint
class AccountsTableData extends DataClass
    implements Insertable<AccountsTableData> {
  final String id;
  final int balance;
  final String currencyCode;
  final String name;
  const AccountsTableData(
      {required this.id,
      required this.balance,
      required this.currencyCode,
      required this.name});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['balance'] = Variable<int>(balance);
    map['currency_code'] = Variable<String>(currencyCode);
    map['name'] = Variable<String>(name);
    return map;
  }

  AccountsTableCompanion toCompanion(bool nullToAbsent) {
    return AccountsTableCompanion(
      id: Value(id),
      balance: Value(balance),
      currencyCode: Value(currencyCode),
      name: Value(name),
    );
  }

  factory AccountsTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return AccountsTableData(
      id: serializer.fromJson<String>(json['id']),
      balance: serializer.fromJson<int>(json['balance']),
      currencyCode: serializer.fromJson<String>(json['currencyCode']),
      name: serializer.fromJson<String>(json['name']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'balance': serializer.toJson<int>(balance),
      'currencyCode': serializer.toJson<String>(currencyCode),
      'name': serializer.toJson<String>(name),
    };
  }

  AccountsTableData copyWith(
          {String? id, int? balance, String? currencyCode, String? name}) =>
      AccountsTableData(
        id: id ?? this.id,
        balance: balance ?? this.balance,
        currencyCode: currencyCode ?? this.currencyCode,
        name: name ?? this.name,
      );
  @override
  String toString() {
    return (StringBuffer('AccountsTableData(')
          ..write('id: $id, ')
          ..write('balance: $balance, ')
          ..write('currencyCode: $currencyCode, ')
          ..write('name: $name')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, balance, currencyCode, name);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AccountsTableData &&
          other.id == this.id &&
          other.balance == this.balance &&
          other.currencyCode == this.currencyCode &&
          other.name == this.name);
}

class AccountsTableCompanion extends UpdateCompanion<AccountsTableData> {
  final Value<String> id;
  final Value<int> balance;
  final Value<String> currencyCode;
  final Value<String> name;
  const AccountsTableCompanion({
    this.id = const Value.absent(),
    this.balance = const Value.absent(),
    this.currencyCode = const Value.absent(),
    this.name = const Value.absent(),
  });
  AccountsTableCompanion.insert({
    required String id,
    required int balance,
    required String currencyCode,
    required String name,
  })  : id = Value(id),
        balance = Value(balance),
        currencyCode = Value(currencyCode),
        name = Value(name);
  static Insertable<AccountsTableData> custom({
    Expression<String>? id,
    Expression<int>? balance,
    Expression<String>? currencyCode,
    Expression<String>? name,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (balance != null) 'balance': balance,
      if (currencyCode != null) 'currency_code': currencyCode,
      if (name != null) 'name': name,
    });
  }

  AccountsTableCompanion copyWith(
      {Value<String>? id,
      Value<int>? balance,
      Value<String>? currencyCode,
      Value<String>? name}) {
    return AccountsTableCompanion(
      id: id ?? this.id,
      balance: balance ?? this.balance,
      currencyCode: currencyCode ?? this.currencyCode,
      name: name ?? this.name,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (balance.present) {
      map['balance'] = Variable<int>(balance.value);
    }
    if (currencyCode.present) {
      map['currency_code'] = Variable<String>(currencyCode.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AccountsTableCompanion(')
          ..write('id: $id, ')
          ..write('balance: $balance, ')
          ..write('currencyCode: $currencyCode, ')
          ..write('name: $name')
          ..write(')'))
        .toString();
  }
}

class $AccountsTableTable extends AccountsTable
    with TableInfo<$AccountsTableTable, AccountsTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $AccountsTableTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _balanceMeta = const VerificationMeta('balance');
  @override
  late final GeneratedColumn<int> balance = GeneratedColumn<int>(
      'balance', aliasedName, false,
      check: () => balance.isBiggerOrEqualValue(0),
      type: DriftSqlType.int,
      requiredDuringInsert: true);
  final VerificationMeta _currencyCodeMeta =
      const VerificationMeta('currencyCode');
  @override
  late final GeneratedColumn<String> currencyCode = GeneratedColumn<String>(
      'currency_code', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name =
      GeneratedColumn<String>('name', aliasedName, false,
          additionalChecks: GeneratedColumn.checkTextLength(
            minTextLength: 3,
          ),
          type: DriftSqlType.string,
          requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, balance, currencyCode, name];
  @override
  String get aliasedName => _alias ?? 'accounts_table';
  @override
  String get actualTableName => 'accounts_table';
  @override
  VerificationContext validateIntegrity(Insertable<AccountsTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('balance')) {
      context.handle(_balanceMeta,
          balance.isAcceptableOrUnknown(data['balance']!, _balanceMeta));
    } else if (isInserting) {
      context.missing(_balanceMeta);
    }
    if (data.containsKey('currency_code')) {
      context.handle(
          _currencyCodeMeta,
          currencyCode.isAcceptableOrUnknown(
              data['currency_code']!, _currencyCodeMeta));
    } else if (isInserting) {
      context.missing(_currencyCodeMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  AccountsTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return AccountsTableData(
      id: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      balance: attachedDatabase.options.types
          .read(DriftSqlType.int, data['${effectivePrefix}balance'])!,
      currencyCode: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}currency_code'])!,
      name: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
    );
  }

  @override
  $AccountsTableTable createAlias(String alias) {
    return $AccountsTableTable(attachedDatabase, alias);
  }
}

class ExpensesTableData extends DataClass
    implements Insertable<ExpensesTableData> {
  final String id;
  final int value;
  final String accountId;
  const ExpensesTableData(
      {required this.id, required this.value, required this.accountId});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['value'] = Variable<int>(value);
    map['account_id'] = Variable<String>(accountId);
    return map;
  }

  ExpensesTableCompanion toCompanion(bool nullToAbsent) {
    return ExpensesTableCompanion(
      id: Value(id),
      value: Value(value),
      accountId: Value(accountId),
    );
  }

  factory ExpensesTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ExpensesTableData(
      id: serializer.fromJson<String>(json['id']),
      value: serializer.fromJson<int>(json['value']),
      accountId: serializer.fromJson<String>(json['accountId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'value': serializer.toJson<int>(value),
      'accountId': serializer.toJson<String>(accountId),
    };
  }

  ExpensesTableData copyWith({String? id, int? value, String? accountId}) =>
      ExpensesTableData(
        id: id ?? this.id,
        value: value ?? this.value,
        accountId: accountId ?? this.accountId,
      );
  @override
  String toString() {
    return (StringBuffer('ExpensesTableData(')
          ..write('id: $id, ')
          ..write('value: $value, ')
          ..write('accountId: $accountId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, value, accountId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ExpensesTableData &&
          other.id == this.id &&
          other.value == this.value &&
          other.accountId == this.accountId);
}

class ExpensesTableCompanion extends UpdateCompanion<ExpensesTableData> {
  final Value<String> id;
  final Value<int> value;
  final Value<String> accountId;
  const ExpensesTableCompanion({
    this.id = const Value.absent(),
    this.value = const Value.absent(),
    this.accountId = const Value.absent(),
  });
  ExpensesTableCompanion.insert({
    required String id,
    required int value,
    required String accountId,
  })  : id = Value(id),
        value = Value(value),
        accountId = Value(accountId);
  static Insertable<ExpensesTableData> custom({
    Expression<String>? id,
    Expression<int>? value,
    Expression<String>? accountId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (value != null) 'value': value,
      if (accountId != null) 'account_id': accountId,
    });
  }

  ExpensesTableCompanion copyWith(
      {Value<String>? id, Value<int>? value, Value<String>? accountId}) {
    return ExpensesTableCompanion(
      id: id ?? this.id,
      value: value ?? this.value,
      accountId: accountId ?? this.accountId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (value.present) {
      map['value'] = Variable<int>(value.value);
    }
    if (accountId.present) {
      map['account_id'] = Variable<String>(accountId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ExpensesTableCompanion(')
          ..write('id: $id, ')
          ..write('value: $value, ')
          ..write('accountId: $accountId')
          ..write(')'))
        .toString();
  }
}

class $ExpensesTableTable extends ExpensesTable
    with TableInfo<$ExpensesTableTable, ExpensesTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ExpensesTableTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _valueMeta = const VerificationMeta('value');
  @override
  late final GeneratedColumn<int> value = GeneratedColumn<int>(
      'value', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  final VerificationMeta _accountIdMeta = const VerificationMeta('accountId');
  @override
  late final GeneratedColumn<String> accountId = GeneratedColumn<String>(
      'account_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, value, accountId];
  @override
  String get aliasedName => _alias ?? 'expenses_table';
  @override
  String get actualTableName => 'expenses_table';
  @override
  VerificationContext validateIntegrity(Insertable<ExpensesTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('value')) {
      context.handle(
          _valueMeta, value.isAcceptableOrUnknown(data['value']!, _valueMeta));
    } else if (isInserting) {
      context.missing(_valueMeta);
    }
    if (data.containsKey('account_id')) {
      context.handle(_accountIdMeta,
          accountId.isAcceptableOrUnknown(data['account_id']!, _accountIdMeta));
    } else if (isInserting) {
      context.missing(_accountIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ExpensesTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ExpensesTableData(
      id: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      value: attachedDatabase.options.types
          .read(DriftSqlType.int, data['${effectivePrefix}value'])!,
      accountId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}account_id'])!,
    );
  }

  @override
  $ExpensesTableTable createAlias(String alias) {
    return $ExpensesTableTable(attachedDatabase, alias);
  }
}

class IncomesTableData extends DataClass
    implements Insertable<IncomesTableData> {
  final String id;
  final int value;
  final String accountId;
  const IncomesTableData(
      {required this.id, required this.value, required this.accountId});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['value'] = Variable<int>(value);
    map['account_id'] = Variable<String>(accountId);
    return map;
  }

  IncomesTableCompanion toCompanion(bool nullToAbsent) {
    return IncomesTableCompanion(
      id: Value(id),
      value: Value(value),
      accountId: Value(accountId),
    );
  }

  factory IncomesTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return IncomesTableData(
      id: serializer.fromJson<String>(json['id']),
      value: serializer.fromJson<int>(json['value']),
      accountId: serializer.fromJson<String>(json['accountId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'value': serializer.toJson<int>(value),
      'accountId': serializer.toJson<String>(accountId),
    };
  }

  IncomesTableData copyWith({String? id, int? value, String? accountId}) =>
      IncomesTableData(
        id: id ?? this.id,
        value: value ?? this.value,
        accountId: accountId ?? this.accountId,
      );
  @override
  String toString() {
    return (StringBuffer('IncomesTableData(')
          ..write('id: $id, ')
          ..write('value: $value, ')
          ..write('accountId: $accountId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, value, accountId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is IncomesTableData &&
          other.id == this.id &&
          other.value == this.value &&
          other.accountId == this.accountId);
}

class IncomesTableCompanion extends UpdateCompanion<IncomesTableData> {
  final Value<String> id;
  final Value<int> value;
  final Value<String> accountId;
  const IncomesTableCompanion({
    this.id = const Value.absent(),
    this.value = const Value.absent(),
    this.accountId = const Value.absent(),
  });
  IncomesTableCompanion.insert({
    required String id,
    required int value,
    required String accountId,
  })  : id = Value(id),
        value = Value(value),
        accountId = Value(accountId);
  static Insertable<IncomesTableData> custom({
    Expression<String>? id,
    Expression<int>? value,
    Expression<String>? accountId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (value != null) 'value': value,
      if (accountId != null) 'account_id': accountId,
    });
  }

  IncomesTableCompanion copyWith(
      {Value<String>? id, Value<int>? value, Value<String>? accountId}) {
    return IncomesTableCompanion(
      id: id ?? this.id,
      value: value ?? this.value,
      accountId: accountId ?? this.accountId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (value.present) {
      map['value'] = Variable<int>(value.value);
    }
    if (accountId.present) {
      map['account_id'] = Variable<String>(accountId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('IncomesTableCompanion(')
          ..write('id: $id, ')
          ..write('value: $value, ')
          ..write('accountId: $accountId')
          ..write(')'))
        .toString();
  }
}

class $IncomesTableTable extends IncomesTable
    with TableInfo<$IncomesTableTable, IncomesTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $IncomesTableTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _valueMeta = const VerificationMeta('value');
  @override
  late final GeneratedColumn<int> value = GeneratedColumn<int>(
      'value', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  final VerificationMeta _accountIdMeta = const VerificationMeta('accountId');
  @override
  late final GeneratedColumn<String> accountId = GeneratedColumn<String>(
      'account_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, value, accountId];
  @override
  String get aliasedName => _alias ?? 'incomes_table';
  @override
  String get actualTableName => 'incomes_table';
  @override
  VerificationContext validateIntegrity(Insertable<IncomesTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('value')) {
      context.handle(
          _valueMeta, value.isAcceptableOrUnknown(data['value']!, _valueMeta));
    } else if (isInserting) {
      context.missing(_valueMeta);
    }
    if (data.containsKey('account_id')) {
      context.handle(_accountIdMeta,
          accountId.isAcceptableOrUnknown(data['account_id']!, _accountIdMeta));
    } else if (isInserting) {
      context.missing(_accountIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  IncomesTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return IncomesTableData(
      id: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      value: attachedDatabase.options.types
          .read(DriftSqlType.int, data['${effectivePrefix}value'])!,
      accountId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}account_id'])!,
    );
  }

  @override
  $IncomesTableTable createAlias(String alias) {
    return $IncomesTableTable(attachedDatabase, alias);
  }
}

class AccountOperationsTableData extends DataClass
    implements Insertable<AccountOperationsTableData> {
  final String id;
  final String accountId;
  final int value;
  final AccountOperationType type;
  final DateTime createdAt;
  const AccountOperationsTableData(
      {required this.id,
      required this.accountId,
      required this.value,
      required this.type,
      required this.createdAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['account_id'] = Variable<String>(accountId);
    map['value'] = Variable<int>(value);
    {
      final converter = $AccountOperationsTableTable.$converter0;
      map['type'] = Variable<int>(converter.toSql(type));
    }
    map['created_at'] = Variable<DateTime>(createdAt);
    return map;
  }

  AccountOperationsTableCompanion toCompanion(bool nullToAbsent) {
    return AccountOperationsTableCompanion(
      id: Value(id),
      accountId: Value(accountId),
      value: Value(value),
      type: Value(type),
      createdAt: Value(createdAt),
    );
  }

  factory AccountOperationsTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return AccountOperationsTableData(
      id: serializer.fromJson<String>(json['id']),
      accountId: serializer.fromJson<String>(json['accountId']),
      value: serializer.fromJson<int>(json['value']),
      type: serializer.fromJson<AccountOperationType>(json['type']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'accountId': serializer.toJson<String>(accountId),
      'value': serializer.toJson<int>(value),
      'type': serializer.toJson<AccountOperationType>(type),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  AccountOperationsTableData copyWith(
          {String? id,
          String? accountId,
          int? value,
          AccountOperationType? type,
          DateTime? createdAt}) =>
      AccountOperationsTableData(
        id: id ?? this.id,
        accountId: accountId ?? this.accountId,
        value: value ?? this.value,
        type: type ?? this.type,
        createdAt: createdAt ?? this.createdAt,
      );
  @override
  String toString() {
    return (StringBuffer('AccountOperationsTableData(')
          ..write('id: $id, ')
          ..write('accountId: $accountId, ')
          ..write('value: $value, ')
          ..write('type: $type, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, accountId, value, type, createdAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AccountOperationsTableData &&
          other.id == this.id &&
          other.accountId == this.accountId &&
          other.value == this.value &&
          other.type == this.type &&
          other.createdAt == this.createdAt);
}

class AccountOperationsTableCompanion
    extends UpdateCompanion<AccountOperationsTableData> {
  final Value<String> id;
  final Value<String> accountId;
  final Value<int> value;
  final Value<AccountOperationType> type;
  final Value<DateTime> createdAt;
  const AccountOperationsTableCompanion({
    this.id = const Value.absent(),
    this.accountId = const Value.absent(),
    this.value = const Value.absent(),
    this.type = const Value.absent(),
    this.createdAt = const Value.absent(),
  });
  AccountOperationsTableCompanion.insert({
    this.id = const Value.absent(),
    required String accountId,
    this.value = const Value.absent(),
    required AccountOperationType type,
    required DateTime createdAt,
  })  : accountId = Value(accountId),
        type = Value(type),
        createdAt = Value(createdAt);
  static Insertable<AccountOperationsTableData> custom({
    Expression<String>? id,
    Expression<String>? accountId,
    Expression<int>? value,
    Expression<int>? type,
    Expression<DateTime>? createdAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (accountId != null) 'account_id': accountId,
      if (value != null) 'value': value,
      if (type != null) 'type': type,
      if (createdAt != null) 'created_at': createdAt,
    });
  }

  AccountOperationsTableCompanion copyWith(
      {Value<String>? id,
      Value<String>? accountId,
      Value<int>? value,
      Value<AccountOperationType>? type,
      Value<DateTime>? createdAt}) {
    return AccountOperationsTableCompanion(
      id: id ?? this.id,
      accountId: accountId ?? this.accountId,
      value: value ?? this.value,
      type: type ?? this.type,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (accountId.present) {
      map['account_id'] = Variable<String>(accountId.value);
    }
    if (value.present) {
      map['value'] = Variable<int>(value.value);
    }
    if (type.present) {
      final converter = $AccountOperationsTableTable.$converter0;
      map['type'] = Variable<int>(converter.toSql(type.value));
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AccountOperationsTableCompanion(')
          ..write('id: $id, ')
          ..write('accountId: $accountId, ')
          ..write('value: $value, ')
          ..write('type: $type, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }
}

class $AccountOperationsTableTable extends AccountOperationsTable
    with TableInfo<$AccountOperationsTableTable, AccountOperationsTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $AccountOperationsTableTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: Constant(const Uuid().v4()));
  final VerificationMeta _accountIdMeta = const VerificationMeta('accountId');
  @override
  late final GeneratedColumn<String> accountId = GeneratedColumn<String>(
      'account_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _valueMeta = const VerificationMeta('value');
  @override
  late final GeneratedColumn<int> value = GeneratedColumn<int>(
      'value', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  final VerificationMeta _typeMeta = const VerificationMeta('type');
  @override
  late final GeneratedColumnWithTypeConverter<AccountOperationType, int> type =
      GeneratedColumn<int>('type', aliasedName, false,
              type: DriftSqlType.int, requiredDuringInsert: true)
          .withConverter<AccountOperationType>(
              $AccountOperationsTableTable.$converter0);
  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, accountId, value, type, createdAt];
  @override
  String get aliasedName => _alias ?? 'account_operations_table';
  @override
  String get actualTableName => 'account_operations_table';
  @override
  VerificationContext validateIntegrity(
      Insertable<AccountOperationsTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('account_id')) {
      context.handle(_accountIdMeta,
          accountId.isAcceptableOrUnknown(data['account_id']!, _accountIdMeta));
    } else if (isInserting) {
      context.missing(_accountIdMeta);
    }
    if (data.containsKey('value')) {
      context.handle(
          _valueMeta, value.isAcceptableOrUnknown(data['value']!, _valueMeta));
    }
    context.handle(_typeMeta, const VerificationResult.success());
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  AccountOperationsTableData map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return AccountOperationsTableData(
      id: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      accountId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}account_id'])!,
      value: attachedDatabase.options.types
          .read(DriftSqlType.int, data['${effectivePrefix}value'])!,
      type: $AccountOperationsTableTable.$converter0.fromSql(attachedDatabase
          .options.types
          .read(DriftSqlType.int, data['${effectivePrefix}type'])!),
      createdAt: attachedDatabase.options.types
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
    );
  }

  @override
  $AccountOperationsTableTable createAlias(String alias) {
    return $AccountOperationsTableTable(attachedDatabase, alias);
  }

  static TypeConverter<AccountOperationType, int> $converter0 =
      const EnumIndexConverter<AccountOperationType>(
          AccountOperationType.values);
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  late final $AccountsTableTable accountsTable = $AccountsTableTable(this);
  late final $ExpensesTableTable expensesTable = $ExpensesTableTable(this);
  late final $IncomesTableTable incomesTable = $IncomesTableTable(this);
  late final $AccountOperationsTableTable accountOperationsTable =
      $AccountOperationsTableTable(this);
  late final AccountsDao accountsDao = AccountsDao(this as AppDatabase);
  late final AccountOperationsDao accountOperationsDao =
      AccountOperationsDao(this as AppDatabase);
  @override
  Iterable<TableInfo<Table, dynamic>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [accountsTable, expensesTable, incomesTable, accountOperationsTable];
}
