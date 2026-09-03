//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yDeploymentRecord {
  /// Returns a new [O11yDeploymentRecord] instance.
  O11yDeploymentRecord({
    this.availablePods,
    this.deploymentCPU,
    this.deploymentCPULimit,
    this.deploymentCPURequest,
    this.deploymentMemory,
    this.deploymentMemoryLimit,
    this.deploymentMemoryRequest,
    this.deploymentName,
    this.desiredPods,
    this.meta = const {},
    this.podCountsByPhase,
  });
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? availablePods;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? deploymentCPU;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? deploymentCPULimit;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? deploymentCPURequest;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? deploymentMemory;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? deploymentMemoryLimit;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? deploymentMemoryRequest;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? deploymentName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? desiredPods;

  Map<String, String> meta;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  O11yPodCountsByPhase? podCountsByPhase;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yDeploymentRecord &&
    other.availablePods == availablePods &&
    other.deploymentCPU == deploymentCPU &&
    other.deploymentCPULimit == deploymentCPULimit &&
    other.deploymentCPURequest == deploymentCPURequest &&
    other.deploymentMemory == deploymentMemory &&
    other.deploymentMemoryLimit == deploymentMemoryLimit &&
    other.deploymentMemoryRequest == deploymentMemoryRequest &&
    other.deploymentName == deploymentName &&
    other.desiredPods == desiredPods &&
    _deepEquality.equals(other.meta, meta) &&
    other.podCountsByPhase == podCountsByPhase;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (availablePods == null ? 0 : availablePods!.hashCode) +
    (deploymentCPU == null ? 0 : deploymentCPU!.hashCode) +
    (deploymentCPULimit == null ? 0 : deploymentCPULimit!.hashCode) +
    (deploymentCPURequest == null ? 0 : deploymentCPURequest!.hashCode) +
    (deploymentMemory == null ? 0 : deploymentMemory!.hashCode) +
    (deploymentMemoryLimit == null ? 0 : deploymentMemoryLimit!.hashCode) +
    (deploymentMemoryRequest == null ? 0 : deploymentMemoryRequest!.hashCode) +
    (deploymentName == null ? 0 : deploymentName!.hashCode) +
    (desiredPods == null ? 0 : desiredPods!.hashCode) +
    (meta.hashCode) +
    (podCountsByPhase == null ? 0 : podCountsByPhase!.hashCode);

  @override
  String toString() => 'O11yDeploymentRecord[availablePods=$availablePods, deploymentCPU=$deploymentCPU, deploymentCPULimit=$deploymentCPULimit, deploymentCPURequest=$deploymentCPURequest, deploymentMemory=$deploymentMemory, deploymentMemoryLimit=$deploymentMemoryLimit, deploymentMemoryRequest=$deploymentMemoryRequest, deploymentName=$deploymentName, desiredPods=$desiredPods, meta=$meta, podCountsByPhase=$podCountsByPhase]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.availablePods != null) {
      json[r'availablePods'] = this.availablePods;
    } else {
      json[r'availablePods'] = null;
    }
    if (this.deploymentCPU != null) {
      json[r'deploymentCPU'] = this.deploymentCPU;
    } else {
      json[r'deploymentCPU'] = null;
    }
    if (this.deploymentCPULimit != null) {
      json[r'deploymentCPULimit'] = this.deploymentCPULimit;
    } else {
      json[r'deploymentCPULimit'] = null;
    }
    if (this.deploymentCPURequest != null) {
      json[r'deploymentCPURequest'] = this.deploymentCPURequest;
    } else {
      json[r'deploymentCPURequest'] = null;
    }
    if (this.deploymentMemory != null) {
      json[r'deploymentMemory'] = this.deploymentMemory;
    } else {
      json[r'deploymentMemory'] = null;
    }
    if (this.deploymentMemoryLimit != null) {
      json[r'deploymentMemoryLimit'] = this.deploymentMemoryLimit;
    } else {
      json[r'deploymentMemoryLimit'] = null;
    }
    if (this.deploymentMemoryRequest != null) {
      json[r'deploymentMemoryRequest'] = this.deploymentMemoryRequest;
    } else {
      json[r'deploymentMemoryRequest'] = null;
    }
    if (this.deploymentName != null) {
      json[r'deploymentName'] = this.deploymentName;
    } else {
      json[r'deploymentName'] = null;
    }
    if (this.desiredPods != null) {
      json[r'desiredPods'] = this.desiredPods;
    } else {
      json[r'desiredPods'] = null;
    }
      json[r'meta'] = this.meta;
    if (this.podCountsByPhase != null) {
      json[r'podCountsByPhase'] = this.podCountsByPhase;
    } else {
      json[r'podCountsByPhase'] = null;
    }
    return json;
  }

  /// Returns a new [O11yDeploymentRecord] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yDeploymentRecord? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yDeploymentRecord[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yDeploymentRecord[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yDeploymentRecord(
        availablePods: mapValueOfType<int>(json, r'availablePods'),
        deploymentCPU: mapValueOfType<double>(json, r'deploymentCPU'),
        deploymentCPULimit: mapValueOfType<double>(json, r'deploymentCPULimit'),
        deploymentCPURequest: mapValueOfType<double>(json, r'deploymentCPURequest'),
        deploymentMemory: mapValueOfType<double>(json, r'deploymentMemory'),
        deploymentMemoryLimit: mapValueOfType<double>(json, r'deploymentMemoryLimit'),
        deploymentMemoryRequest: mapValueOfType<double>(json, r'deploymentMemoryRequest'),
        deploymentName: mapValueOfType<String>(json, r'deploymentName'),
        desiredPods: mapValueOfType<int>(json, r'desiredPods'),
        meta: mapCastOfType<String, String>(json, r'meta') ?? const {},
        podCountsByPhase: O11yPodCountsByPhase.fromJson(json[r'podCountsByPhase']),
      );
    }
    return null;
  }

  static List<O11yDeploymentRecord> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yDeploymentRecord>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yDeploymentRecord.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yDeploymentRecord> mapFromJson(dynamic json) {
    final map = <String, O11yDeploymentRecord>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yDeploymentRecord.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yDeploymentRecord-objects as value to a dart map
  static Map<String, List<O11yDeploymentRecord>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yDeploymentRecord>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yDeploymentRecord.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

