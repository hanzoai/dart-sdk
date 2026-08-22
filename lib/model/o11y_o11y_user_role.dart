//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yO11yUserRole {
  /// Returns a new [O11yO11yUserRole] instance.
  O11yO11yUserRole({
    this.createdAt,
    this.id,
    this.role,
    this.roleId,
    this.updatedAt,
    this.userId,
  });
  /// CreatedAt is when it was assigned.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? createdAt;

  /// ID is the assignment's own id.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// Role is the role itself.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  O11yO11yRole? role;

  /// RoleID is the role held.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? roleId;

  /// UpdatedAt is when the assignment last changed.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? updatedAt;

  /// UserID is the user holding the role.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? userId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yO11yUserRole &&
    other.createdAt == createdAt &&
    other.id == id &&
    other.role == role &&
    other.roleId == roleId &&
    other.updatedAt == updatedAt &&
    other.userId == userId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (role == null ? 0 : role!.hashCode) +
    (roleId == null ? 0 : roleId!.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode) +
    (userId == null ? 0 : userId!.hashCode);

  @override
  String toString() => 'O11yO11yUserRole[createdAt=$createdAt, id=$id, role=$role, roleId=$roleId, updatedAt=$updatedAt, userId=$userId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.createdAt != null) {
      json[r'createdAt'] = this.createdAt!.toUtc().toIso8601String();
    } else {
      json[r'createdAt'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.role != null) {
      json[r'role'] = this.role;
    } else {
      json[r'role'] = null;
    }
    if (this.roleId != null) {
      json[r'roleId'] = this.roleId;
    } else {
      json[r'roleId'] = null;
    }
    if (this.updatedAt != null) {
      json[r'updatedAt'] = this.updatedAt!.toUtc().toIso8601String();
    } else {
      json[r'updatedAt'] = null;
    }
    if (this.userId != null) {
      json[r'userId'] = this.userId;
    } else {
      json[r'userId'] = null;
    }
    return json;
  }

  /// Returns a new [O11yO11yUserRole] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yO11yUserRole? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yO11yUserRole[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yO11yUserRole[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yO11yUserRole(
        createdAt: mapDateTime(json, r'createdAt', r''),
        id: mapValueOfType<String>(json, r'id'),
        role: O11yO11yRole.fromJson(json[r'role']),
        roleId: mapValueOfType<String>(json, r'roleId'),
        updatedAt: mapDateTime(json, r'updatedAt', r''),
        userId: mapValueOfType<String>(json, r'userId'),
      );
    }
    return null;
  }

  static List<O11yO11yUserRole> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yO11yUserRole>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yO11yUserRole.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yO11yUserRole> mapFromJson(dynamic json) {
    final map = <String, O11yO11yUserRole>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yO11yUserRole.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yO11yUserRole-objects as value to a dart map
  static Map<String, List<O11yO11yUserRole>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yO11yUserRole>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yO11yUserRole.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

