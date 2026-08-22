//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yO11yUserWithRoles {
  /// Returns a new [O11yO11yUserWithRoles] instance.
  O11yO11yUserWithRoles({
    this.createdAt,
    this.displayName,
    this.email,
    this.id,
    this.isRoot,
    this.orgId,
    this.status,
    this.updatedAt,
    this.userRoles = const [],
  });
  /// CreatedAt is when they joined.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? createdAt;

  /// DisplayName is what the console shows for them.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? displayName;

  /// Email is their address.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? email;

  /// ID is the user id.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// IsRoot marks the org's root user.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isRoot;

  /// OrgID is the org they belong to.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? orgId;

  /// Status is their lifecycle state — active, pending_invite or deleted.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  /// UpdatedAt is when their record last changed.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? updatedAt;

  /// UserRoles are their role assignments.
  List<O11yO11yUserRole> userRoles;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yO11yUserWithRoles &&
    other.createdAt == createdAt &&
    other.displayName == displayName &&
    other.email == email &&
    other.id == id &&
    other.isRoot == isRoot &&
    other.orgId == orgId &&
    other.status == status &&
    other.updatedAt == updatedAt &&
    _deepEquality.equals(other.userRoles, userRoles);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (displayName == null ? 0 : displayName!.hashCode) +
    (email == null ? 0 : email!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (isRoot == null ? 0 : isRoot!.hashCode) +
    (orgId == null ? 0 : orgId!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode) +
    (userRoles.hashCode);

  @override
  String toString() => 'O11yO11yUserWithRoles[createdAt=$createdAt, displayName=$displayName, email=$email, id=$id, isRoot=$isRoot, orgId=$orgId, status=$status, updatedAt=$updatedAt, userRoles=$userRoles]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
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
    if (this.email != null) {
      json[r'email'] = this.email;
    } else {
      json[r'email'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.isRoot != null) {
      json[r'isRoot'] = this.isRoot;
    } else {
      json[r'isRoot'] = null;
    }
    if (this.orgId != null) {
      json[r'orgId'] = this.orgId;
    } else {
      json[r'orgId'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.updatedAt != null) {
      json[r'updatedAt'] = this.updatedAt!.toUtc().toIso8601String();
    } else {
      json[r'updatedAt'] = null;
    }
      json[r'userRoles'] = this.userRoles;
    return json;
  }

  /// Returns a new [O11yO11yUserWithRoles] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yO11yUserWithRoles? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yO11yUserWithRoles[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yO11yUserWithRoles[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yO11yUserWithRoles(
        createdAt: mapDateTime(json, r'createdAt', r''),
        displayName: mapValueOfType<String>(json, r'displayName'),
        email: mapValueOfType<String>(json, r'email'),
        id: mapValueOfType<String>(json, r'id'),
        isRoot: mapValueOfType<bool>(json, r'isRoot'),
        orgId: mapValueOfType<String>(json, r'orgId'),
        status: mapValueOfType<String>(json, r'status'),
        updatedAt: mapDateTime(json, r'updatedAt', r''),
        userRoles: O11yO11yUserRole.listFromJson(json[r'userRoles']),
      );
    }
    return null;
  }

  static List<O11yO11yUserWithRoles> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yO11yUserWithRoles>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yO11yUserWithRoles.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yO11yUserWithRoles> mapFromJson(dynamic json) {
    final map = <String, O11yO11yUserWithRoles>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yO11yUserWithRoles.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yO11yUserWithRoles-objects as value to a dart map
  static Map<String, List<O11yO11yUserWithRoles>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yO11yUserWithRoles>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yO11yUserWithRoles.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

