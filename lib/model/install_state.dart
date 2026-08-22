//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class InstallState {
  /// Returns a new [InstallState] instance.
  InstallState({
    this.installed,
    this.tool,
  });
  /// Installed is its activation after the write.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? installed;

  /// Tool is the capability the write applied to.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? tool;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InstallState &&
    other.installed == installed &&
    other.tool == tool;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (installed == null ? 0 : installed!.hashCode) +
    (tool == null ? 0 : tool!.hashCode);

  @override
  String toString() => 'InstallState[installed=$installed, tool=$tool]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.installed != null) {
      json[r'installed'] = this.installed;
    } else {
      json[r'installed'] = null;
    }
    if (this.tool != null) {
      json[r'tool'] = this.tool;
    } else {
      json[r'tool'] = null;
    }
    return json;
  }

  /// Returns a new [InstallState] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InstallState? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "InstallState[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "InstallState[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return InstallState(
        installed: mapValueOfType<bool>(json, r'installed'),
        tool: mapValueOfType<String>(json, r'tool'),
      );
    }
    return null;
  }

  static List<InstallState> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InstallState>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InstallState.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, InstallState> mapFromJson(dynamic json) {
    final map = <String, InstallState>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = InstallState.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of InstallState-objects as value to a dart map
  static Map<String, List<InstallState>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<InstallState>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = InstallState.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

