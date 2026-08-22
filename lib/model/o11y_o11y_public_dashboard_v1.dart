//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yO11yPublicDashboardV1 {
  /// Returns a new [O11yO11yPublicDashboardV1] instance.
  O11yO11yPublicDashboardV1({
    this.createdAt,
    this.createdBy,
    this.data,
    this.id,
    this.locked,
    this.orgId,
    this.source_,
    this.updatedAt,
    this.updatedBy,
  });
  /// CreatedAt is when the dashboard was created.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? createdAt;

  /// CreatedBy is who created it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? createdBy;

  Object? data;

  /// ID is the dashboard's id.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// Locked reports whether the dashboard is locked.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? locked;

  /// OrgID is the org the dashboard belongs to.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? orgId;

  /// Source is where the dashboard came from.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? source_;

  /// UpdatedAt is when it last changed.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? updatedAt;

  /// UpdatedBy is who last changed it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? updatedBy;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yO11yPublicDashboardV1 &&
    other.createdAt == createdAt &&
    other.createdBy == createdBy &&
    other.data == data &&
    other.id == id &&
    other.locked == locked &&
    other.orgId == orgId &&
    other.source_ == source_ &&
    other.updatedAt == updatedAt &&
    other.updatedBy == updatedBy;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (createdBy == null ? 0 : createdBy!.hashCode) +
    (data == null ? 0 : data!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (locked == null ? 0 : locked!.hashCode) +
    (orgId == null ? 0 : orgId!.hashCode) +
    (source_ == null ? 0 : source_!.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode) +
    (updatedBy == null ? 0 : updatedBy!.hashCode);

  @override
  String toString() => 'O11yO11yPublicDashboardV1[createdAt=$createdAt, createdBy=$createdBy, data=$data, id=$id, locked=$locked, orgId=$orgId, source_=$source_, updatedAt=$updatedAt, updatedBy=$updatedBy]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
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
    if (this.data != null) {
      json[r'data'] = this.data;
    } else {
      json[r'data'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.locked != null) {
      json[r'locked'] = this.locked;
    } else {
      json[r'locked'] = null;
    }
    if (this.orgId != null) {
      json[r'org_id'] = this.orgId;
    } else {
      json[r'org_id'] = null;
    }
    if (this.source_ != null) {
      json[r'source'] = this.source_;
    } else {
      json[r'source'] = null;
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

  /// Returns a new [O11yO11yPublicDashboardV1] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yO11yPublicDashboardV1? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yO11yPublicDashboardV1[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yO11yPublicDashboardV1[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yO11yPublicDashboardV1(
        createdAt: mapDateTime(json, r'createdAt', r''),
        createdBy: mapValueOfType<String>(json, r'createdBy'),
        data: mapValueOfType<Object>(json, r'data'),
        id: mapValueOfType<String>(json, r'id'),
        locked: mapValueOfType<bool>(json, r'locked'),
        orgId: mapValueOfType<String>(json, r'org_id'),
        source_: mapValueOfType<String>(json, r'source'),
        updatedAt: mapDateTime(json, r'updatedAt', r''),
        updatedBy: mapValueOfType<String>(json, r'updatedBy'),
      );
    }
    return null;
  }

  static List<O11yO11yPublicDashboardV1> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yO11yPublicDashboardV1>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yO11yPublicDashboardV1.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yO11yPublicDashboardV1> mapFromJson(dynamic json) {
    final map = <String, O11yO11yPublicDashboardV1>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yO11yPublicDashboardV1.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yO11yPublicDashboardV1-objects as value to a dart map
  static Map<String, List<O11yO11yPublicDashboardV1>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yO11yPublicDashboardV1>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yO11yPublicDashboardV1.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

