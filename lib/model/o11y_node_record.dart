//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yNodeRecord {
  /// Returns a new [O11yNodeRecord] instance.
  O11yNodeRecord({
    this.condition,
    this.meta = const {},
    this.nodeCPU,
    this.nodeCPUAllocatable,
    this.nodeCountsByReadiness,
    this.nodeMemory,
    this.nodeMemoryAllocatable,
    this.nodeName,
    this.podCountsByPhase,
  });
  Object? condition;

  Map<String, String> meta;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? nodeCPU;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? nodeCPUAllocatable;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  O11yNodeCountsByReadiness? nodeCountsByReadiness;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? nodeMemory;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? nodeMemoryAllocatable;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? nodeName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  O11yPodCountsByPhase? podCountsByPhase;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yNodeRecord &&
    other.condition == condition &&
    _deepEquality.equals(other.meta, meta) &&
    other.nodeCPU == nodeCPU &&
    other.nodeCPUAllocatable == nodeCPUAllocatable &&
    other.nodeCountsByReadiness == nodeCountsByReadiness &&
    other.nodeMemory == nodeMemory &&
    other.nodeMemoryAllocatable == nodeMemoryAllocatable &&
    other.nodeName == nodeName &&
    other.podCountsByPhase == podCountsByPhase;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (condition == null ? 0 : condition!.hashCode) +
    (meta.hashCode) +
    (nodeCPU == null ? 0 : nodeCPU!.hashCode) +
    (nodeCPUAllocatable == null ? 0 : nodeCPUAllocatable!.hashCode) +
    (nodeCountsByReadiness == null ? 0 : nodeCountsByReadiness!.hashCode) +
    (nodeMemory == null ? 0 : nodeMemory!.hashCode) +
    (nodeMemoryAllocatable == null ? 0 : nodeMemoryAllocatable!.hashCode) +
    (nodeName == null ? 0 : nodeName!.hashCode) +
    (podCountsByPhase == null ? 0 : podCountsByPhase!.hashCode);

  @override
  String toString() => 'O11yNodeRecord[condition=$condition, meta=$meta, nodeCPU=$nodeCPU, nodeCPUAllocatable=$nodeCPUAllocatable, nodeCountsByReadiness=$nodeCountsByReadiness, nodeMemory=$nodeMemory, nodeMemoryAllocatable=$nodeMemoryAllocatable, nodeName=$nodeName, podCountsByPhase=$podCountsByPhase]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.condition != null) {
      json[r'condition'] = this.condition;
    } else {
      json[r'condition'] = null;
    }
      json[r'meta'] = this.meta;
    if (this.nodeCPU != null) {
      json[r'nodeCPU'] = this.nodeCPU;
    } else {
      json[r'nodeCPU'] = null;
    }
    if (this.nodeCPUAllocatable != null) {
      json[r'nodeCPUAllocatable'] = this.nodeCPUAllocatable;
    } else {
      json[r'nodeCPUAllocatable'] = null;
    }
    if (this.nodeCountsByReadiness != null) {
      json[r'nodeCountsByReadiness'] = this.nodeCountsByReadiness;
    } else {
      json[r'nodeCountsByReadiness'] = null;
    }
    if (this.nodeMemory != null) {
      json[r'nodeMemory'] = this.nodeMemory;
    } else {
      json[r'nodeMemory'] = null;
    }
    if (this.nodeMemoryAllocatable != null) {
      json[r'nodeMemoryAllocatable'] = this.nodeMemoryAllocatable;
    } else {
      json[r'nodeMemoryAllocatable'] = null;
    }
    if (this.nodeName != null) {
      json[r'nodeName'] = this.nodeName;
    } else {
      json[r'nodeName'] = null;
    }
    if (this.podCountsByPhase != null) {
      json[r'podCountsByPhase'] = this.podCountsByPhase;
    } else {
      json[r'podCountsByPhase'] = null;
    }
    return json;
  }

  /// Returns a new [O11yNodeRecord] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yNodeRecord? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yNodeRecord[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yNodeRecord[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yNodeRecord(
        condition: mapValueOfType<Object>(json, r'condition'),
        meta: mapCastOfType<String, String>(json, r'meta') ?? const {},
        nodeCPU: num.parse('${json[r'nodeCPU']}'),
        nodeCPUAllocatable: num.parse('${json[r'nodeCPUAllocatable']}'),
        nodeCountsByReadiness: O11yNodeCountsByReadiness.fromJson(json[r'nodeCountsByReadiness']),
        nodeMemory: num.parse('${json[r'nodeMemory']}'),
        nodeMemoryAllocatable: num.parse('${json[r'nodeMemoryAllocatable']}'),
        nodeName: mapValueOfType<String>(json, r'nodeName'),
        podCountsByPhase: O11yPodCountsByPhase.fromJson(json[r'podCountsByPhase']),
      );
    }
    return null;
  }

  static List<O11yNodeRecord> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yNodeRecord>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yNodeRecord.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yNodeRecord> mapFromJson(dynamic json) {
    final map = <String, O11yNodeRecord>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yNodeRecord.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yNodeRecord-objects as value to a dart map
  static Map<String, List<O11yNodeRecord>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yNodeRecord>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yNodeRecord.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

