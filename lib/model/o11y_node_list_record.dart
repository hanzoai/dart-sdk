//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yNodeListRecord {
  /// Returns a new [O11yNodeListRecord] instance.
  O11yNodeListRecord({
    this.countByCondition,
    this.meta = const {},
    this.nodeCPUAllocatable,
    this.nodeCPUUsage,
    this.nodeMemoryAllocatable,
    this.nodeMemoryUsage,
    this.nodeUID,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  O11yNodeCountByCondition? countByCondition;

  Map<String, String> meta;

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
  num? nodeCPUUsage;

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
  num? nodeMemoryUsage;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? nodeUID;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yNodeListRecord &&
    other.countByCondition == countByCondition &&
    _deepEquality.equals(other.meta, meta) &&
    other.nodeCPUAllocatable == nodeCPUAllocatable &&
    other.nodeCPUUsage == nodeCPUUsage &&
    other.nodeMemoryAllocatable == nodeMemoryAllocatable &&
    other.nodeMemoryUsage == nodeMemoryUsage &&
    other.nodeUID == nodeUID;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (countByCondition == null ? 0 : countByCondition!.hashCode) +
    (meta.hashCode) +
    (nodeCPUAllocatable == null ? 0 : nodeCPUAllocatable!.hashCode) +
    (nodeCPUUsage == null ? 0 : nodeCPUUsage!.hashCode) +
    (nodeMemoryAllocatable == null ? 0 : nodeMemoryAllocatable!.hashCode) +
    (nodeMemoryUsage == null ? 0 : nodeMemoryUsage!.hashCode) +
    (nodeUID == null ? 0 : nodeUID!.hashCode);

  @override
  String toString() => 'O11yNodeListRecord[countByCondition=$countByCondition, meta=$meta, nodeCPUAllocatable=$nodeCPUAllocatable, nodeCPUUsage=$nodeCPUUsage, nodeMemoryAllocatable=$nodeMemoryAllocatable, nodeMemoryUsage=$nodeMemoryUsage, nodeUID=$nodeUID]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.countByCondition != null) {
      json[r'countByCondition'] = this.countByCondition;
    } else {
      json[r'countByCondition'] = null;
    }
      json[r'meta'] = this.meta;
    if (this.nodeCPUAllocatable != null) {
      json[r'nodeCPUAllocatable'] = this.nodeCPUAllocatable;
    } else {
      json[r'nodeCPUAllocatable'] = null;
    }
    if (this.nodeCPUUsage != null) {
      json[r'nodeCPUUsage'] = this.nodeCPUUsage;
    } else {
      json[r'nodeCPUUsage'] = null;
    }
    if (this.nodeMemoryAllocatable != null) {
      json[r'nodeMemoryAllocatable'] = this.nodeMemoryAllocatable;
    } else {
      json[r'nodeMemoryAllocatable'] = null;
    }
    if (this.nodeMemoryUsage != null) {
      json[r'nodeMemoryUsage'] = this.nodeMemoryUsage;
    } else {
      json[r'nodeMemoryUsage'] = null;
    }
    if (this.nodeUID != null) {
      json[r'nodeUID'] = this.nodeUID;
    } else {
      json[r'nodeUID'] = null;
    }
    return json;
  }

  /// Returns a new [O11yNodeListRecord] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yNodeListRecord? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yNodeListRecord[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yNodeListRecord[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yNodeListRecord(
        countByCondition: O11yNodeCountByCondition.fromJson(json[r'countByCondition']),
        meta: mapCastOfType<String, String>(json, r'meta') ?? const {},
        nodeCPUAllocatable: num.parse('${json[r'nodeCPUAllocatable']}'),
        nodeCPUUsage: num.parse('${json[r'nodeCPUUsage']}'),
        nodeMemoryAllocatable: num.parse('${json[r'nodeMemoryAllocatable']}'),
        nodeMemoryUsage: num.parse('${json[r'nodeMemoryUsage']}'),
        nodeUID: mapValueOfType<String>(json, r'nodeUID'),
      );
    }
    return null;
  }

  static List<O11yNodeListRecord> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yNodeListRecord>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yNodeListRecord.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yNodeListRecord> mapFromJson(dynamic json) {
    final map = <String, O11yNodeListRecord>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yNodeListRecord.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yNodeListRecord-objects as value to a dart map
  static Map<String, List<O11yNodeListRecord>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yNodeListRecord>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yNodeListRecord.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

