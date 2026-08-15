//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class HealthReport {
  /// Returns a new [HealthReport] instance.
  HealthReport({
    this.datastore,
    this.lenses,
    this.lost,
    this.plane,
    this.reason,
    this.service,
    this.status,
    this.warehouse,
  });

  /// Datastore reports whether the shared warehouse client has a live connection. It is load-bearing for the READ path: false is one of the two ways this answers 503.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? datastore;

  /// Lenses is per-lens table availability, probed only when connected — so it is absent from a degraded report, which has nothing to say about tables it could not reach.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  HealthLenses? lenses;

  /// Lost is the count of facts the sink irrecoverably dropped since boot (warehouse.go). It is reported on the DEGRADED report too, and deliberately: a warehouse that is unreachable is exactly when facts start failing their deliveries, so suppressing the number here would hide it precisely when it moves. ANY NON-ZERO VALUE IS AN ALARM — it counts data the door already answered 200 for.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Loss? lost;

  /// Plane reports the event plane — the bus and the stream every accepted event is published to BEFORE any of it reaches the warehouse. It is load-bearing for the WRITE path, and it is here because its absence was a real outage: this endpoint answered 200/ok on warehouse connectivity alone while every POST /v1/event 503'd on a stream that could not bind, so 100% ingest loss was invisible to monitoring. A probe that cannot see the write path cannot report the write path.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  HealthPlane? plane;

  /// Reason is the human-readable cause, present only on a degraded report.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? reason;

  /// Service names the subsystem answering, so a probe aggregating several health endpoints can attribute a degraded one.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? service;

  /// Status is ok or degraded. Degraded is the 503 and means EITHER load-bearing dependency is down — the warehouse this subsystem reads, or the event plane it writes. It is not moved by a missing lens table, which is honest-empty.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  /// Warehouse names the datastore database every lens reads.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? warehouse;

  @override
  bool operator ==(Object other) => identical(this, other) || other is HealthReport &&
    other.datastore == datastore &&
    other.lenses == lenses &&
    other.lost == lost &&
    other.plane == plane &&
    other.reason == reason &&
    other.service == service &&
    other.status == status &&
    other.warehouse == warehouse;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (datastore == null ? 0 : datastore!.hashCode) +
    (lenses == null ? 0 : lenses!.hashCode) +
    (lost == null ? 0 : lost!.hashCode) +
    (plane == null ? 0 : plane!.hashCode) +
    (reason == null ? 0 : reason!.hashCode) +
    (service == null ? 0 : service!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (warehouse == null ? 0 : warehouse!.hashCode);

  @override
  String toString() => 'HealthReport[datastore=$datastore, lenses=$lenses, lost=$lost, plane=$plane, reason=$reason, service=$service, status=$status, warehouse=$warehouse]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.datastore != null) {
      json[r'datastore'] = this.datastore;
    } else {
      json[r'datastore'] = null;
    }
    if (this.lenses != null) {
      json[r'lenses'] = this.lenses;
    } else {
      json[r'lenses'] = null;
    }
    if (this.lost != null) {
      json[r'lost'] = this.lost;
    } else {
      json[r'lost'] = null;
    }
    if (this.plane != null) {
      json[r'plane'] = this.plane;
    } else {
      json[r'plane'] = null;
    }
    if (this.reason != null) {
      json[r'reason'] = this.reason;
    } else {
      json[r'reason'] = null;
    }
    if (this.service != null) {
      json[r'service'] = this.service;
    } else {
      json[r'service'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.warehouse != null) {
      json[r'warehouse'] = this.warehouse;
    } else {
      json[r'warehouse'] = null;
    }
    return json;
  }

  /// Returns a new [HealthReport] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static HealthReport? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "HealthReport[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "HealthReport[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return HealthReport(
        datastore: mapValueOfType<bool>(json, r'datastore'),
        lenses: HealthLenses.fromJson(json[r'lenses']),
        lost: Loss.fromJson(json[r'lost']),
        plane: HealthPlane.fromJson(json[r'plane']),
        reason: mapValueOfType<String>(json, r'reason'),
        service: mapValueOfType<String>(json, r'service'),
        status: mapValueOfType<String>(json, r'status'),
        warehouse: mapValueOfType<String>(json, r'warehouse'),
      );
    }
    return null;
  }

  static List<HealthReport> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <HealthReport>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = HealthReport.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, HealthReport> mapFromJson(dynamic json) {
    final map = <String, HealthReport>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = HealthReport.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of HealthReport-objects as value to a dart map
  static Map<String, List<HealthReport>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<HealthReport>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = HealthReport.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

