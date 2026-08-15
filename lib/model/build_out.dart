//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class BuildOut {
  /// Returns a new [BuildOut] instance.
  BuildOut({
    this.bytes,
    this.generated,
    this.plugin,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? bytes;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? generated;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  AuthoredPlugin? plugin;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BuildOut &&
    other.bytes == bytes &&
    other.generated == generated &&
    other.plugin == plugin;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (bytes == null ? 0 : bytes!.hashCode) +
    (generated == null ? 0 : generated!.hashCode) +
    (plugin == null ? 0 : plugin!.hashCode);

  @override
  String toString() => 'BuildOut[bytes=$bytes, generated=$generated, plugin=$plugin]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.bytes != null) {
      json[r'bytes'] = this.bytes;
    } else {
      json[r'bytes'] = null;
    }
    if (this.generated != null) {
      json[r'generated'] = this.generated;
    } else {
      json[r'generated'] = null;
    }
    if (this.plugin != null) {
      json[r'plugin'] = this.plugin;
    } else {
      json[r'plugin'] = null;
    }
    return json;
  }

  /// Returns a new [BuildOut] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BuildOut? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "BuildOut[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "BuildOut[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return BuildOut(
        bytes: mapValueOfType<int>(json, r'bytes'),
        generated: mapValueOfType<bool>(json, r'generated'),
        plugin: AuthoredPlugin.fromJson(json[r'plugin']),
      );
    }
    return null;
  }

  static List<BuildOut> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BuildOut>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BuildOut.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, BuildOut> mapFromJson(dynamic json) {
    final map = <String, BuildOut>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BuildOut.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of BuildOut-objects as value to a dart map
  static Map<String, List<BuildOut>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<BuildOut>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = BuildOut.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

