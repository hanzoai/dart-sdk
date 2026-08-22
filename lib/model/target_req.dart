//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class TargetReq {
  /// Returns a new [TargetReq] instance.
  TargetReq({
    this.capacity,
    this.host,
    this.kind,
    this.label,
    this.metrics,
    this.spec,
    this.status,
  });
  /// Capacity is a human summary of the machine's size, up to 256 characters. Prose only; a scheduler reads Spec.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? capacity;

  /// Host is the hostname sessions on this machine will report. It is what makes a re-link IDEMPOTENT: the same (org, host, owner) refreshes the existing row and answers 200, while a request with no host always creates a new target and answers 201. It never adopts a row owned by somebody else.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? host;

  /// Kind is laptop | cloud | gpu | cluster | machine. Empty registers a `machine`; anything outside the five is a 400.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? kind;

  /// Label is the name to show for this machine, up to 128 characters. REQUIRED — it is the only field here a person reads.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? label;

  /// Metrics is a live sample, and sending one IS A HEARTBEAT: it refreshes the row and starts the 90-second liveness window, and it is appended to the fleet series as one point. Its own `at` is ignored — the server stamps the time, so a client can never age or backdate its own machine. Omit it to register a machine without claiming it is alive.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Metrics? metrics;

  /// Spec is the machine's static capability — os, arch, cores, RAM, accelerators. Every field is bounded on write and at most 32 accelerators are accepted, so what comes back may be clamped. Omit it for a destination nothing probes.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Spec? spec;

  /// Status is online | offline | draining. Empty registers `online`. It states INTENT — a heartbeat is what decides whether an online machine is actually reachable, so declaring online does not make it so.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TargetReq &&
    other.capacity == capacity &&
    other.host == host &&
    other.kind == kind &&
    other.label == label &&
    other.metrics == metrics &&
    other.spec == spec &&
    other.status == status;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (capacity == null ? 0 : capacity!.hashCode) +
    (host == null ? 0 : host!.hashCode) +
    (kind == null ? 0 : kind!.hashCode) +
    (label == null ? 0 : label!.hashCode) +
    (metrics == null ? 0 : metrics!.hashCode) +
    (spec == null ? 0 : spec!.hashCode) +
    (status == null ? 0 : status!.hashCode);

  @override
  String toString() => 'TargetReq[capacity=$capacity, host=$host, kind=$kind, label=$label, metrics=$metrics, spec=$spec, status=$status]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.capacity != null) {
      json[r'capacity'] = this.capacity;
    } else {
      json[r'capacity'] = null;
    }
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
    return json;
  }

  /// Returns a new [TargetReq] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TargetReq? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TargetReq[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TargetReq[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TargetReq(
        capacity: mapValueOfType<String>(json, r'capacity'),
        host: mapValueOfType<String>(json, r'host'),
        kind: mapValueOfType<String>(json, r'kind'),
        label: mapValueOfType<String>(json, r'label'),
        metrics: Metrics.fromJson(json[r'metrics']),
        spec: Spec.fromJson(json[r'spec']),
        status: mapValueOfType<String>(json, r'status'),
      );
    }
    return null;
  }

  static List<TargetReq> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TargetReq>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TargetReq.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TargetReq> mapFromJson(dynamic json) {
    final map = <String, TargetReq>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TargetReq.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TargetReq-objects as value to a dart map
  static Map<String, List<TargetReq>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TargetReq>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TargetReq.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

