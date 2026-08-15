//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yO11ySpanMapperCreateIn {
  /// Returns a new [O11yO11ySpanMapperCreateIn] instance.
  O11yO11ySpanMapperCreateIn({
    this.config,
    this.enabled,
    this.fieldContext,
    this.name,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  O11ySpanMapperConfig? config;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? enabled;

  Object? fieldContext;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yO11ySpanMapperCreateIn &&
    other.config == config &&
    other.enabled == enabled &&
    other.fieldContext == fieldContext &&
    other.name == name;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (config == null ? 0 : config!.hashCode) +
    (enabled == null ? 0 : enabled!.hashCode) +
    (fieldContext == null ? 0 : fieldContext!.hashCode) +
    (name == null ? 0 : name!.hashCode);

  @override
  String toString() => 'O11yO11ySpanMapperCreateIn[config=$config, enabled=$enabled, fieldContext=$fieldContext, name=$name]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.config != null) {
      json[r'config'] = this.config;
    } else {
      json[r'config'] = null;
    }
    if (this.enabled != null) {
      json[r'enabled'] = this.enabled;
    } else {
      json[r'enabled'] = null;
    }
    if (this.fieldContext != null) {
      json[r'fieldContext'] = this.fieldContext;
    } else {
      json[r'fieldContext'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    return json;
  }

  /// Returns a new [O11yO11ySpanMapperCreateIn] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yO11ySpanMapperCreateIn? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yO11ySpanMapperCreateIn[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yO11ySpanMapperCreateIn[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yO11ySpanMapperCreateIn(
        config: O11ySpanMapperConfig.fromJson(json[r'config']),
        enabled: mapValueOfType<bool>(json, r'enabled'),
        fieldContext: mapValueOfType<Object>(json, r'fieldContext'),
        name: mapValueOfType<String>(json, r'name'),
      );
    }
    return null;
  }

  static List<O11yO11ySpanMapperCreateIn> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yO11ySpanMapperCreateIn>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yO11ySpanMapperCreateIn.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yO11ySpanMapperCreateIn> mapFromJson(dynamic json) {
    final map = <String, O11yO11ySpanMapperCreateIn>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yO11ySpanMapperCreateIn.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yO11ySpanMapperCreateIn-objects as value to a dart map
  static Map<String, List<O11yO11ySpanMapperCreateIn>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yO11ySpanMapperCreateIn>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yO11ySpanMapperCreateIn.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

