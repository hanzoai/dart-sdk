//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yStorableFunnel {
  /// Returns a new [O11yStorableFunnel] instance.
  O11yStorableFunnel({
    this.createdAt,
    this.createdBy,
    this.description,
    this.funnelName,
    this.id,
    this.orgId,
    this.steps = const [],
    this.tags,
    this.updatedAt,
    this.updatedBy,
    this.user,
  });

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
  String? description;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? funnelName;

  Object? id;

  Object? orgId;

  List<O11yFunnelStep> steps;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? tags;

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

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  O11yUser? user;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yStorableFunnel &&
    other.createdAt == createdAt &&
    other.createdBy == createdBy &&
    other.description == description &&
    other.funnelName == funnelName &&
    other.id == id &&
    other.orgId == orgId &&
    _deepEquality.equals(other.steps, steps) &&
    other.tags == tags &&
    other.updatedAt == updatedAt &&
    other.updatedBy == updatedBy &&
    other.user == user;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (createdBy == null ? 0 : createdBy!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (funnelName == null ? 0 : funnelName!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (orgId == null ? 0 : orgId!.hashCode) +
    (steps.hashCode) +
    (tags == null ? 0 : tags!.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode) +
    (updatedBy == null ? 0 : updatedBy!.hashCode) +
    (user == null ? 0 : user!.hashCode);

  @override
  String toString() => 'O11yStorableFunnel[createdAt=$createdAt, createdBy=$createdBy, description=$description, funnelName=$funnelName, id=$id, orgId=$orgId, steps=$steps, tags=$tags, updatedAt=$updatedAt, updatedBy=$updatedBy, user=$user]';

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
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.funnelName != null) {
      json[r'funnel_name'] = this.funnelName;
    } else {
      json[r'funnel_name'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.orgId != null) {
      json[r'org_id'] = this.orgId;
    } else {
      json[r'org_id'] = null;
    }
      json[r'steps'] = this.steps;
    if (this.tags != null) {
      json[r'tags'] = this.tags;
    } else {
      json[r'tags'] = null;
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
    if (this.user != null) {
      json[r'user'] = this.user;
    } else {
      json[r'user'] = null;
    }
    return json;
  }

  /// Returns a new [O11yStorableFunnel] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yStorableFunnel? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yStorableFunnel[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yStorableFunnel[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yStorableFunnel(
        createdAt: mapDateTime(json, r'createdAt', r''),
        createdBy: mapValueOfType<String>(json, r'createdBy'),
        description: mapValueOfType<String>(json, r'description'),
        funnelName: mapValueOfType<String>(json, r'funnel_name'),
        id: mapValueOfType<Object>(json, r'id'),
        orgId: mapValueOfType<Object>(json, r'org_id'),
        steps: O11yFunnelStep.listFromJson(json[r'steps']),
        tags: mapValueOfType<String>(json, r'tags'),
        updatedAt: mapDateTime(json, r'updatedAt', r''),
        updatedBy: mapValueOfType<String>(json, r'updatedBy'),
        user: O11yUser.fromJson(json[r'user']),
      );
    }
    return null;
  }

  static List<O11yStorableFunnel> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yStorableFunnel>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yStorableFunnel.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yStorableFunnel> mapFromJson(dynamic json) {
    final map = <String, O11yStorableFunnel>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yStorableFunnel.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yStorableFunnel-objects as value to a dart map
  static Map<String, List<O11yStorableFunnel>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yStorableFunnel>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yStorableFunnel.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

