//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yDeploymentListRecord {
  /// Returns a new [O11yDeploymentListRecord] instance.
  O11yDeploymentListRecord({
    this.availablePods,
    this.cpuLimit,
    this.cpuRequest,
    this.cpuUsage,
    this.deploymentName,
    this.desiredPods,
    this.memoryLimit,
    this.memoryRequest,
    this.memoryUsage,
    this.meta = const {},
    this.restarts,
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
  String? deploymentName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? desiredPods;

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

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yDeploymentListRecord &&
    other.availablePods == availablePods &&
    other.cpuLimit == cpuLimit &&
    other.cpuRequest == cpuRequest &&
    other.cpuUsage == cpuUsage &&
    other.deploymentName == deploymentName &&
    other.desiredPods == desiredPods &&
    other.memoryLimit == memoryLimit &&
    other.memoryRequest == memoryRequest &&
    other.memoryUsage == memoryUsage &&
    _deepEquality.equals(other.meta, meta) &&
    other.restarts == restarts;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (availablePods == null ? 0 : availablePods!.hashCode) +
    (cpuLimit == null ? 0 : cpuLimit!.hashCode) +
    (cpuRequest == null ? 0 : cpuRequest!.hashCode) +
    (cpuUsage == null ? 0 : cpuUsage!.hashCode) +
    (deploymentName == null ? 0 : deploymentName!.hashCode) +
    (desiredPods == null ? 0 : desiredPods!.hashCode) +
    (memoryLimit == null ? 0 : memoryLimit!.hashCode) +
    (memoryRequest == null ? 0 : memoryRequest!.hashCode) +
    (memoryUsage == null ? 0 : memoryUsage!.hashCode) +
    (meta.hashCode) +
    (restarts == null ? 0 : restarts!.hashCode);

  @override
  String toString() => 'O11yDeploymentListRecord[availablePods=$availablePods, cpuLimit=$cpuLimit, cpuRequest=$cpuRequest, cpuUsage=$cpuUsage, deploymentName=$deploymentName, desiredPods=$desiredPods, memoryLimit=$memoryLimit, memoryRequest=$memoryRequest, memoryUsage=$memoryUsage, meta=$meta, restarts=$restarts]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.availablePods != null) {
      json[r'availablePods'] = this.availablePods;
    } else {
      json[r'availablePods'] = null;
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
    return json;
  }

  /// Returns a new [O11yDeploymentListRecord] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yDeploymentListRecord? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yDeploymentListRecord[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yDeploymentListRecord[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yDeploymentListRecord(
        availablePods: mapValueOfType<int>(json, r'availablePods'),
        cpuLimit: num.parse('${json[r'cpuLimit']}'),
        cpuRequest: num.parse('${json[r'cpuRequest']}'),
        cpuUsage: num.parse('${json[r'cpuUsage']}'),
        deploymentName: mapValueOfType<String>(json, r'deploymentName'),
        desiredPods: mapValueOfType<int>(json, r'desiredPods'),
        memoryLimit: num.parse('${json[r'memoryLimit']}'),
        memoryRequest: num.parse('${json[r'memoryRequest']}'),
        memoryUsage: num.parse('${json[r'memoryUsage']}'),
        meta: mapCastOfType<String, String>(json, r'meta') ?? const {},
        restarts: mapValueOfType<int>(json, r'restarts'),
      );
    }
    return null;
  }

  static List<O11yDeploymentListRecord> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yDeploymentListRecord>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yDeploymentListRecord.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yDeploymentListRecord> mapFromJson(dynamic json) {
    final map = <String, O11yDeploymentListRecord>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yDeploymentListRecord.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yDeploymentListRecord-objects as value to a dart map
  static Map<String, List<O11yDeploymentListRecord>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yDeploymentListRecord>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yDeploymentListRecord.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

