//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yThreadingConfig {
  /// Returns a new [O11yThreadingConfig] instance.
  O11yThreadingConfig({
    this.enabled,
    this.threadByDate,
  });
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? enabled;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? threadByDate;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yThreadingConfig &&
    other.enabled == enabled &&
    other.threadByDate == threadByDate;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (enabled == null ? 0 : enabled!.hashCode) +
    (threadByDate == null ? 0 : threadByDate!.hashCode);

  @override
  String toString() => 'O11yThreadingConfig[enabled=$enabled, threadByDate=$threadByDate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.enabled != null) {
      json[r'enabled'] = this.enabled;
    } else {
      json[r'enabled'] = null;
    }
    if (this.threadByDate != null) {
      json[r'thread_by_date'] = this.threadByDate;
    } else {
      json[r'thread_by_date'] = null;
    }
    return json;
  }

  /// Returns a new [O11yThreadingConfig] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yThreadingConfig? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yThreadingConfig[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yThreadingConfig[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yThreadingConfig(
        enabled: mapValueOfType<bool>(json, r'enabled'),
        threadByDate: mapValueOfType<String>(json, r'thread_by_date'),
      );
    }
    return null;
  }

  static List<O11yThreadingConfig> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yThreadingConfig>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yThreadingConfig.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yThreadingConfig> mapFromJson(dynamic json) {
    final map = <String, O11yThreadingConfig>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yThreadingConfig.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yThreadingConfig-objects as value to a dart map
  static Map<String, List<O11yThreadingConfig>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yThreadingConfig>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yThreadingConfig.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

