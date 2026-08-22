//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ArgoStatus {
  /// Returns a new [ArgoStatus] instance.
  ArgoStatus({
    this.health,
    this.reconciledAt,
    this.resources = const [],
    this.summary,
    this.sync_,
  });
  /// Health is the application's reconciled health.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ArgoHealth? health;

  /// ReconciledAt is when the desired state was last compared against the cluster, RFC 3339. Empty for an App CR — the projection derives its verdict at read time and nothing records a comparison — and CD's own status.reconciledAt for a CD row.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? reconciledAt;

  /// Resources are the objects the application owns. EMPTY on the list — filling it would walk the cluster once per row — and populated only by the read of ONE application, which is what makes that the detail view.
  List<ArgoResourceStatus> resources;

  /// Summary is the small aggregate the list column renders: the images.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ArgoSummary? summary;

  /// Sync is the declared-versus-running verdict and what it was reached against.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ArgoSyncStatus? sync_;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ArgoStatus &&
    other.health == health &&
    other.reconciledAt == reconciledAt &&
    _deepEquality.equals(other.resources, resources) &&
    other.summary == summary &&
    other.sync_ == sync_;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (health == null ? 0 : health!.hashCode) +
    (reconciledAt == null ? 0 : reconciledAt!.hashCode) +
    (resources.hashCode) +
    (summary == null ? 0 : summary!.hashCode) +
    (sync_ == null ? 0 : sync_!.hashCode);

  @override
  String toString() => 'ArgoStatus[health=$health, reconciledAt=$reconciledAt, resources=$resources, summary=$summary, sync_=$sync_]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.health != null) {
      json[r'health'] = this.health;
    } else {
      json[r'health'] = null;
    }
    if (this.reconciledAt != null) {
      json[r'reconciledAt'] = this.reconciledAt;
    } else {
      json[r'reconciledAt'] = null;
    }
      json[r'resources'] = this.resources;
    if (this.summary != null) {
      json[r'summary'] = this.summary;
    } else {
      json[r'summary'] = null;
    }
    if (this.sync_ != null) {
      json[r'sync'] = this.sync_;
    } else {
      json[r'sync'] = null;
    }
    return json;
  }

  /// Returns a new [ArgoStatus] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ArgoStatus? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ArgoStatus[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ArgoStatus[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ArgoStatus(
        health: ArgoHealth.fromJson(json[r'health']),
        reconciledAt: mapValueOfType<String>(json, r'reconciledAt'),
        resources: ArgoResourceStatus.listFromJson(json[r'resources']),
        summary: ArgoSummary.fromJson(json[r'summary']),
        sync_: ArgoSyncStatus.fromJson(json[r'sync']),
      );
    }
    return null;
  }

  static List<ArgoStatus> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ArgoStatus>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ArgoStatus.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ArgoStatus> mapFromJson(dynamic json) {
    final map = <String, ArgoStatus>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ArgoStatus.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ArgoStatus-objects as value to a dart map
  static Map<String, List<ArgoStatus>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ArgoStatus>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ArgoStatus.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

