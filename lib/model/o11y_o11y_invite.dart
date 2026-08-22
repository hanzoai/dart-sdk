//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yO11yInvite {
  /// Returns a new [O11yO11yInvite] instance.
  O11yO11yInvite({
    this.createdAt,
    this.email,
    this.id,
    this.inviteLink,
    this.name,
    this.orgId,
    this.role,
    this.token,
    this.updatedAt,
  });
  /// CreatedAt is when it was created.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? createdAt;

  /// Email is the address it was sent to.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? email;

  /// ID is the invitation's id.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// InviteLink is the full link mailed to them.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? inviteLink;

  /// Name is the invitee's display name.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// OrgID is the org they are invited into.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? orgId;

  /// Role is the role the invitee will hold.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? role;

  /// Token is the secret that redeems it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? token;

  /// UpdatedAt is when it last changed.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yO11yInvite &&
    other.createdAt == createdAt &&
    other.email == email &&
    other.id == id &&
    other.inviteLink == inviteLink &&
    other.name == name &&
    other.orgId == orgId &&
    other.role == role &&
    other.token == token &&
    other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (email == null ? 0 : email!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (inviteLink == null ? 0 : inviteLink!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (orgId == null ? 0 : orgId!.hashCode) +
    (role == null ? 0 : role!.hashCode) +
    (token == null ? 0 : token!.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode);

  @override
  String toString() => 'O11yO11yInvite[createdAt=$createdAt, email=$email, id=$id, inviteLink=$inviteLink, name=$name, orgId=$orgId, role=$role, token=$token, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.createdAt != null) {
      json[r'createdAt'] = this.createdAt!.toUtc().toIso8601String();
    } else {
      json[r'createdAt'] = null;
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
    if (this.inviteLink != null) {
      json[r'inviteLink'] = this.inviteLink;
    } else {
      json[r'inviteLink'] = null;
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
    if (this.role != null) {
      json[r'role'] = this.role;
    } else {
      json[r'role'] = null;
    }
    if (this.token != null) {
      json[r'token'] = this.token;
    } else {
      json[r'token'] = null;
    }
    if (this.updatedAt != null) {
      json[r'updatedAt'] = this.updatedAt!.toUtc().toIso8601String();
    } else {
      json[r'updatedAt'] = null;
    }
    return json;
  }

  /// Returns a new [O11yO11yInvite] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yO11yInvite? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yO11yInvite[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yO11yInvite[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yO11yInvite(
        createdAt: mapDateTime(json, r'createdAt', r''),
        email: mapValueOfType<String>(json, r'email'),
        id: mapValueOfType<String>(json, r'id'),
        inviteLink: mapValueOfType<String>(json, r'inviteLink'),
        name: mapValueOfType<String>(json, r'name'),
        orgId: mapValueOfType<String>(json, r'orgId'),
        role: mapValueOfType<String>(json, r'role'),
        token: mapValueOfType<String>(json, r'token'),
        updatedAt: mapDateTime(json, r'updatedAt', r''),
      );
    }
    return null;
  }

  static List<O11yO11yInvite> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yO11yInvite>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yO11yInvite.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yO11yInvite> mapFromJson(dynamic json) {
    final map = <String, O11yO11yInvite>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yO11yInvite.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yO11yInvite-objects as value to a dart map
  static Map<String, List<O11yO11yInvite>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yO11yInvite>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yO11yInvite.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

