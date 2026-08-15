//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class TrialBalance {
  /// Returns a new [TrialBalance] instance.
  TrialBalance({
    this.balanced,
    this.from,
    this.rows = const [],
    this.to,
    this.totalCredit,
    this.totalDebit,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? balanced;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? from;

  List<TrialBalanceRow> rows;

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
  int? totalCredit;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? totalDebit;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TrialBalance &&
    other.balanced == balanced &&
    other.from == from &&
    _deepEquality.equals(other.rows, rows) &&
    other.to == to &&
    other.totalCredit == totalCredit &&
    other.totalDebit == totalDebit;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (balanced == null ? 0 : balanced!.hashCode) +
    (from == null ? 0 : from!.hashCode) +
    (rows.hashCode) +
    (to == null ? 0 : to!.hashCode) +
    (totalCredit == null ? 0 : totalCredit!.hashCode) +
    (totalDebit == null ? 0 : totalDebit!.hashCode);

  @override
  String toString() => 'TrialBalance[balanced=$balanced, from=$from, rows=$rows, to=$to, totalCredit=$totalCredit, totalDebit=$totalDebit]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.balanced != null) {
      json[r'balanced'] = this.balanced;
    } else {
      json[r'balanced'] = null;
    }
    if (this.from != null) {
      json[r'from'] = this.from;
    } else {
      json[r'from'] = null;
    }
      json[r'rows'] = this.rows;
    if (this.to != null) {
      json[r'to'] = this.to;
    } else {
      json[r'to'] = null;
    }
    if (this.totalCredit != null) {
      json[r'totalCredit'] = this.totalCredit;
    } else {
      json[r'totalCredit'] = null;
    }
    if (this.totalDebit != null) {
      json[r'totalDebit'] = this.totalDebit;
    } else {
      json[r'totalDebit'] = null;
    }
    return json;
  }

  /// Returns a new [TrialBalance] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TrialBalance? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TrialBalance[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TrialBalance[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TrialBalance(
        balanced: mapValueOfType<bool>(json, r'balanced'),
        from: mapValueOfType<String>(json, r'from'),
        rows: TrialBalanceRow.listFromJson(json[r'rows']),
        to: mapValueOfType<String>(json, r'to'),
        totalCredit: mapValueOfType<int>(json, r'totalCredit'),
        totalDebit: mapValueOfType<int>(json, r'totalDebit'),
      );
    }
    return null;
  }

  static List<TrialBalance> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TrialBalance>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TrialBalance.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TrialBalance> mapFromJson(dynamic json) {
    final map = <String, TrialBalance>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TrialBalance.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TrialBalance-objects as value to a dart map
  static Map<String, List<TrialBalance>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TrialBalance>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TrialBalance.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

