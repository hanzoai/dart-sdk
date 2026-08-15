//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yStatefulSetRecord {
  /// Returns a new [O11yStatefulSetRecord] instance.
  O11yStatefulSetRecord({
    this.currentPods,
    this.desiredPods,
    this.meta = const {},
    this.podCountsByPhase,
    this.statefulSetCPU,
    this.statefulSetCPULimit,
    this.statefulSetCPURequest,
    this.statefulSetMemory,
    this.statefulSetMemoryLimit,
    this.statefulSetMemoryRequest,
    this.statefulSetName,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? currentPods;

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

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? statefulSetCPU;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? statefulSetCPULimit;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? statefulSetCPURequest;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? statefulSetMemory;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? statefulSetMemoryLimit;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? statefulSetMemoryRequest;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? statefulSetName;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yStatefulSetRecord &&
    other.currentPods == currentPods &&
    other.desiredPods == desiredPods &&
    _deepEquality.equals(other.meta, meta) &&
    other.podCountsByPhase == podCountsByPhase &&
    other.statefulSetCPU == statefulSetCPU &&
    other.statefulSetCPULimit == statefulSetCPULimit &&
    other.statefulSetCPURequest == statefulSetCPURequest &&
    other.statefulSetMemory == statefulSetMemory &&
    other.statefulSetMemoryLimit == statefulSetMemoryLimit &&
    other.statefulSetMemoryRequest == statefulSetMemoryRequest &&
    other.statefulSetName == statefulSetName;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (currentPods == null ? 0 : currentPods!.hashCode) +
    (desiredPods == null ? 0 : desiredPods!.hashCode) +
    (meta.hashCode) +
    (podCountsByPhase == null ? 0 : podCountsByPhase!.hashCode) +
    (statefulSetCPU == null ? 0 : statefulSetCPU!.hashCode) +
    (statefulSetCPULimit == null ? 0 : statefulSetCPULimit!.hashCode) +
    (statefulSetCPURequest == null ? 0 : statefulSetCPURequest!.hashCode) +
    (statefulSetMemory == null ? 0 : statefulSetMemory!.hashCode) +
    (statefulSetMemoryLimit == null ? 0 : statefulSetMemoryLimit!.hashCode) +
    (statefulSetMemoryRequest == null ? 0 : statefulSetMemoryRequest!.hashCode) +
    (statefulSetName == null ? 0 : statefulSetName!.hashCode);

  @override
  String toString() => 'O11yStatefulSetRecord[currentPods=$currentPods, desiredPods=$desiredPods, meta=$meta, podCountsByPhase=$podCountsByPhase, statefulSetCPU=$statefulSetCPU, statefulSetCPULimit=$statefulSetCPULimit, statefulSetCPURequest=$statefulSetCPURequest, statefulSetMemory=$statefulSetMemory, statefulSetMemoryLimit=$statefulSetMemoryLimit, statefulSetMemoryRequest=$statefulSetMemoryRequest, statefulSetName=$statefulSetName]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.currentPods != null) {
      json[r'currentPods'] = this.currentPods;
    } else {
      json[r'currentPods'] = null;
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
    if (this.statefulSetCPU != null) {
      json[r'statefulSetCPU'] = this.statefulSetCPU;
    } else {
      json[r'statefulSetCPU'] = null;
    }
    if (this.statefulSetCPULimit != null) {
      json[r'statefulSetCPULimit'] = this.statefulSetCPULimit;
    } else {
      json[r'statefulSetCPULimit'] = null;
    }
    if (this.statefulSetCPURequest != null) {
      json[r'statefulSetCPURequest'] = this.statefulSetCPURequest;
    } else {
      json[r'statefulSetCPURequest'] = null;
    }
    if (this.statefulSetMemory != null) {
      json[r'statefulSetMemory'] = this.statefulSetMemory;
    } else {
      json[r'statefulSetMemory'] = null;
    }
    if (this.statefulSetMemoryLimit != null) {
      json[r'statefulSetMemoryLimit'] = this.statefulSetMemoryLimit;
    } else {
      json[r'statefulSetMemoryLimit'] = null;
    }
    if (this.statefulSetMemoryRequest != null) {
      json[r'statefulSetMemoryRequest'] = this.statefulSetMemoryRequest;
    } else {
      json[r'statefulSetMemoryRequest'] = null;
    }
    if (this.statefulSetName != null) {
      json[r'statefulSetName'] = this.statefulSetName;
    } else {
      json[r'statefulSetName'] = null;
    }
    return json;
  }

  /// Returns a new [O11yStatefulSetRecord] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yStatefulSetRecord? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yStatefulSetRecord[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yStatefulSetRecord[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yStatefulSetRecord(
        currentPods: mapValueOfType<int>(json, r'currentPods'),
        desiredPods: mapValueOfType<int>(json, r'desiredPods'),
        meta: mapCastOfType<String, String>(json, r'meta') ?? const {},
        podCountsByPhase: O11yPodCountsByPhase.fromJson(json[r'podCountsByPhase']),
        statefulSetCPU: num.parse('${json[r'statefulSetCPU']}'),
        statefulSetCPULimit: num.parse('${json[r'statefulSetCPULimit']}'),
        statefulSetCPURequest: num.parse('${json[r'statefulSetCPURequest']}'),
        statefulSetMemory: num.parse('${json[r'statefulSetMemory']}'),
        statefulSetMemoryLimit: num.parse('${json[r'statefulSetMemoryLimit']}'),
        statefulSetMemoryRequest: num.parse('${json[r'statefulSetMemoryRequest']}'),
        statefulSetName: mapValueOfType<String>(json, r'statefulSetName'),
      );
    }
    return null;
  }

  static List<O11yStatefulSetRecord> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yStatefulSetRecord>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yStatefulSetRecord.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yStatefulSetRecord> mapFromJson(dynamic json) {
    final map = <String, O11yStatefulSetRecord>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yStatefulSetRecord.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yStatefulSetRecord-objects as value to a dart map
  static Map<String, List<O11yStatefulSetRecord>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yStatefulSetRecord>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yStatefulSetRecord.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

