//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yGettableFunnel {
  /// Returns a new [O11yGettableFunnel] instance.
  O11yGettableFunnel({
    this.createdAt,
    this.createdBy,
    this.description,
    this.funnel,
    this.funnelId,
    this.funnelName,
    this.orgId,
    this.steps = const [],
    this.updatedAt,
    this.updatedBy,
    this.userEmail,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? createdAt;

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
  O11yStorableFunnel? funnel;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? funnelId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? funnelName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? orgId;

  List<O11yFunnelStep> steps;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? updatedAt;

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
  String? userEmail;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yGettableFunnel &&
    other.createdAt == createdAt &&
    other.createdBy == createdBy &&
    other.description == description &&
    other.funnel == funnel &&
    other.funnelId == funnelId &&
    other.funnelName == funnelName &&
    other.orgId == orgId &&
    _deepEquality.equals(other.steps, steps) &&
    other.updatedAt == updatedAt &&
    other.updatedBy == updatedBy &&
    other.userEmail == userEmail;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (createdBy == null ? 0 : createdBy!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (funnel == null ? 0 : funnel!.hashCode) +
    (funnelId == null ? 0 : funnelId!.hashCode) +
    (funnelName == null ? 0 : funnelName!.hashCode) +
    (orgId == null ? 0 : orgId!.hashCode) +
    (steps.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode) +
    (updatedBy == null ? 0 : updatedBy!.hashCode) +
    (userEmail == null ? 0 : userEmail!.hashCode);

  @override
  String toString() => 'O11yGettableFunnel[createdAt=$createdAt, createdBy=$createdBy, description=$description, funnel=$funnel, funnelId=$funnelId, funnelName=$funnelName, orgId=$orgId, steps=$steps, updatedAt=$updatedAt, updatedBy=$updatedBy, userEmail=$userEmail]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.createdAt != null) {
      json[r'created_at'] = this.createdAt;
    } else {
      json[r'created_at'] = null;
    }
    if (this.createdBy != null) {
      json[r'created_by'] = this.createdBy;
    } else {
      json[r'created_by'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.funnel != null) {
      json[r'funnel'] = this.funnel;
    } else {
      json[r'funnel'] = null;
    }
    if (this.funnelId != null) {
      json[r'funnel_id'] = this.funnelId;
    } else {
      json[r'funnel_id'] = null;
    }
    if (this.funnelName != null) {
      json[r'funnel_name'] = this.funnelName;
    } else {
      json[r'funnel_name'] = null;
    }
    if (this.orgId != null) {
      json[r'org_id'] = this.orgId;
    } else {
      json[r'org_id'] = null;
    }
      json[r'steps'] = this.steps;
    if (this.updatedAt != null) {
      json[r'updated_at'] = this.updatedAt;
    } else {
      json[r'updated_at'] = null;
    }
    if (this.updatedBy != null) {
      json[r'updated_by'] = this.updatedBy;
    } else {
      json[r'updated_by'] = null;
    }
    if (this.userEmail != null) {
      json[r'user_email'] = this.userEmail;
    } else {
      json[r'user_email'] = null;
    }
    return json;
  }

  /// Returns a new [O11yGettableFunnel] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yGettableFunnel? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yGettableFunnel[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yGettableFunnel[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yGettableFunnel(
        createdAt: mapValueOfType<int>(json, r'created_at'),
        createdBy: mapValueOfType<String>(json, r'created_by'),
        description: mapValueOfType<String>(json, r'description'),
        funnel: O11yStorableFunnel.fromJson(json[r'funnel']),
        funnelId: mapValueOfType<String>(json, r'funnel_id'),
        funnelName: mapValueOfType<String>(json, r'funnel_name'),
        orgId: mapValueOfType<String>(json, r'org_id'),
        steps: O11yFunnelStep.listFromJson(json[r'steps']),
        updatedAt: mapValueOfType<int>(json, r'updated_at'),
        updatedBy: mapValueOfType<String>(json, r'updated_by'),
        userEmail: mapValueOfType<String>(json, r'user_email'),
      );
    }
    return null;
  }

  static List<O11yGettableFunnel> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yGettableFunnel>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yGettableFunnel.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yGettableFunnel> mapFromJson(dynamic json) {
    final map = <String, O11yGettableFunnel>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yGettableFunnel.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yGettableFunnel-objects as value to a dart map
  static Map<String, List<O11yGettableFunnel>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yGettableFunnel>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yGettableFunnel.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

