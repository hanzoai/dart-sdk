//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class SecretMeta {
  /// Returns a new [SecretMeta] instance.
  SecretMeta({
    this.env,
    this.name,
    this.path,
    this.scheme,
  });
  /// Env is the environment the secret belongs to. It is part of the storage key, so the same name in two environments is two secrets.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? env;

  /// Name is the secret's name within its path and environment.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// Path is the subpath the secret is stored under, beneath the org root.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? path;

  /// Scheme names how the value is sealed at rest, so a caller can tell a migrated record from a current one without opening it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? scheme;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SecretMeta &&
    other.env == env &&
    other.name == name &&
    other.path == path &&
    other.scheme == scheme;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (env == null ? 0 : env!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (path == null ? 0 : path!.hashCode) +
    (scheme == null ? 0 : scheme!.hashCode);

  @override
  String toString() => 'SecretMeta[env=$env, name=$name, path=$path, scheme=$scheme]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.env != null) {
      json[r'env'] = this.env;
    } else {
      json[r'env'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.path != null) {
      json[r'path'] = this.path;
    } else {
      json[r'path'] = null;
    }
    if (this.scheme != null) {
      json[r'scheme'] = this.scheme;
    } else {
      json[r'scheme'] = null;
    }
    return json;
  }

  /// Returns a new [SecretMeta] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SecretMeta? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SecretMeta[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SecretMeta[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SecretMeta(
        env: mapValueOfType<String>(json, r'env'),
        name: mapValueOfType<String>(json, r'name'),
        path: mapValueOfType<String>(json, r'path'),
        scheme: mapValueOfType<String>(json, r'scheme'),
      );
    }
    return null;
  }

  static List<SecretMeta> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SecretMeta>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SecretMeta.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SecretMeta> mapFromJson(dynamic json) {
    final map = <String, SecretMeta>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SecretMeta.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SecretMeta-objects as value to a dart map
  static Map<String, List<SecretMeta>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SecretMeta>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SecretMeta.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

