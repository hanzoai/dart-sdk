//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yHaving {
  /// Returns a new [O11yHaving] instance.
  O11yHaving({
    this.columnName,
    this.op,
    this.value,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? columnName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? op;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? value;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yHaving &&
    other.columnName == columnName &&
    other.op == op &&
    other.value == value;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (columnName == null ? 0 : columnName!.hashCode) +
    (op == null ? 0 : op!.hashCode) +
    (value == null ? 0 : value!.hashCode);

  @override
  String toString() => 'O11yHaving[columnName=$columnName, op=$op, value=$value]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.columnName != null) {
      json[r'columnName'] = this.columnName;
    } else {
      json[r'columnName'] = null;
    }
    if (this.op != null) {
      json[r'op'] = this.op;
    } else {
      json[r'op'] = null;
    }
    if (this.value != null) {
      json[r'value'] = this.value;
    } else {
      json[r'value'] = null;
    }
    return json;
  }

  /// Returns a new [O11yHaving] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yHaving? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yHaving[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yHaving[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yHaving(
        columnName: mapValueOfType<String>(json, r'columnName'),
        op: mapValueOfType<String>(json, r'op'),
        value: mapValueOfType<Object>(json, r'value'),
      );
    }
    return null;
  }

  static List<O11yHaving> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yHaving>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yHaving.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yHaving> mapFromJson(dynamic json) {
    final map = <String, O11yHaving>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yHaving.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yHaving-objects as value to a dart map
  static Map<String, List<O11yHaving>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yHaving>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yHaving.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

