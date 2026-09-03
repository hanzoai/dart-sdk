//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yPodListRecord {
  /// Returns a new [O11yPodListRecord] instance.
  O11yPodListRecord({
    this.countByPhase,
    this.meta = const {},
    this.podCPU,
    this.podCPULimit,
    this.podCPURequest,
    this.podMemory,
    this.podMemoryLimit,
    this.podMemoryRequest,
    this.podUID,
    this.restartCount,
  });
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  O11yPodCountByPhase? countByPhase;

  Map<String, String> meta;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? podCPU;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? podCPULimit;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? podCPURequest;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? podMemory;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? podMemoryLimit;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? podMemoryRequest;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? podUID;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? restartCount;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yPodListRecord &&
    other.countByPhase == countByPhase &&
    _deepEquality.equals(other.meta, meta) &&
    other.podCPU == podCPU &&
    other.podCPULimit == podCPULimit &&
    other.podCPURequest == podCPURequest &&
    other.podMemory == podMemory &&
    other.podMemoryLimit == podMemoryLimit &&
    other.podMemoryRequest == podMemoryRequest &&
    other.podUID == podUID &&
    other.restartCount == restartCount;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (countByPhase == null ? 0 : countByPhase!.hashCode) +
    (meta.hashCode) +
    (podCPU == null ? 0 : podCPU!.hashCode) +
    (podCPULimit == null ? 0 : podCPULimit!.hashCode) +
    (podCPURequest == null ? 0 : podCPURequest!.hashCode) +
    (podMemory == null ? 0 : podMemory!.hashCode) +
    (podMemoryLimit == null ? 0 : podMemoryLimit!.hashCode) +
    (podMemoryRequest == null ? 0 : podMemoryRequest!.hashCode) +
    (podUID == null ? 0 : podUID!.hashCode) +
    (restartCount == null ? 0 : restartCount!.hashCode);

  @override
  String toString() => 'O11yPodListRecord[countByPhase=$countByPhase, meta=$meta, podCPU=$podCPU, podCPULimit=$podCPULimit, podCPURequest=$podCPURequest, podMemory=$podMemory, podMemoryLimit=$podMemoryLimit, podMemoryRequest=$podMemoryRequest, podUID=$podUID, restartCount=$restartCount]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.countByPhase != null) {
      json[r'countByPhase'] = this.countByPhase;
    } else {
      json[r'countByPhase'] = null;
    }
      json[r'meta'] = this.meta;
    if (this.podCPU != null) {
      json[r'podCPU'] = this.podCPU;
    } else {
      json[r'podCPU'] = null;
    }
    if (this.podCPULimit != null) {
      json[r'podCPULimit'] = this.podCPULimit;
    } else {
      json[r'podCPULimit'] = null;
    }
    if (this.podCPURequest != null) {
      json[r'podCPURequest'] = this.podCPURequest;
    } else {
      json[r'podCPURequest'] = null;
    }
    if (this.podMemory != null) {
      json[r'podMemory'] = this.podMemory;
    } else {
      json[r'podMemory'] = null;
    }
    if (this.podMemoryLimit != null) {
      json[r'podMemoryLimit'] = this.podMemoryLimit;
    } else {
      json[r'podMemoryLimit'] = null;
    }
    if (this.podMemoryRequest != null) {
      json[r'podMemoryRequest'] = this.podMemoryRequest;
    } else {
      json[r'podMemoryRequest'] = null;
    }
    if (this.podUID != null) {
      json[r'podUID'] = this.podUID;
    } else {
      json[r'podUID'] = null;
    }
    if (this.restartCount != null) {
      json[r'restartCount'] = this.restartCount;
    } else {
      json[r'restartCount'] = null;
    }
    return json;
  }

  /// Returns a new [O11yPodListRecord] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yPodListRecord? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yPodListRecord[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yPodListRecord[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yPodListRecord(
        countByPhase: O11yPodCountByPhase.fromJson(json[r'countByPhase']),
        meta: mapCastOfType<String, String>(json, r'meta') ?? const {},
        podCPU: mapValueOfType<double>(json, r'podCPU'),
        podCPULimit: mapValueOfType<double>(json, r'podCPULimit'),
        podCPURequest: mapValueOfType<double>(json, r'podCPURequest'),
        podMemory: mapValueOfType<double>(json, r'podMemory'),
        podMemoryLimit: mapValueOfType<double>(json, r'podMemoryLimit'),
        podMemoryRequest: mapValueOfType<double>(json, r'podMemoryRequest'),
        podUID: mapValueOfType<String>(json, r'podUID'),
        restartCount: mapValueOfType<int>(json, r'restartCount'),
      );
    }
    return null;
  }

  static List<O11yPodListRecord> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yPodListRecord>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yPodListRecord.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yPodListRecord> mapFromJson(dynamic json) {
    final map = <String, O11yPodListRecord>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yPodListRecord.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yPodListRecord-objects as value to a dart map
  static Map<String, List<O11yPodListRecord>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yPodListRecord>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yPodListRecord.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

