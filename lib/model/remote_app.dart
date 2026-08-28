//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class RemoteApp {
  /// Returns a new [RemoteApp] instance.
  RemoteApp({
    this.no,
    this.remoteAppArgs,
    this.remoteAppDir,
    this.remoteAppName,
  });
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? no;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? remoteAppArgs;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? remoteAppDir;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? remoteAppName;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RemoteApp &&
    other.no == no &&
    other.remoteAppArgs == remoteAppArgs &&
    other.remoteAppDir == remoteAppDir &&
    other.remoteAppName == remoteAppName;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (no == null ? 0 : no!.hashCode) +
    (remoteAppArgs == null ? 0 : remoteAppArgs!.hashCode) +
    (remoteAppDir == null ? 0 : remoteAppDir!.hashCode) +
    (remoteAppName == null ? 0 : remoteAppName!.hashCode);

  @override
  String toString() => 'RemoteApp[no=$no, remoteAppArgs=$remoteAppArgs, remoteAppDir=$remoteAppDir, remoteAppName=$remoteAppName]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.no != null) {
      json[r'no'] = this.no;
    } else {
      json[r'no'] = null;
    }
    if (this.remoteAppArgs != null) {
      json[r'remoteAppArgs'] = this.remoteAppArgs;
    } else {
      json[r'remoteAppArgs'] = null;
    }
    if (this.remoteAppDir != null) {
      json[r'remoteAppDir'] = this.remoteAppDir;
    } else {
      json[r'remoteAppDir'] = null;
    }
    if (this.remoteAppName != null) {
      json[r'remoteAppName'] = this.remoteAppName;
    } else {
      json[r'remoteAppName'] = null;
    }
    return json;
  }

  /// Returns a new [RemoteApp] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RemoteApp? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RemoteApp[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RemoteApp[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RemoteApp(
        no: mapValueOfType<int>(json, r'no'),
        remoteAppArgs: mapValueOfType<String>(json, r'remoteAppArgs'),
        remoteAppDir: mapValueOfType<String>(json, r'remoteAppDir'),
        remoteAppName: mapValueOfType<String>(json, r'remoteAppName'),
      );
    }
    return null;
  }

  static List<RemoteApp> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RemoteApp>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RemoteApp.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RemoteApp> mapFromJson(dynamic json) {
    final map = <String, RemoteApp>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RemoteApp.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RemoteApp-objects as value to a dart map
  static Map<String, List<RemoteApp>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RemoteApp>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RemoteApp.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

