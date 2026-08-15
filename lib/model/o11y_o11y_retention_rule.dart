//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yO11yRetentionRule {
  /// Returns a new [O11yO11yRetentionRule] instance.
  O11yO11yRetentionRule({
    this.conditions = const [],
    this.ttlDays,
  });

  /// Conditions all have to hold for the rule to match.
  List<O11yO11yRetentionMatch> conditions;

  /// TTLDays is the retention applied when it does, in days.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? ttlDays;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yO11yRetentionRule &&
    _deepEquality.equals(other.conditions, conditions) &&
    other.ttlDays == ttlDays;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (conditions.hashCode) +
    (ttlDays == null ? 0 : ttlDays!.hashCode);

  @override
  String toString() => 'O11yO11yRetentionRule[conditions=$conditions, ttlDays=$ttlDays]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'conditions'] = this.conditions;
    if (this.ttlDays != null) {
      json[r'ttlDays'] = this.ttlDays;
    } else {
      json[r'ttlDays'] = null;
    }
    return json;
  }

  /// Returns a new [O11yO11yRetentionRule] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yO11yRetentionRule? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yO11yRetentionRule[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yO11yRetentionRule[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yO11yRetentionRule(
        conditions: O11yO11yRetentionMatch.listFromJson(json[r'conditions']),
        ttlDays: mapValueOfType<int>(json, r'ttlDays'),
      );
    }
    return null;
  }

  static List<O11yO11yRetentionRule> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yO11yRetentionRule>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yO11yRetentionRule.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yO11yRetentionRule> mapFromJson(dynamic json) {
    final map = <String, O11yO11yRetentionRule>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yO11yRetentionRule.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yO11yRetentionRule-objects as value to a dart map
  static Map<String, List<O11yO11yRetentionRule>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yO11yRetentionRule>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yO11yRetentionRule.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

