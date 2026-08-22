//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class RegistryPackage {
  /// Returns a new [RegistryPackage] instance.
  RegistryPackage({
    this.description,
    this.name,
    this.updated,
    this.version,
  });
  /// Description says what the package is, as published.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  /// Name is the package name (`<org>` or `@<org>/…`).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// Updated is when the package last changed, as the registry reports it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? updated;

  /// Version is the latest published version.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? version;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RegistryPackage &&
    other.description == description &&
    other.name == name &&
    other.updated == updated &&
    other.version == version;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (description == null ? 0 : description!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (updated == null ? 0 : updated!.hashCode) +
    (version == null ? 0 : version!.hashCode);

  @override
  String toString() => 'RegistryPackage[description=$description, name=$name, updated=$updated, version=$version]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.updated != null) {
      json[r'updated'] = this.updated;
    } else {
      json[r'updated'] = null;
    }
    if (this.version != null) {
      json[r'version'] = this.version;
    } else {
      json[r'version'] = null;
    }
    return json;
  }

  /// Returns a new [RegistryPackage] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RegistryPackage? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RegistryPackage[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RegistryPackage[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RegistryPackage(
        description: mapValueOfType<String>(json, r'description'),
        name: mapValueOfType<String>(json, r'name'),
        updated: mapValueOfType<String>(json, r'updated'),
        version: mapValueOfType<String>(json, r'version'),
      );
    }
    return null;
  }

  static List<RegistryPackage> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RegistryPackage>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RegistryPackage.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RegistryPackage> mapFromJson(dynamic json) {
    final map = <String, RegistryPackage>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RegistryPackage.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RegistryPackage-objects as value to a dart map
  static Map<String, List<RegistryPackage>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RegistryPackage>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RegistryPackage.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

