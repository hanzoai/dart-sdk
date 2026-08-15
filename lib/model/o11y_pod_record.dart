//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yPodRecord {
  /// Returns a new [O11yPodRecord] instance.
  O11yPodRecord({
    this.meta = const {},
    this.podAge,
    this.podCPU,
    this.podCPULimit,
    this.podCPURequest,
    this.podCountsByPhase,
    this.podMemory,
    this.podMemoryLimit,
    this.podMemoryRequest,
    this.podPhase,
    this.podUID,
  });

  Map<String, String> meta;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? podAge;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? podCPU;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? podCPULimit;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? podCPURequest;

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
  num? podMemory;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? podMemoryLimit;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? podMemoryRequest;

  Object? podPhase;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? podUID;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yPodRecord &&
    _deepEquality.equals(other.meta, meta) &&
    other.podAge == podAge &&
    other.podCPU == podCPU &&
    other.podCPULimit == podCPULimit &&
    other.podCPURequest == podCPURequest &&
    other.podCountsByPhase == podCountsByPhase &&
    other.podMemory == podMemory &&
    other.podMemoryLimit == podMemoryLimit &&
    other.podMemoryRequest == podMemoryRequest &&
    other.podPhase == podPhase &&
    other.podUID == podUID;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (meta.hashCode) +
    (podAge == null ? 0 : podAge!.hashCode) +
    (podCPU == null ? 0 : podCPU!.hashCode) +
    (podCPULimit == null ? 0 : podCPULimit!.hashCode) +
    (podCPURequest == null ? 0 : podCPURequest!.hashCode) +
    (podCountsByPhase == null ? 0 : podCountsByPhase!.hashCode) +
    (podMemory == null ? 0 : podMemory!.hashCode) +
    (podMemoryLimit == null ? 0 : podMemoryLimit!.hashCode) +
    (podMemoryRequest == null ? 0 : podMemoryRequest!.hashCode) +
    (podPhase == null ? 0 : podPhase!.hashCode) +
    (podUID == null ? 0 : podUID!.hashCode);

  @override
  String toString() => 'O11yPodRecord[meta=$meta, podAge=$podAge, podCPU=$podCPU, podCPULimit=$podCPULimit, podCPURequest=$podCPURequest, podCountsByPhase=$podCountsByPhase, podMemory=$podMemory, podMemoryLimit=$podMemoryLimit, podMemoryRequest=$podMemoryRequest, podPhase=$podPhase, podUID=$podUID]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'meta'] = this.meta;
    if (this.podAge != null) {
      json[r'podAge'] = this.podAge;
    } else {
      json[r'podAge'] = null;
    }
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
    if (this.podCountsByPhase != null) {
      json[r'podCountsByPhase'] = this.podCountsByPhase;
    } else {
      json[r'podCountsByPhase'] = null;
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
    if (this.podPhase != null) {
      json[r'podPhase'] = this.podPhase;
    } else {
      json[r'podPhase'] = null;
    }
    if (this.podUID != null) {
      json[r'podUID'] = this.podUID;
    } else {
      json[r'podUID'] = null;
    }
    return json;
  }

  /// Returns a new [O11yPodRecord] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yPodRecord? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yPodRecord[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yPodRecord[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yPodRecord(
        meta: mapCastOfType<String, String>(json, r'meta') ?? const {},
        podAge: mapValueOfType<int>(json, r'podAge'),
        podCPU: num.parse('${json[r'podCPU']}'),
        podCPULimit: num.parse('${json[r'podCPULimit']}'),
        podCPURequest: num.parse('${json[r'podCPURequest']}'),
        podCountsByPhase: O11yPodCountsByPhase.fromJson(json[r'podCountsByPhase']),
        podMemory: num.parse('${json[r'podMemory']}'),
        podMemoryLimit: num.parse('${json[r'podMemoryLimit']}'),
        podMemoryRequest: num.parse('${json[r'podMemoryRequest']}'),
        podPhase: mapValueOfType<Object>(json, r'podPhase'),
        podUID: mapValueOfType<String>(json, r'podUID'),
      );
    }
    return null;
  }

  static List<O11yPodRecord> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yPodRecord>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yPodRecord.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yPodRecord> mapFromJson(dynamic json) {
    final map = <String, O11yPodRecord>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yPodRecord.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yPodRecord-objects as value to a dart map
  static Map<String, List<O11yPodRecord>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yPodRecord>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yPodRecord.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

