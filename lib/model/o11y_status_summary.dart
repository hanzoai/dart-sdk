//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yStatusSummary {
  /// Returns a new [O11yStatusSummary] instance.
  O11yStatusSummary({
    this.checkedAt,
    this.inProgressMaintenances = const [],
    this.ongoingIncidents = const [],
    this.pageTitle,
    this.pageUrl,
    this.scheduledMaintenances = const [],
  });

  /// CheckedAt is when the underlying availability read was taken, RFC3339 UTC. Not part of the status-page schema the panel parses (which ignores unknown fields); it is here because a status document with no timestamp cannot be told apart from a stale one.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? checkedAt;

  List<O11yStatusMaintenance> inProgressMaintenances;

  List<O11yStatusIncident> ongoingIncidents;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? pageTitle;

  /// PageURL is the HUMAN status page — an HTML page for people, distinct from this JSON endpoint. Every link in this document points there.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? pageUrl;

  List<O11yStatusMaintenance> scheduledMaintenances;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yStatusSummary &&
    other.checkedAt == checkedAt &&
    _deepEquality.equals(other.inProgressMaintenances, inProgressMaintenances) &&
    _deepEquality.equals(other.ongoingIncidents, ongoingIncidents) &&
    other.pageTitle == pageTitle &&
    other.pageUrl == pageUrl &&
    _deepEquality.equals(other.scheduledMaintenances, scheduledMaintenances);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (checkedAt == null ? 0 : checkedAt!.hashCode) +
    (inProgressMaintenances.hashCode) +
    (ongoingIncidents.hashCode) +
    (pageTitle == null ? 0 : pageTitle!.hashCode) +
    (pageUrl == null ? 0 : pageUrl!.hashCode) +
    (scheduledMaintenances.hashCode);

  @override
  String toString() => 'O11yStatusSummary[checkedAt=$checkedAt, inProgressMaintenances=$inProgressMaintenances, ongoingIncidents=$ongoingIncidents, pageTitle=$pageTitle, pageUrl=$pageUrl, scheduledMaintenances=$scheduledMaintenances]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.checkedAt != null) {
      json[r'checked_at'] = this.checkedAt;
    } else {
      json[r'checked_at'] = null;
    }
      json[r'in_progress_maintenances'] = this.inProgressMaintenances;
      json[r'ongoing_incidents'] = this.ongoingIncidents;
    if (this.pageTitle != null) {
      json[r'page_title'] = this.pageTitle;
    } else {
      json[r'page_title'] = null;
    }
    if (this.pageUrl != null) {
      json[r'page_url'] = this.pageUrl;
    } else {
      json[r'page_url'] = null;
    }
      json[r'scheduled_maintenances'] = this.scheduledMaintenances;
    return json;
  }

  /// Returns a new [O11yStatusSummary] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yStatusSummary? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yStatusSummary[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yStatusSummary[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yStatusSummary(
        checkedAt: mapValueOfType<String>(json, r'checked_at'),
        inProgressMaintenances: O11yStatusMaintenance.listFromJson(json[r'in_progress_maintenances']),
        ongoingIncidents: O11yStatusIncident.listFromJson(json[r'ongoing_incidents']),
        pageTitle: mapValueOfType<String>(json, r'page_title'),
        pageUrl: mapValueOfType<String>(json, r'page_url'),
        scheduledMaintenances: O11yStatusMaintenance.listFromJson(json[r'scheduled_maintenances']),
      );
    }
    return null;
  }

  static List<O11yStatusSummary> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yStatusSummary>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yStatusSummary.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yStatusSummary> mapFromJson(dynamic json) {
    final map = <String, O11yStatusSummary>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yStatusSummary.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yStatusSummary-objects as value to a dart map
  static Map<String, List<O11yStatusSummary>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yStatusSummary>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yStatusSummary.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

