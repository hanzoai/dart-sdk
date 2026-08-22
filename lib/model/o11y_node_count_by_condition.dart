//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yNodeCountByCondition {
  /// Returns a new [O11yNodeCountByCondition] instance.
  O11yNodeCountByCondition({
    this.notReady,
    this.ready,
    this.unknown,
  });
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? notReady;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? ready;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? unknown;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yNodeCountByCondition &&
    other.notReady == notReady &&
    other.ready == ready &&
    other.unknown == unknown;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (notReady == null ? 0 : notReady!.hashCode) +
    (ready == null ? 0 : ready!.hashCode) +
    (unknown == null ? 0 : unknown!.hashCode);

  @override
  String toString() => 'O11yNodeCountByCondition[notReady=$notReady, ready=$ready, unknown=$unknown]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.notReady != null) {
      json[r'notReady'] = this.notReady;
    } else {
      json[r'notReady'] = null;
    }
    if (this.ready != null) {
      json[r'ready'] = this.ready;
    } else {
      json[r'ready'] = null;
    }
    if (this.unknown != null) {
      json[r'unknown'] = this.unknown;
    } else {
      json[r'unknown'] = null;
    }
    return json;
  }

  /// Returns a new [O11yNodeCountByCondition] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yNodeCountByCondition? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yNodeCountByCondition[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yNodeCountByCondition[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yNodeCountByCondition(
        notReady: mapValueOfType<int>(json, r'notReady'),
        ready: mapValueOfType<int>(json, r'ready'),
        unknown: mapValueOfType<int>(json, r'unknown'),
      );
    }
    return null;
  }

  static List<O11yNodeCountByCondition> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yNodeCountByCondition>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yNodeCountByCondition.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yNodeCountByCondition> mapFromJson(dynamic json) {
    final map = <String, O11yNodeCountByCondition>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yNodeCountByCondition.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yNodeCountByCondition-objects as value to a dart map
  static Map<String, List<O11yNodeCountByCondition>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yNodeCountByCondition>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yNodeCountByCondition.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

