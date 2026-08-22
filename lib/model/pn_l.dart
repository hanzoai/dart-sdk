//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class PnL {
  /// Returns a new [PnL] instance.
  PnL({
    this.expense = const [],
    this.from,
    this.income = const [],
    this.netIncome,
    this.to,
    this.totalExpense,
    this.totalIncome,
  });
  /// Expense is the cost lines that moved in the period, one per account.
  List<PnLLine> expense;

  /// From opens the period and is EXCLUSIVE — movement strictly after it, matching the trial balance's opening boundary so the two reports agree on what belongs to a period. Absent means from the beginning of the ledger.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? from;

  /// Income is the revenue lines that moved in the period, one per account. Accounts that did not move are omitted rather than listed at zero.
  List<PnLLine> income;

  /// NetIncome is totalIncome minus totalExpense, in cents. Negative is a loss.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? netIncome;

  /// To closes the period and is inclusive. Absent means up to now.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? to;

  /// TotalExpense is cost MATCHED to that revenue, in cents, including accrued infrastructure that has not been billed yet.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? totalExpense;

  /// TotalIncome is revenue RECOGNIZED in the period, in cents — accrual, not cash, so a prepaid top-up is not in it until the credit is consumed.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? totalIncome;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PnL &&
    _deepEquality.equals(other.expense, expense) &&
    other.from == from &&
    _deepEquality.equals(other.income, income) &&
    other.netIncome == netIncome &&
    other.to == to &&
    other.totalExpense == totalExpense &&
    other.totalIncome == totalIncome;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (expense.hashCode) +
    (from == null ? 0 : from!.hashCode) +
    (income.hashCode) +
    (netIncome == null ? 0 : netIncome!.hashCode) +
    (to == null ? 0 : to!.hashCode) +
    (totalExpense == null ? 0 : totalExpense!.hashCode) +
    (totalIncome == null ? 0 : totalIncome!.hashCode);

  @override
  String toString() => 'PnL[expense=$expense, from=$from, income=$income, netIncome=$netIncome, to=$to, totalExpense=$totalExpense, totalIncome=$totalIncome]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'expense'] = this.expense;
    if (this.from != null) {
      json[r'from'] = this.from;
    } else {
      json[r'from'] = null;
    }
      json[r'income'] = this.income;
    if (this.netIncome != null) {
      json[r'netIncome'] = this.netIncome;
    } else {
      json[r'netIncome'] = null;
    }
    if (this.to != null) {
      json[r'to'] = this.to;
    } else {
      json[r'to'] = null;
    }
    if (this.totalExpense != null) {
      json[r'totalExpense'] = this.totalExpense;
    } else {
      json[r'totalExpense'] = null;
    }
    if (this.totalIncome != null) {
      json[r'totalIncome'] = this.totalIncome;
    } else {
      json[r'totalIncome'] = null;
    }
    return json;
  }

  /// Returns a new [PnL] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PnL? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PnL[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PnL[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PnL(
        expense: PnLLine.listFromJson(json[r'expense']),
        from: mapValueOfType<String>(json, r'from'),
        income: PnLLine.listFromJson(json[r'income']),
        netIncome: mapValueOfType<int>(json, r'netIncome'),
        to: mapValueOfType<String>(json, r'to'),
        totalExpense: mapValueOfType<int>(json, r'totalExpense'),
        totalIncome: mapValueOfType<int>(json, r'totalIncome'),
      );
    }
    return null;
  }

  static List<PnL> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PnL>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PnL.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PnL> mapFromJson(dynamic json) {
    final map = <String, PnL>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PnL.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PnL-objects as value to a dart map
  static Map<String, List<PnL>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PnL>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PnL.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

