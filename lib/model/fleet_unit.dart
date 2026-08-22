//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class FleetUnit {
  /// Returns a new [FleetUnit] instance.
  FleetUnit({
    this.host,
    this.kind,
    this.label,
    this.metrics,
    this.queued,
    this.running,
    this.sessions,
    this.source_,
    this.spec,
    this.status,
    this.unit,
  });
  /// Host is the unit's hostname. Empty for a unit that is not one host: a cluster row has no hostname to report.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? host;

  /// Kind is what the unit IS: laptop, cloud, gpu, cluster, machine or worker.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? kind;

  /// Label is the name to show a human — a target's label, a worker's hostname, a machine's display name. Empty when the source has none to give.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? label;

  /// Metrics is the unit's latest utilization: its own live snapshot when it keeps one (a run-target's heartbeat wins), else the newest sample from the series for the SAME source. Absent means nothing is known about this unit's load — which is deliberately not the same as a reading of zero.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  FleetMetrics? metrics;

  /// Queued is how many renders are waiting on THIS GPU's own lane in the org's gpu-jobs queue. BYO units only — an agent run-target dispatches, it does not queue — and omitted when nothing is waiting.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? queued;

  /// Running is what the unit is executing right now: agent sessions in flight for a run-target, claimed renders for a BYO GPU.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? running;

  /// Sessions is how many agent sessions are open on this unit. Always present, and 0 for a source that cannot host agent sessions at all — a fact about that plane, not a gap in the reading.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? sessions;

  /// Source is the plane this row came from: \"agent\" (a linked run-target), \"byo\" (a worker or cluster the org dialed in) or \"visor\" (a machine Hanzo provisioned). It is half the row's identity, and it says which face owns the unit — /v1/agents/targets, /v1/visor/fleet/workers, /v1/visor/machines.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? source_;

  /// Spec is the unit's static capability. Absent when the source reported none — unknown capability, never a zeroed one.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  FleetSpec? spec;

  /// Status is liveness in the SOURCE's own vocabulary, because each plane decides it differently: a run-target's is derived from its heartbeat, a BYO worker's is online/offline on the 90s window, a BYO cluster's is \"attached\", and a Visor machine's is the provider's word for its lifecycle state.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  /// Unit is the SOURCE's own id for this unit — a run-target id, a BYO worker id, a Visor machine name — so a row links straight back to the face that owns it. It is unique within a source, not across them: two planes may mint the same id, which is why (source, unit) together is the identity.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? unit;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FleetUnit &&
    other.host == host &&
    other.kind == kind &&
    other.label == label &&
    other.metrics == metrics &&
    other.queued == queued &&
    other.running == running &&
    other.sessions == sessions &&
    other.source_ == source_ &&
    other.spec == spec &&
    other.status == status &&
    other.unit == unit;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (host == null ? 0 : host!.hashCode) +
    (kind == null ? 0 : kind!.hashCode) +
    (label == null ? 0 : label!.hashCode) +
    (metrics == null ? 0 : metrics!.hashCode) +
    (queued == null ? 0 : queued!.hashCode) +
    (running == null ? 0 : running!.hashCode) +
    (sessions == null ? 0 : sessions!.hashCode) +
    (source_ == null ? 0 : source_!.hashCode) +
    (spec == null ? 0 : spec!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (unit == null ? 0 : unit!.hashCode);

  @override
  String toString() => 'FleetUnit[host=$host, kind=$kind, label=$label, metrics=$metrics, queued=$queued, running=$running, sessions=$sessions, source_=$source_, spec=$spec, status=$status, unit=$unit]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.host != null) {
      json[r'host'] = this.host;
    } else {
      json[r'host'] = null;
    }
    if (this.kind != null) {
      json[r'kind'] = this.kind;
    } else {
      json[r'kind'] = null;
    }
    if (this.label != null) {
      json[r'label'] = this.label;
    } else {
      json[r'label'] = null;
    }
    if (this.metrics != null) {
      json[r'metrics'] = this.metrics;
    } else {
      json[r'metrics'] = null;
    }
    if (this.queued != null) {
      json[r'queued'] = this.queued;
    } else {
      json[r'queued'] = null;
    }
    if (this.running != null) {
      json[r'running'] = this.running;
    } else {
      json[r'running'] = null;
    }
    if (this.sessions != null) {
      json[r'sessions'] = this.sessions;
    } else {
      json[r'sessions'] = null;
    }
    if (this.source_ != null) {
      json[r'source'] = this.source_;
    } else {
      json[r'source'] = null;
    }
    if (this.spec != null) {
      json[r'spec'] = this.spec;
    } else {
      json[r'spec'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.unit != null) {
      json[r'unit'] = this.unit;
    } else {
      json[r'unit'] = null;
    }
    return json;
  }

  /// Returns a new [FleetUnit] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static FleetUnit? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "FleetUnit[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "FleetUnit[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return FleetUnit(
        host: mapValueOfType<String>(json, r'host'),
        kind: mapValueOfType<String>(json, r'kind'),
        label: mapValueOfType<String>(json, r'label'),
        metrics: FleetMetrics.fromJson(json[r'metrics']),
        queued: mapValueOfType<int>(json, r'queued'),
        running: mapValueOfType<int>(json, r'running'),
        sessions: mapValueOfType<int>(json, r'sessions'),
        source_: mapValueOfType<String>(json, r'source'),
        spec: FleetSpec.fromJson(json[r'spec']),
        status: mapValueOfType<String>(json, r'status'),
        unit: mapValueOfType<String>(json, r'unit'),
      );
    }
    return null;
  }

  static List<FleetUnit> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <FleetUnit>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FleetUnit.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, FleetUnit> mapFromJson(dynamic json) {
    final map = <String, FleetUnit>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = FleetUnit.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of FleetUnit-objects as value to a dart map
  static Map<String, List<FleetUnit>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<FleetUnit>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = FleetUnit.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

