//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yStorableIntegrationDashboard {
  /// Returns a new [O11yStorableIntegrationDashboard] instance.
  O11yStorableIntegrationDashboard({
    this.createdAt,
    this.dashboardId,
    this.id,
    this.provider,
    this.slug,
    this.updatedAt,
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
  String? dashboardId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  Object? provider;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? slug;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yStorableIntegrationDashboard &&
    other.createdAt == createdAt &&
    other.dashboardId == dashboardId &&
    other.id == id &&
    other.provider == provider &&
    other.slug == slug &&
    other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (dashboardId == null ? 0 : dashboardId!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (provider == null ? 0 : provider!.hashCode) +
    (slug == null ? 0 : slug!.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode);

  @override
  String toString() => 'O11yStorableIntegrationDashboard[createdAt=$createdAt, dashboardId=$dashboardId, id=$id, provider=$provider, slug=$slug, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.createdAt != null) {
      json[r'createdAt'] = this.createdAt!.toUtc().toIso8601String();
    } else {
      json[r'createdAt'] = null;
    }
    if (this.dashboardId != null) {
      json[r'dashboardId'] = this.dashboardId;
    } else {
      json[r'dashboardId'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.provider != null) {
      json[r'provider'] = this.provider;
    } else {
      json[r'provider'] = null;
    }
    if (this.slug != null) {
      json[r'slug'] = this.slug;
    } else {
      json[r'slug'] = null;
    }
    if (this.updatedAt != null) {
      json[r'updatedAt'] = this.updatedAt!.toUtc().toIso8601String();
    } else {
      json[r'updatedAt'] = null;
    }
    return json;
  }

  /// Returns a new [O11yStorableIntegrationDashboard] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yStorableIntegrationDashboard? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yStorableIntegrationDashboard[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yStorableIntegrationDashboard[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yStorableIntegrationDashboard(
        createdAt: mapDateTime(json, r'createdAt', r''),
        dashboardId: mapValueOfType<String>(json, r'dashboardId'),
        id: mapValueOfType<String>(json, r'id'),
        provider: mapValueOfType<Object>(json, r'provider'),
        slug: mapValueOfType<String>(json, r'slug'),
        updatedAt: mapDateTime(json, r'updatedAt', r''),
      );
    }
    return null;
  }

  static List<O11yStorableIntegrationDashboard> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yStorableIntegrationDashboard>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yStorableIntegrationDashboard.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yStorableIntegrationDashboard> mapFromJson(dynamic json) {
    final map = <String, O11yStorableIntegrationDashboard>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yStorableIntegrationDashboard.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yStorableIntegrationDashboard-objects as value to a dart map
  static Map<String, List<O11yStorableIntegrationDashboard>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yStorableIntegrationDashboard>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yStorableIntegrationDashboard.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

