//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yO11yRoleDetail {
  /// Returns a new [O11yO11yRoleDetail] instance.
  O11yO11yRoleDetail({
    this.createdAt,
    this.description,
    this.id,
    this.name,
    this.orgId,
    this.transactionGroups = const [],
    this.type,
    this.updatedAt,
  });
  /// CreatedAt is when the role was created.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? createdAt;

  /// Description says what the role is for.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  /// ID is the role id.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// Name is the role's name.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// OrgID is the org the role belongs to.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? orgId;

  /// TransactionGroups are the grants the role carries.
  List<O11yO11yTransactionGroup> transactionGroups;

  /// Type is custom or managed.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? type;

  /// UpdatedAt is when it last changed.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yO11yRoleDetail &&
    other.createdAt == createdAt &&
    other.description == description &&
    other.id == id &&
    other.name == name &&
    other.orgId == orgId &&
    _deepEquality.equals(other.transactionGroups, transactionGroups) &&
    other.type == type &&
    other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (orgId == null ? 0 : orgId!.hashCode) +
    (transactionGroups.hashCode) +
    (type == null ? 0 : type!.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode);

  @override
  String toString() => 'O11yO11yRoleDetail[createdAt=$createdAt, description=$description, id=$id, name=$name, orgId=$orgId, transactionGroups=$transactionGroups, type=$type, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.createdAt != null) {
      json[r'createdAt'] = this.createdAt!.toUtc().toIso8601String();
    } else {
      json[r'createdAt'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
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
      json[r'transactionGroups'] = this.transactionGroups;
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
    if (this.updatedAt != null) {
      json[r'updatedAt'] = this.updatedAt!.toUtc().toIso8601String();
    } else {
      json[r'updatedAt'] = null;
    }
    return json;
  }

  /// Returns a new [O11yO11yRoleDetail] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yO11yRoleDetail? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yO11yRoleDetail[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yO11yRoleDetail[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yO11yRoleDetail(
        createdAt: mapDateTime(json, r'createdAt', r''),
        description: mapValueOfType<String>(json, r'description'),
        id: mapValueOfType<String>(json, r'id'),
        name: mapValueOfType<String>(json, r'name'),
        orgId: mapValueOfType<String>(json, r'orgId'),
        transactionGroups: O11yO11yTransactionGroup.listFromJson(json[r'transactionGroups']),
        type: mapValueOfType<String>(json, r'type'),
        updatedAt: mapDateTime(json, r'updatedAt', r''),
      );
    }
    return null;
  }

  static List<O11yO11yRoleDetail> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yO11yRoleDetail>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yO11yRoleDetail.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yO11yRoleDetail> mapFromJson(dynamic json) {
    final map = <String, O11yO11yRoleDetail>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yO11yRoleDetail.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yO11yRoleDetail-objects as value to a dart map
  static Map<String, List<O11yO11yRoleDetail>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yO11yRoleDetail>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yO11yRoleDetail.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

