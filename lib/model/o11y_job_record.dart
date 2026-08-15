//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yJobRecord {
  /// Returns a new [O11yJobRecord] instance.
  O11yJobRecord({
    this.activePods,
    this.desiredSuccessfulPods,
    this.failedPods,
    this.jobCPU,
    this.jobCPULimit,
    this.jobCPURequest,
    this.jobMemory,
    this.jobMemoryLimit,
    this.jobMemoryRequest,
    this.jobName,
    this.meta = const {},
    this.podCountsByPhase,
    this.successfulPods,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? activePods;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? desiredSuccessfulPods;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? failedPods;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? jobCPU;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? jobCPULimit;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? jobCPURequest;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? jobMemory;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? jobMemoryLimit;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? jobMemoryRequest;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? jobName;

  Map<String, String> meta;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  O11yPodCountsByPhase? podCountsByPhase;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? successfulPods;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yJobRecord &&
    other.activePods == activePods &&
    other.desiredSuccessfulPods == desiredSuccessfulPods &&
    other.failedPods == failedPods &&
    other.jobCPU == jobCPU &&
    other.jobCPULimit == jobCPULimit &&
    other.jobCPURequest == jobCPURequest &&
    other.jobMemory == jobMemory &&
    other.jobMemoryLimit == jobMemoryLimit &&
    other.jobMemoryRequest == jobMemoryRequest &&
    other.jobName == jobName &&
    _deepEquality.equals(other.meta, meta) &&
    other.podCountsByPhase == podCountsByPhase &&
    other.successfulPods == successfulPods;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (activePods == null ? 0 : activePods!.hashCode) +
    (desiredSuccessfulPods == null ? 0 : desiredSuccessfulPods!.hashCode) +
    (failedPods == null ? 0 : failedPods!.hashCode) +
    (jobCPU == null ? 0 : jobCPU!.hashCode) +
    (jobCPULimit == null ? 0 : jobCPULimit!.hashCode) +
    (jobCPURequest == null ? 0 : jobCPURequest!.hashCode) +
    (jobMemory == null ? 0 : jobMemory!.hashCode) +
    (jobMemoryLimit == null ? 0 : jobMemoryLimit!.hashCode) +
    (jobMemoryRequest == null ? 0 : jobMemoryRequest!.hashCode) +
    (jobName == null ? 0 : jobName!.hashCode) +
    (meta.hashCode) +
    (podCountsByPhase == null ? 0 : podCountsByPhase!.hashCode) +
    (successfulPods == null ? 0 : successfulPods!.hashCode);

  @override
  String toString() => 'O11yJobRecord[activePods=$activePods, desiredSuccessfulPods=$desiredSuccessfulPods, failedPods=$failedPods, jobCPU=$jobCPU, jobCPULimit=$jobCPULimit, jobCPURequest=$jobCPURequest, jobMemory=$jobMemory, jobMemoryLimit=$jobMemoryLimit, jobMemoryRequest=$jobMemoryRequest, jobName=$jobName, meta=$meta, podCountsByPhase=$podCountsByPhase, successfulPods=$successfulPods]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.activePods != null) {
      json[r'activePods'] = this.activePods;
    } else {
      json[r'activePods'] = null;
    }
    if (this.desiredSuccessfulPods != null) {
      json[r'desiredSuccessfulPods'] = this.desiredSuccessfulPods;
    } else {
      json[r'desiredSuccessfulPods'] = null;
    }
    if (this.failedPods != null) {
      json[r'failedPods'] = this.failedPods;
    } else {
      json[r'failedPods'] = null;
    }
    if (this.jobCPU != null) {
      json[r'jobCPU'] = this.jobCPU;
    } else {
      json[r'jobCPU'] = null;
    }
    if (this.jobCPULimit != null) {
      json[r'jobCPULimit'] = this.jobCPULimit;
    } else {
      json[r'jobCPULimit'] = null;
    }
    if (this.jobCPURequest != null) {
      json[r'jobCPURequest'] = this.jobCPURequest;
    } else {
      json[r'jobCPURequest'] = null;
    }
    if (this.jobMemory != null) {
      json[r'jobMemory'] = this.jobMemory;
    } else {
      json[r'jobMemory'] = null;
    }
    if (this.jobMemoryLimit != null) {
      json[r'jobMemoryLimit'] = this.jobMemoryLimit;
    } else {
      json[r'jobMemoryLimit'] = null;
    }
    if (this.jobMemoryRequest != null) {
      json[r'jobMemoryRequest'] = this.jobMemoryRequest;
    } else {
      json[r'jobMemoryRequest'] = null;
    }
    if (this.jobName != null) {
      json[r'jobName'] = this.jobName;
    } else {
      json[r'jobName'] = null;
    }
      json[r'meta'] = this.meta;
    if (this.podCountsByPhase != null) {
      json[r'podCountsByPhase'] = this.podCountsByPhase;
    } else {
      json[r'podCountsByPhase'] = null;
    }
    if (this.successfulPods != null) {
      json[r'successfulPods'] = this.successfulPods;
    } else {
      json[r'successfulPods'] = null;
    }
    return json;
  }

  /// Returns a new [O11yJobRecord] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yJobRecord? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yJobRecord[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yJobRecord[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yJobRecord(
        activePods: mapValueOfType<int>(json, r'activePods'),
        desiredSuccessfulPods: mapValueOfType<int>(json, r'desiredSuccessfulPods'),
        failedPods: mapValueOfType<int>(json, r'failedPods'),
        jobCPU: num.parse('${json[r'jobCPU']}'),
        jobCPULimit: num.parse('${json[r'jobCPULimit']}'),
        jobCPURequest: num.parse('${json[r'jobCPURequest']}'),
        jobMemory: num.parse('${json[r'jobMemory']}'),
        jobMemoryLimit: num.parse('${json[r'jobMemoryLimit']}'),
        jobMemoryRequest: num.parse('${json[r'jobMemoryRequest']}'),
        jobName: mapValueOfType<String>(json, r'jobName'),
        meta: mapCastOfType<String, String>(json, r'meta') ?? const {},
        podCountsByPhase: O11yPodCountsByPhase.fromJson(json[r'podCountsByPhase']),
        successfulPods: mapValueOfType<int>(json, r'successfulPods'),
      );
    }
    return null;
  }

  static List<O11yJobRecord> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yJobRecord>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yJobRecord.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yJobRecord> mapFromJson(dynamic json) {
    final map = <String, O11yJobRecord>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yJobRecord.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yJobRecord-objects as value to a dart map
  static Map<String, List<O11yJobRecord>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yJobRecord>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yJobRecord.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

