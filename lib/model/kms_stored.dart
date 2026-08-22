//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class KmsStored {
  /// Returns a new [KmsStored] instance.
  KmsStored({
    this.env,
    this.name,
    this.stored,
  });
  /// Env is the environment the secret was written under.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? env;

  /// Name is the secret's name.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// Stored is true; a write confirms by not failing.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? stored;

  @override
  bool operator ==(Object other) => identical(this, other) || other is KmsStored &&
    other.env == env &&
    other.name == name &&
    other.stored == stored;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (env == null ? 0 : env!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (stored == null ? 0 : stored!.hashCode);

  @override
  String toString() => 'KmsStored[env=$env, name=$name, stored=$stored]';

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
    if (this.stored != null) {
      json[r'stored'] = this.stored;
    } else {
      json[r'stored'] = null;
    }
    return json;
  }

  /// Returns a new [KmsStored] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static KmsStored? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "KmsStored[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "KmsStored[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return KmsStored(
        env: mapValueOfType<String>(json, r'env'),
        name: mapValueOfType<String>(json, r'name'),
        stored: mapValueOfType<bool>(json, r'stored'),
      );
    }
    return null;
  }

  static List<KmsStored> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <KmsStored>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = KmsStored.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, KmsStored> mapFromJson(dynamic json) {
    final map = <String, KmsStored>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = KmsStored.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of KmsStored-objects as value to a dart map
  static Map<String, List<KmsStored>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<KmsStored>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = KmsStored.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

