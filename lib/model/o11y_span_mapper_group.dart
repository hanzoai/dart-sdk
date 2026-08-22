//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11ySpanMapperGroup {
  /// Returns a new [O11ySpanMapperGroup] instance.
  O11ySpanMapperGroup({
    this.condition,
    this.createdAt,
    this.createdBy,
    this.enabled,
    this.id,
    this.name,
    this.orgId,
    this.updatedAt,
    this.updatedBy,
  });
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  O11ySpanMapperGroupCondition? condition;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? createdAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? createdBy;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? enabled;

  Object? id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  Object? orgId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? updatedAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? updatedBy;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11ySpanMapperGroup &&
    other.condition == condition &&
    other.createdAt == createdAt &&
    other.createdBy == createdBy &&
    other.enabled == enabled &&
    other.id == id &&
    other.name == name &&
    other.orgId == orgId &&
    other.updatedAt == updatedAt &&
    other.updatedBy == updatedBy;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (condition == null ? 0 : condition!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (createdBy == null ? 0 : createdBy!.hashCode) +
    (enabled == null ? 0 : enabled!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (orgId == null ? 0 : orgId!.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode) +
    (updatedBy == null ? 0 : updatedBy!.hashCode);

  @override
  String toString() => 'O11ySpanMapperGroup[condition=$condition, createdAt=$createdAt, createdBy=$createdBy, enabled=$enabled, id=$id, name=$name, orgId=$orgId, updatedAt=$updatedAt, updatedBy=$updatedBy]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.condition != null) {
      json[r'condition'] = this.condition;
    } else {
      json[r'condition'] = null;
    }
    if (this.createdAt != null) {
      json[r'createdAt'] = this.createdAt!.toUtc().toIso8601String();
    } else {
      json[r'createdAt'] = null;
    }
    if (this.createdBy != null) {
      json[r'createdBy'] = this.createdBy;
    } else {
      json[r'createdBy'] = null;
    }
    if (this.enabled != null) {
      json[r'enabled'] = this.enabled;
    } else {
      json[r'enabled'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.orgId != null) {
      json[r'orgId'] = this.orgId;
    } else {
      json[r'orgId'] = null;
    }
    if (this.updatedAt != null) {
      json[r'updatedAt'] = this.updatedAt!.toUtc().toIso8601String();
    } else {
      json[r'updatedAt'] = null;
    }
    if (this.updatedBy != null) {
      json[r'updatedBy'] = this.updatedBy;
    } else {
      json[r'updatedBy'] = null;
    }
    return json;
  }

  /// Returns a new [O11ySpanMapperGroup] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11ySpanMapperGroup? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11ySpanMapperGroup[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11ySpanMapperGroup[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11ySpanMapperGroup(
        condition: O11ySpanMapperGroupCondition.fromJson(json[r'condition']),
        createdAt: mapDateTime(json, r'createdAt', r''),
        createdBy: mapValueOfType<String>(json, r'createdBy'),
        enabled: mapValueOfType<bool>(json, r'enabled'),
        id: mapValueOfType<Object>(json, r'id'),
        name: mapValueOfType<String>(json, r'name'),
        orgId: mapValueOfType<Object>(json, r'orgId'),
        updatedAt: mapDateTime(json, r'updatedAt', r''),
        updatedBy: mapValueOfType<String>(json, r'updatedBy'),
      );
    }
    return null;
  }

  static List<O11ySpanMapperGroup> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11ySpanMapperGroup>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11ySpanMapperGroup.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11ySpanMapperGroup> mapFromJson(dynamic json) {
    final map = <String, O11ySpanMapperGroup>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11ySpanMapperGroup.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11ySpanMapperGroup-objects as value to a dart map
  static Map<String, List<O11ySpanMapperGroup>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11ySpanMapperGroup>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11ySpanMapperGroup.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

