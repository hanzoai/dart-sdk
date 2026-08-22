//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class BalanceLine {
  /// Returns a new [BalanceLine] instance.
  BalanceLine({
    this.account,
    this.amount,
    this.name,
    this.type,
  });
  /// Account is the chart-of-accounts number this line reports on. ABSENT marks a DERIVED line that no account holds — retained earnings is the one such line, computed from cumulative income minus expense.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? account;

  /// Amount is the balance as of the statement date, in whole cents, in its NATURAL sign: positive when the account behaved normally, on all three sides. Assets are debit-normal and shown as stored; liabilities and equity are credit-normal and flipped once here for display. A negative asset is a real overdraft, not a sign convention.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? amount;

  /// Name is the account's human name, or the derived line's own name.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// Type is the account's fundamental class. Absent on a derived line, which belongs to no account and therefore has none.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? type;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BalanceLine &&
    other.account == account &&
    other.amount == amount &&
    other.name == name &&
    other.type == type;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (account == null ? 0 : account!.hashCode) +
    (amount == null ? 0 : amount!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (type == null ? 0 : type!.hashCode);

  @override
  String toString() => 'BalanceLine[account=$account, amount=$amount, name=$name, type=$type]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.account != null) {
      json[r'account'] = this.account;
    } else {
      json[r'account'] = null;
    }
    if (this.amount != null) {
      json[r'amount'] = this.amount;
    } else {
      json[r'amount'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
    return json;
  }

  /// Returns a new [BalanceLine] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BalanceLine? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "BalanceLine[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "BalanceLine[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return BalanceLine(
        account: mapValueOfType<String>(json, r'account'),
        amount: mapValueOfType<int>(json, r'amount'),
        name: mapValueOfType<String>(json, r'name'),
        type: mapValueOfType<String>(json, r'type'),
      );
    }
    return null;
  }

  static List<BalanceLine> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BalanceLine>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BalanceLine.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, BalanceLine> mapFromJson(dynamic json) {
    final map = <String, BalanceLine>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BalanceLine.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of BalanceLine-objects as value to a dart map
  static Map<String, List<BalanceLine>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<BalanceLine>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = BalanceLine.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

