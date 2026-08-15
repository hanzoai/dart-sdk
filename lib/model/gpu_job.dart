//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class GpuJob {
  /// Returns a new [GpuJob] instance.
  GpuJob({
    this.attempt,
    this.closeTime,
    this.failureCause,
    this.gpu,
    this.id,
    this.label,
    this.lastHeartbeat,
    this.leaseExpiry,
    this.runId,
    this.startTime,
    this.status,
    this.type,
    this.worker,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? attempt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? closeTime;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? failureCause;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? gpu;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? label;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? lastHeartbeat;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? leaseExpiry;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? runId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? startTime;

  /// queued|running|completed|failed|canceled
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? type;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? worker;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GpuJob &&
    other.attempt == attempt &&
    other.closeTime == closeTime &&
    other.failureCause == failureCause &&
    other.gpu == gpu &&
    other.id == id &&
    other.label == label &&
    other.lastHeartbeat == lastHeartbeat &&
    other.leaseExpiry == leaseExpiry &&
    other.runId == runId &&
    other.startTime == startTime &&
    other.status == status &&
    other.type == type &&
    other.worker == worker;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (attempt == null ? 0 : attempt!.hashCode) +
    (closeTime == null ? 0 : closeTime!.hashCode) +
    (failureCause == null ? 0 : failureCause!.hashCode) +
    (gpu == null ? 0 : gpu!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (label == null ? 0 : label!.hashCode) +
    (lastHeartbeat == null ? 0 : lastHeartbeat!.hashCode) +
    (leaseExpiry == null ? 0 : leaseExpiry!.hashCode) +
    (runId == null ? 0 : runId!.hashCode) +
    (startTime == null ? 0 : startTime!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (type == null ? 0 : type!.hashCode) +
    (worker == null ? 0 : worker!.hashCode);

  @override
  String toString() => 'GpuJob[attempt=$attempt, closeTime=$closeTime, failureCause=$failureCause, gpu=$gpu, id=$id, label=$label, lastHeartbeat=$lastHeartbeat, leaseExpiry=$leaseExpiry, runId=$runId, startTime=$startTime, status=$status, type=$type, worker=$worker]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.attempt != null) {
      json[r'attempt'] = this.attempt;
    } else {
      json[r'attempt'] = null;
    }
    if (this.closeTime != null) {
      json[r'closeTime'] = this.closeTime;
    } else {
      json[r'closeTime'] = null;
    }
    if (this.failureCause != null) {
      json[r'failureCause'] = this.failureCause;
    } else {
      json[r'failureCause'] = null;
    }
    if (this.gpu != null) {
      json[r'gpu'] = this.gpu;
    } else {
      json[r'gpu'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.label != null) {
      json[r'label'] = this.label;
    } else {
      json[r'label'] = null;
    }
    if (this.lastHeartbeat != null) {
      json[r'lastHeartbeat'] = this.lastHeartbeat;
    } else {
      json[r'lastHeartbeat'] = null;
    }
    if (this.leaseExpiry != null) {
      json[r'leaseExpiry'] = this.leaseExpiry;
    } else {
      json[r'leaseExpiry'] = null;
    }
    if (this.runId != null) {
      json[r'runId'] = this.runId;
    } else {
      json[r'runId'] = null;
    }
    if (this.startTime != null) {
      json[r'startTime'] = this.startTime;
    } else {
      json[r'startTime'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
    if (this.worker != null) {
      json[r'worker'] = this.worker;
    } else {
      json[r'worker'] = null;
    }
    return json;
  }

  /// Returns a new [GpuJob] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GpuJob? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GpuJob[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GpuJob[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GpuJob(
        attempt: mapValueOfType<int>(json, r'attempt'),
        closeTime: mapValueOfType<String>(json, r'closeTime'),
        failureCause: mapValueOfType<String>(json, r'failureCause'),
        gpu: mapValueOfType<String>(json, r'gpu'),
        id: mapValueOfType<String>(json, r'id'),
        label: mapValueOfType<String>(json, r'label'),
        lastHeartbeat: mapValueOfType<String>(json, r'lastHeartbeat'),
        leaseExpiry: mapValueOfType<String>(json, r'leaseExpiry'),
        runId: mapValueOfType<String>(json, r'runId'),
        startTime: mapValueOfType<String>(json, r'startTime'),
        status: mapValueOfType<String>(json, r'status'),
        type: mapValueOfType<String>(json, r'type'),
        worker: mapValueOfType<String>(json, r'worker'),
      );
    }
    return null;
  }

  static List<GpuJob> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GpuJob>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GpuJob.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GpuJob> mapFromJson(dynamic json) {
    final map = <String, GpuJob>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GpuJob.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GpuJob-objects as value to a dart map
  static Map<String, List<GpuJob>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GpuJob>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GpuJob.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

