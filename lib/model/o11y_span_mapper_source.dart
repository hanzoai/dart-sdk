//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11ySpanMapperSource {
  /// Returns a new [O11ySpanMapperSource] instance.
  O11ySpanMapperSource({
    this.context,
    this.key,
    this.operation,
    this.priority,
  });
  Object? context;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? key;

  Object? operation;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? priority;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11ySpanMapperSource &&
    other.context == context &&
    other.key == key &&
    other.operation == operation &&
    other.priority == priority;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (context == null ? 0 : context!.hashCode) +
    (key == null ? 0 : key!.hashCode) +
    (operation == null ? 0 : operation!.hashCode) +
    (priority == null ? 0 : priority!.hashCode);

  @override
  String toString() => 'O11ySpanMapperSource[context=$context, key=$key, operation=$operation, priority=$priority]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.context != null) {
      json[r'context'] = this.context;
    } else {
      json[r'context'] = null;
    }
    if (this.key != null) {
      json[r'key'] = this.key;
    } else {
      json[r'key'] = null;
    }
    if (this.operation != null) {
      json[r'operation'] = this.operation;
    } else {
      json[r'operation'] = null;
    }
    if (this.priority != null) {
      json[r'priority'] = this.priority;
    } else {
      json[r'priority'] = null;
    }
    return json;
  }

  /// Returns a new [O11ySpanMapperSource] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11ySpanMapperSource? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11ySpanMapperSource[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11ySpanMapperSource[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11ySpanMapperSource(
        context: mapValueOfType<Object>(json, r'context'),
        key: mapValueOfType<String>(json, r'key'),
        operation: mapValueOfType<Object>(json, r'operation'),
        priority: mapValueOfType<int>(json, r'priority'),
      );
    }
    return null;
  }

  static List<O11ySpanMapperSource> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11ySpanMapperSource>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11ySpanMapperSource.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11ySpanMapperSource> mapFromJson(dynamic json) {
    final map = <String, O11ySpanMapperSource>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11ySpanMapperSource.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11ySpanMapperSource-objects as value to a dart map
  static Map<String, List<O11ySpanMapperSource>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11ySpanMapperSource>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11ySpanMapperSource.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

