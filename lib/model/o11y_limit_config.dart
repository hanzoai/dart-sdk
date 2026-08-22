//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yLimitConfig {
  /// Returns a new [O11yLimitConfig] instance.
  O11yLimitConfig({
    this.day,
    this.second,
  });
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  O11yLimitValue? day;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  O11yLimitValue? second;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yLimitConfig &&
    other.day == day &&
    other.second == second;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (day == null ? 0 : day!.hashCode) +
    (second == null ? 0 : second!.hashCode);

  @override
  String toString() => 'O11yLimitConfig[day=$day, second=$second]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.day != null) {
      json[r'day'] = this.day;
    } else {
      json[r'day'] = null;
    }
    if (this.second != null) {
      json[r'second'] = this.second;
    } else {
      json[r'second'] = null;
    }
    return json;
  }

  /// Returns a new [O11yLimitConfig] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yLimitConfig? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yLimitConfig[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yLimitConfig[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yLimitConfig(
        day: O11yLimitValue.fromJson(json[r'day']),
        second: O11yLimitValue.fromJson(json[r'second']),
      );
    }
    return null;
  }

  static List<O11yLimitConfig> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yLimitConfig>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yLimitConfig.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yLimitConfig> mapFromJson(dynamic json) {
    final map = <String, O11yLimitConfig>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yLimitConfig.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yLimitConfig-objects as value to a dart map
  static Map<String, List<O11yLimitConfig>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yLimitConfig>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yLimitConfig.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

