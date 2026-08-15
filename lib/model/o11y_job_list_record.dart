//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yJobListRecord {
  /// Returns a new [O11yJobListRecord] instance.
  O11yJobListRecord({
    this.activePods,
    this.cpuLimit,
    this.cpuRequest,
    this.cpuUsage,
    this.desiredSuccessfulPods,
    this.failedPods,
    this.jobName,
    this.memoryLimit,
    this.memoryRequest,
    this.memoryUsage,
    this.meta = const {},
    this.restarts,
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
  num? cpuLimit;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? cpuRequest;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? cpuUsage;

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
  String? jobName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? memoryLimit;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? memoryRequest;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? memoryUsage;

  Map<String, String> meta;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? restarts;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? successfulPods;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yJobListRecord &&
    other.activePods == activePods &&
    other.cpuLimit == cpuLimit &&
    other.cpuRequest == cpuRequest &&
    other.cpuUsage == cpuUsage &&
    other.desiredSuccessfulPods == desiredSuccessfulPods &&
    other.failedPods == failedPods &&
    other.jobName == jobName &&
    other.memoryLimit == memoryLimit &&
    other.memoryRequest == memoryRequest &&
    other.memoryUsage == memoryUsage &&
    _deepEquality.equals(other.meta, meta) &&
    other.restarts == restarts &&
    other.successfulPods == successfulPods;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (activePods == null ? 0 : activePods!.hashCode) +
    (cpuLimit == null ? 0 : cpuLimit!.hashCode) +
    (cpuRequest == null ? 0 : cpuRequest!.hashCode) +
    (cpuUsage == null ? 0 : cpuUsage!.hashCode) +
    (desiredSuccessfulPods == null ? 0 : desiredSuccessfulPods!.hashCode) +
    (failedPods == null ? 0 : failedPods!.hashCode) +
    (jobName == null ? 0 : jobName!.hashCode) +
    (memoryLimit == null ? 0 : memoryLimit!.hashCode) +
    (memoryRequest == null ? 0 : memoryRequest!.hashCode) +
    (memoryUsage == null ? 0 : memoryUsage!.hashCode) +
    (meta.hashCode) +
    (restarts == null ? 0 : restarts!.hashCode) +
    (successfulPods == null ? 0 : successfulPods!.hashCode);

  @override
  String toString() => 'O11yJobListRecord[activePods=$activePods, cpuLimit=$cpuLimit, cpuRequest=$cpuRequest, cpuUsage=$cpuUsage, desiredSuccessfulPods=$desiredSuccessfulPods, failedPods=$failedPods, jobName=$jobName, memoryLimit=$memoryLimit, memoryRequest=$memoryRequest, memoryUsage=$memoryUsage, meta=$meta, restarts=$restarts, successfulPods=$successfulPods]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.activePods != null) {
      json[r'activePods'] = this.activePods;
    } else {
      json[r'activePods'] = null;
    }
    if (this.cpuLimit != null) {
      json[r'cpuLimit'] = this.cpuLimit;
    } else {
      json[r'cpuLimit'] = null;
    }
    if (this.cpuRequest != null) {
      json[r'cpuRequest'] = this.cpuRequest;
    } else {
      json[r'cpuRequest'] = null;
    }
    if (this.cpuUsage != null) {
      json[r'cpuUsage'] = this.cpuUsage;
    } else {
      json[r'cpuUsage'] = null;
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
    if (this.jobName != null) {
      json[r'jobName'] = this.jobName;
    } else {
      json[r'jobName'] = null;
    }
    if (this.memoryLimit != null) {
      json[r'memoryLimit'] = this.memoryLimit;
    } else {
      json[r'memoryLimit'] = null;
    }
    if (this.memoryRequest != null) {
      json[r'memoryRequest'] = this.memoryRequest;
    } else {
      json[r'memoryRequest'] = null;
    }
    if (this.memoryUsage != null) {
      json[r'memoryUsage'] = this.memoryUsage;
    } else {
      json[r'memoryUsage'] = null;
    }
      json[r'meta'] = this.meta;
    if (this.restarts != null) {
      json[r'restarts'] = this.restarts;
    } else {
      json[r'restarts'] = null;
    }
    if (this.successfulPods != null) {
      json[r'successfulPods'] = this.successfulPods;
    } else {
      json[r'successfulPods'] = null;
    }
    return json;
  }

  /// Returns a new [O11yJobListRecord] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yJobListRecord? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yJobListRecord[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yJobListRecord[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yJobListRecord(
        activePods: mapValueOfType<int>(json, r'activePods'),
        cpuLimit: num.parse('${json[r'cpuLimit']}'),
        cpuRequest: num.parse('${json[r'cpuRequest']}'),
        cpuUsage: num.parse('${json[r'cpuUsage']}'),
        desiredSuccessfulPods: mapValueOfType<int>(json, r'desiredSuccessfulPods'),
        failedPods: mapValueOfType<int>(json, r'failedPods'),
        jobName: mapValueOfType<String>(json, r'jobName'),
        memoryLimit: num.parse('${json[r'memoryLimit']}'),
        memoryRequest: num.parse('${json[r'memoryRequest']}'),
        memoryUsage: num.parse('${json[r'memoryUsage']}'),
        meta: mapCastOfType<String, String>(json, r'meta') ?? const {},
        restarts: mapValueOfType<int>(json, r'restarts'),
        successfulPods: mapValueOfType<int>(json, r'successfulPods'),
      );
    }
    return null;
  }

  static List<O11yJobListRecord> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yJobListRecord>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yJobListRecord.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yJobListRecord> mapFromJson(dynamic json) {
    final map = <String, O11yJobListRecord>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yJobListRecord.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yJobListRecord-objects as value to a dart map
  static Map<String, List<O11yJobListRecord>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yJobListRecord>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yJobListRecord.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

