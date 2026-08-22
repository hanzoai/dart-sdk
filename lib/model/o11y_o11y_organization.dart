//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yO11yOrganization {
  /// Returns a new [O11yO11yOrganization] instance.
  O11yO11yOrganization({
    this.alias,
    this.createdAt,
    this.displayName,
    this.id,
    this.key,
    this.name,
    this.updatedAt,
  });
  /// Alias is an alternate name the org also answers to.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? alias;

  /// CreatedAt is when the org was created.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? createdAt;

  /// DisplayName is what the console shows for the org.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? displayName;

  /// ID is the org id. On update it is ignored: the call always addresses the caller's own org.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// Key is the org's stable numeric key, derived from its id.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? key;

  /// Name is the org's short name.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// UpdatedAt is when it last changed.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yO11yOrganization &&
    other.alias == alias &&
    other.createdAt == createdAt &&
    other.displayName == displayName &&
    other.id == id &&
    other.key == key &&
    other.name == name &&
    other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (alias == null ? 0 : alias!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (displayName == null ? 0 : displayName!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (key == null ? 0 : key!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode);

  @override
  String toString() => 'O11yO11yOrganization[alias=$alias, createdAt=$createdAt, displayName=$displayName, id=$id, key=$key, name=$name, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.alias != null) {
      json[r'alias'] = this.alias;
    } else {
      json[r'alias'] = null;
    }
    if (this.createdAt != null) {
      json[r'createdAt'] = this.createdAt!.toUtc().toIso8601String();
    } else {
      json[r'createdAt'] = null;
    }
    if (this.displayName != null) {
      json[r'displayName'] = this.displayName;
    } else {
      json[r'displayName'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.key != null) {
      json[r'key'] = this.key;
    } else {
      json[r'key'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.updatedAt != null) {
      json[r'updatedAt'] = this.updatedAt!.toUtc().toIso8601String();
    } else {
      json[r'updatedAt'] = null;
    }
    return json;
  }

  /// Returns a new [O11yO11yOrganization] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yO11yOrganization? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yO11yOrganization[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yO11yOrganization[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yO11yOrganization(
        alias: mapValueOfType<String>(json, r'alias'),
        createdAt: mapDateTime(json, r'createdAt', r''),
        displayName: mapValueOfType<String>(json, r'displayName'),
        id: mapValueOfType<String>(json, r'id'),
        key: mapValueOfType<int>(json, r'key'),
        name: mapValueOfType<String>(json, r'name'),
        updatedAt: mapDateTime(json, r'updatedAt', r''),
      );
    }
    return null;
  }

  static List<O11yO11yOrganization> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yO11yOrganization>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yO11yOrganization.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yO11yOrganization> mapFromJson(dynamic json) {
    final map = <String, O11yO11yOrganization>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yO11yOrganization.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yO11yOrganization-objects as value to a dart map
  static Map<String, List<O11yO11yOrganization>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yO11yOrganization>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yO11yOrganization.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

