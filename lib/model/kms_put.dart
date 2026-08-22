//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class KmsPut {
  /// Returns a new [KmsPut] instance.
  KmsPut({
    this.env,
    this.name,
    this.path,
    this.value,
  });
  /// Env is the environment to write under. REQUIRED, with no default: it is part of the storage key, so a silently defaulted write lands in a bucket the readers that resolve project, environment and path never look in, and the stale value keeps being served.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? env;

  /// Name is the secret's name. Required.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// Path is an optional subpath beneath the org root, e.g. \"/ci\".
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? path;

  /// Value is the secret itself. It is sealed under a fresh per-secret data key before storage, so plaintext never reaches disk, and it is never echoed back, logged, or carried in an error.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? value;

  @override
  bool operator ==(Object other) => identical(this, other) || other is KmsPut &&
    other.env == env &&
    other.name == name &&
    other.path == path &&
    other.value == value;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (env == null ? 0 : env!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (path == null ? 0 : path!.hashCode) +
    (value == null ? 0 : value!.hashCode);

  @override
  String toString() => 'KmsPut[env=$env, name=$name, path=$path, value=$value]';

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
    if (this.value != null) {
      json[r'value'] = this.value;
    } else {
      json[r'value'] = null;
    }
    return json;
  }

  /// Returns a new [KmsPut] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static KmsPut? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "KmsPut[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "KmsPut[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return KmsPut(
        env: mapValueOfType<String>(json, r'env'),
        name: mapValueOfType<String>(json, r'name'),
        path: mapValueOfType<String>(json, r'path'),
        value: mapValueOfType<String>(json, r'value'),
      );
    }
    return null;
  }

  static List<KmsPut> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <KmsPut>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = KmsPut.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, KmsPut> mapFromJson(dynamic json) {
    final map = <String, KmsPut>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = KmsPut.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of KmsPut-objects as value to a dart map
  static Map<String, List<KmsPut>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<KmsPut>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = KmsPut.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

