//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yDaemonSetRecord {
  /// Returns a new [O11yDaemonSetRecord] instance.
  O11yDaemonSetRecord({
    this.currentNodes,
    this.daemonSetCPU,
    this.daemonSetCPULimit,
    this.daemonSetCPURequest,
    this.daemonSetMemory,
    this.daemonSetMemoryLimit,
    this.daemonSetMemoryRequest,
    this.daemonSetName,
    this.desiredNodes,
    this.meta = const {},
    this.podCountsByPhase,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? currentNodes;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? daemonSetCPU;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? daemonSetCPULimit;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? daemonSetCPURequest;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? daemonSetMemory;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? daemonSetMemoryLimit;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? daemonSetMemoryRequest;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? daemonSetName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? desiredNodes;

  Map<String, String> meta;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  O11yPodCountsByPhase? podCountsByPhase;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yDaemonSetRecord &&
    other.currentNodes == currentNodes &&
    other.daemonSetCPU == daemonSetCPU &&
    other.daemonSetCPULimit == daemonSetCPULimit &&
    other.daemonSetCPURequest == daemonSetCPURequest &&
    other.daemonSetMemory == daemonSetMemory &&
    other.daemonSetMemoryLimit == daemonSetMemoryLimit &&
    other.daemonSetMemoryRequest == daemonSetMemoryRequest &&
    other.daemonSetName == daemonSetName &&
    other.desiredNodes == desiredNodes &&
    _deepEquality.equals(other.meta, meta) &&
    other.podCountsByPhase == podCountsByPhase;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (currentNodes == null ? 0 : currentNodes!.hashCode) +
    (daemonSetCPU == null ? 0 : daemonSetCPU!.hashCode) +
    (daemonSetCPULimit == null ? 0 : daemonSetCPULimit!.hashCode) +
    (daemonSetCPURequest == null ? 0 : daemonSetCPURequest!.hashCode) +
    (daemonSetMemory == null ? 0 : daemonSetMemory!.hashCode) +
    (daemonSetMemoryLimit == null ? 0 : daemonSetMemoryLimit!.hashCode) +
    (daemonSetMemoryRequest == null ? 0 : daemonSetMemoryRequest!.hashCode) +
    (daemonSetName == null ? 0 : daemonSetName!.hashCode) +
    (desiredNodes == null ? 0 : desiredNodes!.hashCode) +
    (meta.hashCode) +
    (podCountsByPhase == null ? 0 : podCountsByPhase!.hashCode);

  @override
  String toString() => 'O11yDaemonSetRecord[currentNodes=$currentNodes, daemonSetCPU=$daemonSetCPU, daemonSetCPULimit=$daemonSetCPULimit, daemonSetCPURequest=$daemonSetCPURequest, daemonSetMemory=$daemonSetMemory, daemonSetMemoryLimit=$daemonSetMemoryLimit, daemonSetMemoryRequest=$daemonSetMemoryRequest, daemonSetName=$daemonSetName, desiredNodes=$desiredNodes, meta=$meta, podCountsByPhase=$podCountsByPhase]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.currentNodes != null) {
      json[r'currentNodes'] = this.currentNodes;
    } else {
      json[r'currentNodes'] = null;
    }
    if (this.daemonSetCPU != null) {
      json[r'daemonSetCPU'] = this.daemonSetCPU;
    } else {
      json[r'daemonSetCPU'] = null;
    }
    if (this.daemonSetCPULimit != null) {
      json[r'daemonSetCPULimit'] = this.daemonSetCPULimit;
    } else {
      json[r'daemonSetCPULimit'] = null;
    }
    if (this.daemonSetCPURequest != null) {
      json[r'daemonSetCPURequest'] = this.daemonSetCPURequest;
    } else {
      json[r'daemonSetCPURequest'] = null;
    }
    if (this.daemonSetMemory != null) {
      json[r'daemonSetMemory'] = this.daemonSetMemory;
    } else {
      json[r'daemonSetMemory'] = null;
    }
    if (this.daemonSetMemoryLimit != null) {
      json[r'daemonSetMemoryLimit'] = this.daemonSetMemoryLimit;
    } else {
      json[r'daemonSetMemoryLimit'] = null;
    }
    if (this.daemonSetMemoryRequest != null) {
      json[r'daemonSetMemoryRequest'] = this.daemonSetMemoryRequest;
    } else {
      json[r'daemonSetMemoryRequest'] = null;
    }
    if (this.daemonSetName != null) {
      json[r'daemonSetName'] = this.daemonSetName;
    } else {
      json[r'daemonSetName'] = null;
    }
    if (this.desiredNodes != null) {
      json[r'desiredNodes'] = this.desiredNodes;
    } else {
      json[r'desiredNodes'] = null;
    }
      json[r'meta'] = this.meta;
    if (this.podCountsByPhase != null) {
      json[r'podCountsByPhase'] = this.podCountsByPhase;
    } else {
      json[r'podCountsByPhase'] = null;
    }
    return json;
  }

  /// Returns a new [O11yDaemonSetRecord] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yDaemonSetRecord? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yDaemonSetRecord[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yDaemonSetRecord[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yDaemonSetRecord(
        currentNodes: mapValueOfType<int>(json, r'currentNodes'),
        daemonSetCPU: num.parse('${json[r'daemonSetCPU']}'),
        daemonSetCPULimit: num.parse('${json[r'daemonSetCPULimit']}'),
        daemonSetCPURequest: num.parse('${json[r'daemonSetCPURequest']}'),
        daemonSetMemory: num.parse('${json[r'daemonSetMemory']}'),
        daemonSetMemoryLimit: num.parse('${json[r'daemonSetMemoryLimit']}'),
        daemonSetMemoryRequest: num.parse('${json[r'daemonSetMemoryRequest']}'),
        daemonSetName: mapValueOfType<String>(json, r'daemonSetName'),
        desiredNodes: mapValueOfType<int>(json, r'desiredNodes'),
        meta: mapCastOfType<String, String>(json, r'meta') ?? const {},
        podCountsByPhase: O11yPodCountsByPhase.fromJson(json[r'podCountsByPhase']),
      );
    }
    return null;
  }

  static List<O11yDaemonSetRecord> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yDaemonSetRecord>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yDaemonSetRecord.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yDaemonSetRecord> mapFromJson(dynamic json) {
    final map = <String, O11yDaemonSetRecord>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yDaemonSetRecord.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yDaemonSetRecord-objects as value to a dart map
  static Map<String, List<O11yDaemonSetRecord>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yDaemonSetRecord>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yDaemonSetRecord.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

