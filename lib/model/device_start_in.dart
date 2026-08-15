//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class DeviceStartIn {
  /// Returns a new [DeviceStartIn] instance.
  DeviceStartIn({
    this.label,
    this.provider,
  });

  /// Label names this connection so one user can hold several per provider (\"work\", \"personal\"). Empty means \"default\". 1-64 of [A-Za-z0-9._-].
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? label;

  /// Provider is the user-scoped provider's registry id, from the path.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? provider;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DeviceStartIn &&
    other.label == label &&
    other.provider == provider;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (label == null ? 0 : label!.hashCode) +
    (provider == null ? 0 : provider!.hashCode);

  @override
  String toString() => 'DeviceStartIn[label=$label, provider=$provider]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.label != null) {
      json[r'label'] = this.label;
    } else {
      json[r'label'] = null;
    }
    if (this.provider != null) {
      json[r'provider'] = this.provider;
    } else {
      json[r'provider'] = null;
    }
    return json;
  }

  /// Returns a new [DeviceStartIn] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DeviceStartIn? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DeviceStartIn[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DeviceStartIn[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DeviceStartIn(
        label: mapValueOfType<String>(json, r'label'),
        provider: mapValueOfType<String>(json, r'provider'),
      );
    }
    return null;
  }

  static List<DeviceStartIn> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DeviceStartIn>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DeviceStartIn.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DeviceStartIn> mapFromJson(dynamic json) {
    final map = <String, DeviceStartIn>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DeviceStartIn.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DeviceStartIn-objects as value to a dart map
  static Map<String, List<DeviceStartIn>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DeviceStartIn>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DeviceStartIn.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

