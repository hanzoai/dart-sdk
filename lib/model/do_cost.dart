//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class DoCost {
  /// Returns a new [DoCost] instance.
  DoCost({
    this.accountBalanceCents,
    this.avgDailyBurnCents,
    this.configured,
    this.creditRemainingCents,
    this.error,
    this.generatedAt,
    this.history = const [],
    this.monthToDateSpendCents,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? accountBalanceCents;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? avgDailyBurnCents;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? configured;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? creditRemainingCents;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? error;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? generatedAt;

  List<DoHistoryPoint> history;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? monthToDateSpendCents;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DoCost &&
    other.accountBalanceCents == accountBalanceCents &&
    other.avgDailyBurnCents == avgDailyBurnCents &&
    other.configured == configured &&
    other.creditRemainingCents == creditRemainingCents &&
    other.error == error &&
    other.generatedAt == generatedAt &&
    _deepEquality.equals(other.history, history) &&
    other.monthToDateSpendCents == monthToDateSpendCents;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (accountBalanceCents == null ? 0 : accountBalanceCents!.hashCode) +
    (avgDailyBurnCents == null ? 0 : avgDailyBurnCents!.hashCode) +
    (configured == null ? 0 : configured!.hashCode) +
    (creditRemainingCents == null ? 0 : creditRemainingCents!.hashCode) +
    (error == null ? 0 : error!.hashCode) +
    (generatedAt == null ? 0 : generatedAt!.hashCode) +
    (history.hashCode) +
    (monthToDateSpendCents == null ? 0 : monthToDateSpendCents!.hashCode);

  @override
  String toString() => 'DoCost[accountBalanceCents=$accountBalanceCents, avgDailyBurnCents=$avgDailyBurnCents, configured=$configured, creditRemainingCents=$creditRemainingCents, error=$error, generatedAt=$generatedAt, history=$history, monthToDateSpendCents=$monthToDateSpendCents]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.accountBalanceCents != null) {
      json[r'accountBalanceCents'] = this.accountBalanceCents;
    } else {
      json[r'accountBalanceCents'] = null;
    }
    if (this.avgDailyBurnCents != null) {
      json[r'avgDailyBurnCents'] = this.avgDailyBurnCents;
    } else {
      json[r'avgDailyBurnCents'] = null;
    }
    if (this.configured != null) {
      json[r'configured'] = this.configured;
    } else {
      json[r'configured'] = null;
    }
    if (this.creditRemainingCents != null) {
      json[r'creditRemainingCents'] = this.creditRemainingCents;
    } else {
      json[r'creditRemainingCents'] = null;
    }
    if (this.error != null) {
      json[r'error'] = this.error;
    } else {
      json[r'error'] = null;
    }
    if (this.generatedAt != null) {
      json[r'generatedAt'] = this.generatedAt;
    } else {
      json[r'generatedAt'] = null;
    }
      json[r'history'] = this.history;
    if (this.monthToDateSpendCents != null) {
      json[r'monthToDateSpendCents'] = this.monthToDateSpendCents;
    } else {
      json[r'monthToDateSpendCents'] = null;
    }
    return json;
  }

  /// Returns a new [DoCost] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DoCost? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DoCost[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DoCost[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DoCost(
        accountBalanceCents: mapValueOfType<int>(json, r'accountBalanceCents'),
        avgDailyBurnCents: mapValueOfType<int>(json, r'avgDailyBurnCents'),
        configured: mapValueOfType<bool>(json, r'configured'),
        creditRemainingCents: mapValueOfType<int>(json, r'creditRemainingCents'),
        error: mapValueOfType<String>(json, r'error'),
        generatedAt: mapValueOfType<String>(json, r'generatedAt'),
        history: DoHistoryPoint.listFromJson(json[r'history']),
        monthToDateSpendCents: mapValueOfType<int>(json, r'monthToDateSpendCents'),
      );
    }
    return null;
  }

  static List<DoCost> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DoCost>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DoCost.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DoCost> mapFromJson(dynamic json) {
    final map = <String, DoCost>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DoCost.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DoCost-objects as value to a dart map
  static Map<String, List<DoCost>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DoCost>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DoCost.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

