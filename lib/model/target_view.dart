//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class TargetView {
  /// Returns a new [TargetView] instance.
  TargetView({
    this.capacity,
    this.createdAt,
    this.host,
    this.id,
    this.kind,
    this.label,
    this.metrics,
    this.metricsAt,
    this.running,
    this.sessions,
    this.spec,
    this.status,
    this.updatedAt,
  });
  /// Capacity is a human summary of what the machine has (\"8 vCPU / 32G\", \"1× GB10\"), up to 256 characters. Prose for a card — Spec is the same thing in a form a scheduler can read, and nothing derives one from the other.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? capacity;

  /// CreatedAt is when the machine was first registered, RFC 3339 in UTC. A re-link refreshes the row and leaves this alone, so it dates the machine and not the connection.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? createdAt;

  /// Host is the hostname sessions on this machine report, and it is a JOIN KEY, not a label: a session naming this host counts against the load below even when it names no target id, and a re-link of the same (org, host, owner) refreshes this row instead of creating a second. Empty means the machine is addressable only by ID.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? host;

  /// ID is the machine's handle, minted as \"tgt_\" + 32 hex characters. It is what a session records to say it ran here, and what every later patch, claim or delete addresses.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// Kind is what sort of destination this is, from a closed five: laptop | cloud | gpu | cluster | machine. A register that named none is a `machine`.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? kind;

  /// Label is the name a person gave the machine (\"workshop\"), up to 128 characters. Required at register, free text, and the only field here meant for reading rather than matching.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? label;

  /// Metrics is what the machine was DOING at its last heartbeat — loadavg, memory, accelerator utilization. Absent when it has never beaten. It is a SNAPSHOT: the series over time lives in the fleet samples, not here.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Metrics? metrics;

  /// MetricsAt is when that heartbeat was recorded, RFC 3339 in UTC, and the SERVER stamps it — a client cannot backdate or forge the staleness clock. Absent means never beaten, which is exactly the case where Status is taken at its word.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? metricsAt;

  /// Running is how many of those are in `running` right now — the number a dispatcher weighs against Capacity. paused sessions are in Sessions and not here.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? running;

  /// Sessions is how many of the org's sessions are mapped to this machine, by target id OR by matching Host. All of them, whatever their status.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? sessions;

  /// Spec is what the machine IS — os, arch, cores, RAM, accelerators — the static half, changed only when something reports it again. Absent when nothing has ever been reported, and a scheduler reads absence as \"cannot satisfy a floor\" rather than as \"no limits\".
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Spec? spec;

  /// Status is the EFFECTIVE liveness — online | offline | draining — not the stored one. offline and draining are operator INTENT and are reported as they stand; `online` is checked against the heartbeat, and a machine that has beaten before but not in the last 90 seconds reports offline whatever its row says. A target that has NEVER beaten keeps its stored status, because a hand-registered destination has no fact to check.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  /// UpdatedAt is the last write to the row, same format — which for a beating machine is its last heartbeat, since a heartbeat IS a write.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TargetView &&
    other.capacity == capacity &&
    other.createdAt == createdAt &&
    other.host == host &&
    other.id == id &&
    other.kind == kind &&
    other.label == label &&
    other.metrics == metrics &&
    other.metricsAt == metricsAt &&
    other.running == running &&
    other.sessions == sessions &&
    other.spec == spec &&
    other.status == status &&
    other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (capacity == null ? 0 : capacity!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (host == null ? 0 : host!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (kind == null ? 0 : kind!.hashCode) +
    (label == null ? 0 : label!.hashCode) +
    (metrics == null ? 0 : metrics!.hashCode) +
    (metricsAt == null ? 0 : metricsAt!.hashCode) +
    (running == null ? 0 : running!.hashCode) +
    (sessions == null ? 0 : sessions!.hashCode) +
    (spec == null ? 0 : spec!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode);

  @override
  String toString() => 'TargetView[capacity=$capacity, createdAt=$createdAt, host=$host, id=$id, kind=$kind, label=$label, metrics=$metrics, metricsAt=$metricsAt, running=$running, sessions=$sessions, spec=$spec, status=$status, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.capacity != null) {
      json[r'capacity'] = this.capacity;
    } else {
      json[r'capacity'] = null;
    }
    if (this.createdAt != null) {
      json[r'createdAt'] = this.createdAt;
    } else {
      json[r'createdAt'] = null;
    }
    if (this.host != null) {
      json[r'host'] = this.host;
    } else {
      json[r'host'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
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
    if (this.metricsAt != null) {
      json[r'metricsAt'] = this.metricsAt;
    } else {
      json[r'metricsAt'] = null;
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
    if (this.updatedAt != null) {
      json[r'updatedAt'] = this.updatedAt;
    } else {
      json[r'updatedAt'] = null;
    }
    return json;
  }

  /// Returns a new [TargetView] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TargetView? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TargetView[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TargetView[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TargetView(
        capacity: mapValueOfType<String>(json, r'capacity'),
        createdAt: mapValueOfType<String>(json, r'createdAt'),
        host: mapValueOfType<String>(json, r'host'),
        id: mapValueOfType<String>(json, r'id'),
        kind: mapValueOfType<String>(json, r'kind'),
        label: mapValueOfType<String>(json, r'label'),
        metrics: Metrics.fromJson(json[r'metrics']),
        metricsAt: mapValueOfType<String>(json, r'metricsAt'),
        running: mapValueOfType<int>(json, r'running'),
        sessions: mapValueOfType<int>(json, r'sessions'),
        spec: Spec.fromJson(json[r'spec']),
        status: mapValueOfType<String>(json, r'status'),
        updatedAt: mapValueOfType<String>(json, r'updatedAt'),
      );
    }
    return null;
  }

  static List<TargetView> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TargetView>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TargetView.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TargetView> mapFromJson(dynamic json) {
    final map = <String, TargetView>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TargetView.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TargetView-objects as value to a dart map
  static Map<String, List<TargetView>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TargetView>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TargetView.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

