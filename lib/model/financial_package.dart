//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class FinancialPackage {
  /// Returns a new [FinancialPackage] instance.
  FinancialPackage({
    this.balanceSheet,
    this.from,
    this.generatedAt,
    this.gl = const [],
    this.org,
    this.pnl,
    this.to,
    this.trialBalance,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  BalanceSheet? balanceSheet;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? from;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? generatedAt;

  List<GLRow> gl;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? org;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  PnL? pnl;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? to;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  TrialBalance? trialBalance;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FinancialPackage &&
    other.balanceSheet == balanceSheet &&
    other.from == from &&
    other.generatedAt == generatedAt &&
    _deepEquality.equals(other.gl, gl) &&
    other.org == org &&
    other.pnl == pnl &&
    other.to == to &&
    other.trialBalance == trialBalance;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (balanceSheet == null ? 0 : balanceSheet!.hashCode) +
    (from == null ? 0 : from!.hashCode) +
    (generatedAt == null ? 0 : generatedAt!.hashCode) +
    (gl.hashCode) +
    (org == null ? 0 : org!.hashCode) +
    (pnl == null ? 0 : pnl!.hashCode) +
    (to == null ? 0 : to!.hashCode) +
    (trialBalance == null ? 0 : trialBalance!.hashCode);

  @override
  String toString() => 'FinancialPackage[balanceSheet=$balanceSheet, from=$from, generatedAt=$generatedAt, gl=$gl, org=$org, pnl=$pnl, to=$to, trialBalance=$trialBalance]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.balanceSheet != null) {
      json[r'balanceSheet'] = this.balanceSheet;
    } else {
      json[r'balanceSheet'] = null;
    }
    if (this.from != null) {
      json[r'from'] = this.from;
    } else {
      json[r'from'] = null;
    }
    if (this.generatedAt != null) {
      json[r'generatedAt'] = this.generatedAt;
    } else {
      json[r'generatedAt'] = null;
    }
      json[r'gl'] = this.gl;
    if (this.org != null) {
      json[r'org'] = this.org;
    } else {
      json[r'org'] = null;
    }
    if (this.pnl != null) {
      json[r'pnl'] = this.pnl;
    } else {
      json[r'pnl'] = null;
    }
    if (this.to != null) {
      json[r'to'] = this.to;
    } else {
      json[r'to'] = null;
    }
    if (this.trialBalance != null) {
      json[r'trialBalance'] = this.trialBalance;
    } else {
      json[r'trialBalance'] = null;
    }
    return json;
  }

  /// Returns a new [FinancialPackage] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static FinancialPackage? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "FinancialPackage[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "FinancialPackage[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return FinancialPackage(
        balanceSheet: BalanceSheet.fromJson(json[r'balanceSheet']),
        from: mapValueOfType<String>(json, r'from'),
        generatedAt: mapValueOfType<String>(json, r'generatedAt'),
        gl: GLRow.listFromJson(json[r'gl']),
        org: mapValueOfType<String>(json, r'org'),
        pnl: PnL.fromJson(json[r'pnl']),
        to: mapValueOfType<String>(json, r'to'),
        trialBalance: TrialBalance.fromJson(json[r'trialBalance']),
      );
    }
    return null;
  }

  static List<FinancialPackage> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <FinancialPackage>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FinancialPackage.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, FinancialPackage> mapFromJson(dynamic json) {
    final map = <String, FinancialPackage>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = FinancialPackage.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of FinancialPackage-objects as value to a dart map
  static Map<String, List<FinancialPackage>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<FinancialPackage>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = FinancialPackage.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

