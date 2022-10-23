// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// **************************************************************************
// DriftDatabaseGenerator
// **************************************************************************

// ignore_for_file: type=lint
class Account extends DataClass implements Insertable<Account> {
  final String id;
  final int balance;
  final String currencyCode;
  final String name;
  const Account(
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

  AccountsCompanion toCompanion(bool nullToAbsent) {
    return AccountsCompanion(
      id: Value(id),
      balance: Value(balance),
      currencyCode: Value(currencyCode),
      name: Value(name),
    );
  }

  factory Account.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Account(
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

  Account copyWith(
          {String? id, int? balance, String? currencyCode, String? name}) =>
      Account(
        id: id ?? this.id,
        balance: balance ?? this.balance,
        currencyCode: currencyCode ?? this.currencyCode,
        name: name ?? this.name,
      );
  @override
  String toString() {
    return (StringBuffer('Account(')
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
      (other is Account &&
          other.id == this.id &&
          other.balance == this.balance &&
          other.currencyCode == this.currencyCode &&
          other.name == this.name);
}

class AccountsCompanion extends UpdateCompanion<Account> {
  final Value<String> id;
  final Value<int> balance;
  final Value<String> currencyCode;
  final Value<String> name;
  const AccountsCompanion({
    this.id = const Value.absent(),
    this.balance = const Value.absent(),
    this.currencyCode = const Value.absent(),
    this.name = const Value.absent(),
  });
  AccountsCompanion.insert({
    required String id,
    required int balance,
    required String currencyCode,
    required String name,
  })  : id = Value(id),
        balance = Value(balance),
        currencyCode = Value(currencyCode),
        name = Value(name);
  static Insertable<Account> custom({
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

  AccountsCompanion copyWith(
      {Value<String>? id,
      Value<int>? balance,
      Value<String>? currencyCode,
      Value<String>? name}) {
    return AccountsCompanion(
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
    return (StringBuffer('AccountsCompanion(')
          ..write('id: $id, ')
          ..write('balance: $balance, ')
          ..write('currencyCode: $currencyCode, ')
          ..write('name: $name')
          ..write(')'))
        .toString();
  }
}

class $AccountsTable extends Accounts with TableInfo<$AccountsTable, Account> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $AccountsTable(this.attachedDatabase, [this._alias]);
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
  String get aliasedName => _alias ?? 'accounts';
  @override
  String get actualTableName => 'accounts';
  @override
  VerificationContext validateIntegrity(Insertable<Account> instance,
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
  Account map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Account(
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
  $AccountsTable createAlias(String alias) {
    return $AccountsTable(attachedDatabase, alias);
  }
}

class Expense extends DataClass implements Insertable<Expense> {
  final String id;
  final int value;
  final String accountId;
  const Expense(
      {required this.id, required this.value, required this.accountId});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['value'] = Variable<int>(value);
    map['account_id'] = Variable<String>(accountId);
    return map;
  }

  ExpensesCompanion toCompanion(bool nullToAbsent) {
    return ExpensesCompanion(
      id: Value(id),
      value: Value(value),
      accountId: Value(accountId),
    );
  }

  factory Expense.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Expense(
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

  Expense copyWith({String? id, int? value, String? accountId}) => Expense(
        id: id ?? this.id,
        value: value ?? this.value,
        accountId: accountId ?? this.accountId,
      );
  @override
  String toString() {
    return (StringBuffer('Expense(')
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
      (other is Expense &&
          other.id == this.id &&
          other.value == this.value &&
          other.accountId == this.accountId);
}

class ExpensesCompanion extends UpdateCompanion<Expense> {
  final Value<String> id;
  final Value<int> value;
  final Value<String> accountId;
  const ExpensesCompanion({
    this.id = const Value.absent(),
    this.value = const Value.absent(),
    this.accountId = const Value.absent(),
  });
  ExpensesCompanion.insert({
    required String id,
    required int value,
    required String accountId,
  })  : id = Value(id),
        value = Value(value),
        accountId = Value(accountId);
  static Insertable<Expense> custom({
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

  ExpensesCompanion copyWith(
      {Value<String>? id, Value<int>? value, Value<String>? accountId}) {
    return ExpensesCompanion(
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
    return (StringBuffer('ExpensesCompanion(')
          ..write('id: $id, ')
          ..write('value: $value, ')
          ..write('accountId: $accountId')
          ..write(')'))
        .toString();
  }
}

class $ExpensesTable extends Expenses with TableInfo<$ExpensesTable, Expense> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ExpensesTable(this.attachedDatabase, [this._alias]);
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
  String get aliasedName => _alias ?? 'expenses';
  @override
  String get actualTableName => 'expenses';
  @override
  VerificationContext validateIntegrity(Insertable<Expense> instance,
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
  Expense map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Expense(
      id: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      value: attachedDatabase.options.types
          .read(DriftSqlType.int, data['${effectivePrefix}value'])!,
      accountId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}account_id'])!,
    );
  }

  @override
  $ExpensesTable createAlias(String alias) {
    return $ExpensesTable(attachedDatabase, alias);
  }
}

class Income extends DataClass implements Insertable<Income> {
  final String id;
  final int value;
  final String accountId;
  const Income(
      {required this.id, required this.value, required this.accountId});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['value'] = Variable<int>(value);
    map['account_id'] = Variable<String>(accountId);
    return map;
  }

  IncomesCompanion toCompanion(bool nullToAbsent) {
    return IncomesCompanion(
      id: Value(id),
      value: Value(value),
      accountId: Value(accountId),
    );
  }

  factory Income.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Income(
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

  Income copyWith({String? id, int? value, String? accountId}) => Income(
        id: id ?? this.id,
        value: value ?? this.value,
        accountId: accountId ?? this.accountId,
      );
  @override
  String toString() {
    return (StringBuffer('Income(')
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
      (other is Income &&
          other.id == this.id &&
          other.value == this.value &&
          other.accountId == this.accountId);
}

class IncomesCompanion extends UpdateCompanion<Income> {
  final Value<String> id;
  final Value<int> value;
  final Value<String> accountId;
  const IncomesCompanion({
    this.id = const Value.absent(),
    this.value = const Value.absent(),
    this.accountId = const Value.absent(),
  });
  IncomesCompanion.insert({
    required String id,
    required int value,
    required String accountId,
  })  : id = Value(id),
        value = Value(value),
        accountId = Value(accountId);
  static Insertable<Income> custom({
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

  IncomesCompanion copyWith(
      {Value<String>? id, Value<int>? value, Value<String>? accountId}) {
    return IncomesCompanion(
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
    return (StringBuffer('IncomesCompanion(')
          ..write('id: $id, ')
          ..write('value: $value, ')
          ..write('accountId: $accountId')
          ..write(')'))
        .toString();
  }
}

class $IncomesTable extends Incomes with TableInfo<$IncomesTable, Income> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $IncomesTable(this.attachedDatabase, [this._alias]);
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
  String get aliasedName => _alias ?? 'incomes';
  @override
  String get actualTableName => 'incomes';
  @override
  VerificationContext validateIntegrity(Insertable<Income> instance,
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
  Income map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Income(
      id: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      value: attachedDatabase.options.types
          .read(DriftSqlType.int, data['${effectivePrefix}value'])!,
      accountId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}account_id'])!,
    );
  }

  @override
  $IncomesTable createAlias(String alias) {
    return $IncomesTable(attachedDatabase, alias);
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  late final $AccountsTable accounts = $AccountsTable(this);
  late final $ExpensesTable expenses = $ExpensesTable(this);
  late final $IncomesTable incomes = $IncomesTable(this);
  late final AccountsDao accountsDao = AccountsDao(this as AppDatabase);
  @override
  Iterable<TableInfo<Table, dynamic>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [accounts, expenses, incomes];
}
