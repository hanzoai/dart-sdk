//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class SetEnvReq {
  /// Returns a new [SetEnvReq] instance.
  SetEnvReq({
    this.app,
    this.env = const [],
    this.project,
  });

  /// App is the application's slug, from the path.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? app;

  /// Env is the app's whole environment set, REPLACING what it had. Keys must match `^[A-Za-z_][A-Za-z0-9_]*$`; a variable marked `secret: true` is sealed into KMS and blanked in the database.
  List<EnvVarJSON> env;

  /// Project is the project the application lives under, from the path.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? project;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SetEnvReq &&
    other.app == app &&
    _deepEquality.equals(other.env, env) &&
    other.project == project;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (app == null ? 0 : app!.hashCode) +
    (env.hashCode) +
    (project == null ? 0 : project!.hashCode);

  @override
  String toString() => 'SetEnvReq[app=$app, env=$env, project=$project]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.app != null) {
      json[r'app'] = this.app;
    } else {
      json[r'app'] = null;
    }
      json[r'env'] = this.env;
    if (this.project != null) {
      json[r'project'] = this.project;
    } else {
      json[r'project'] = null;
    }
    return json;
  }

  /// Returns a new [SetEnvReq] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SetEnvReq? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SetEnvReq[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SetEnvReq[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SetEnvReq(
        app: mapValueOfType<String>(json, r'app'),
        env: EnvVarJSON.listFromJson(json[r'env']),
        project: mapValueOfType<String>(json, r'project'),
      );
    }
    return null;
  }

  static List<SetEnvReq> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SetEnvReq>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SetEnvReq.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SetEnvReq> mapFromJson(dynamic json) {
    final map = <String, SetEnvReq>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SetEnvReq.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SetEnvReq-objects as value to a dart map
  static Map<String, List<SetEnvReq>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SetEnvReq>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SetEnvReq.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

