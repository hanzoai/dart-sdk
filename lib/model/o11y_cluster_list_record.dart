//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yClusterListRecord {
  /// Returns a new [O11yClusterListRecord] instance.
  O11yClusterListRecord({
    this.clusterUID,
    this.cpuAllocatable,
    this.cpuUsage,
    this.memoryAllocatable,
    this.memoryUsage,
    this.meta = const {},
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? clusterUID;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? cpuAllocatable;

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
  num? memoryAllocatable;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? memoryUsage;

  Map<String, String> meta;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yClusterListRecord &&
    other.clusterUID == clusterUID &&
    other.cpuAllocatable == cpuAllocatable &&
    other.cpuUsage == cpuUsage &&
    other.memoryAllocatable == memoryAllocatable &&
    other.memoryUsage == memoryUsage &&
    _deepEquality.equals(other.meta, meta);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (clusterUID == null ? 0 : clusterUID!.hashCode) +
    (cpuAllocatable == null ? 0 : cpuAllocatable!.hashCode) +
    (cpuUsage == null ? 0 : cpuUsage!.hashCode) +
    (memoryAllocatable == null ? 0 : memoryAllocatable!.hashCode) +
    (memoryUsage == null ? 0 : memoryUsage!.hashCode) +
    (meta.hashCode);

  @override
  String toString() => 'O11yClusterListRecord[clusterUID=$clusterUID, cpuAllocatable=$cpuAllocatable, cpuUsage=$cpuUsage, memoryAllocatable=$memoryAllocatable, memoryUsage=$memoryUsage, meta=$meta]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.clusterUID != null) {
      json[r'clusterUID'] = this.clusterUID;
    } else {
      json[r'clusterUID'] = null;
    }
    if (this.cpuAllocatable != null) {
      json[r'cpuAllocatable'] = this.cpuAllocatable;
    } else {
      json[r'cpuAllocatable'] = null;
    }
    if (this.cpuUsage != null) {
      json[r'cpuUsage'] = this.cpuUsage;
    } else {
      json[r'cpuUsage'] = null;
    }
    if (this.memoryAllocatable != null) {
      json[r'memoryAllocatable'] = this.memoryAllocatable;
    } else {
      json[r'memoryAllocatable'] = null;
    }
    if (this.memoryUsage != null) {
      json[r'memoryUsage'] = this.memoryUsage;
    } else {
      json[r'memoryUsage'] = null;
    }
      json[r'meta'] = this.meta;
    return json;
  }

  /// Returns a new [O11yClusterListRecord] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yClusterListRecord? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yClusterListRecord[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yClusterListRecord[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yClusterListRecord(
        clusterUID: mapValueOfType<String>(json, r'clusterUID'),
        cpuAllocatable: num.parse('${json[r'cpuAllocatable']}'),
        cpuUsage: num.parse('${json[r'cpuUsage']}'),
        memoryAllocatable: num.parse('${json[r'memoryAllocatable']}'),
        memoryUsage: num.parse('${json[r'memoryUsage']}'),
        meta: mapCastOfType<String, String>(json, r'meta') ?? const {},
      );
    }
    return null;
  }

  static List<O11yClusterListRecord> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yClusterListRecord>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yClusterListRecord.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yClusterListRecord> mapFromJson(dynamic json) {
    final map = <String, O11yClusterListRecord>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yClusterListRecord.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yClusterListRecord-objects as value to a dart map
  static Map<String, List<O11yClusterListRecord>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yClusterListRecord>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yClusterListRecord.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

