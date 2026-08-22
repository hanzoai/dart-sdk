//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class UsageAnalyticsGrant {
  /// Returns a new [UsageAnalyticsGrant] instance.
  UsageAnalyticsGrant({
    this.datastore,
    this.export_,
    this.retentionDays,
  });
  /// Datastore is whether the plan may read GET /v1/usage/analytics at all. The free floor is false, and that is what a catalog outage resolves to.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? datastore;

  /// Export is whether the plan may export the analytics it can read.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? export_;

  /// RetentionDays is how far back the plan may read. GET /v1/usage/analytics clamps a custom window's start to this, so an older `start` returns the clamped window rather than an error.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? retentionDays;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UsageAnalyticsGrant &&
    other.datastore == datastore &&
    other.export_ == export_ &&
    other.retentionDays == retentionDays;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (datastore == null ? 0 : datastore!.hashCode) +
    (export_ == null ? 0 : export_!.hashCode) +
    (retentionDays == null ? 0 : retentionDays!.hashCode);

  @override
  String toString() => 'UsageAnalyticsGrant[datastore=$datastore, export_=$export_, retentionDays=$retentionDays]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.datastore != null) {
      json[r'datastore'] = this.datastore;
    } else {
      json[r'datastore'] = null;
    }
    if (this.export_ != null) {
      json[r'export'] = this.export_;
    } else {
      json[r'export'] = null;
    }
    if (this.retentionDays != null) {
      json[r'retentionDays'] = this.retentionDays;
    } else {
      json[r'retentionDays'] = null;
    }
    return json;
  }

  /// Returns a new [UsageAnalyticsGrant] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UsageAnalyticsGrant? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UsageAnalyticsGrant[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UsageAnalyticsGrant[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UsageAnalyticsGrant(
        datastore: mapValueOfType<bool>(json, r'datastore'),
        export_: mapValueOfType<bool>(json, r'export'),
        retentionDays: mapValueOfType<int>(json, r'retentionDays'),
      );
    }
    return null;
  }

  static List<UsageAnalyticsGrant> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UsageAnalyticsGrant>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UsageAnalyticsGrant.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UsageAnalyticsGrant> mapFromJson(dynamic json) {
    final map = <String, UsageAnalyticsGrant>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UsageAnalyticsGrant.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UsageAnalyticsGrant-objects as value to a dart map
  static Map<String, List<UsageAnalyticsGrant>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UsageAnalyticsGrant>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UsageAnalyticsGrant.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

