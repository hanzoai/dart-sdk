//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yClusterRecord {
  /// Returns a new [O11yClusterRecord] instance.
  O11yClusterRecord({
    this.clusterCPU,
    this.clusterCPUAllocatable,
    this.clusterMemory,
    this.clusterMemoryAllocatable,
    this.clusterName,
    this.meta = const {},
    this.nodeCountsByReadiness,
    this.podCountsByPhase,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? clusterCPU;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? clusterCPUAllocatable;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? clusterMemory;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? clusterMemoryAllocatable;

  /// TODO(nikhilmantri0902): once the underlying attr key is migrated to k8s.cluster.uid (see ClusterNameAttrKey), surface ClusterUID alongside (or replace) ClusterName.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? clusterName;

  Map<String, String> meta;

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
  O11yPodCountsByPhase? podCountsByPhase;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yClusterRecord &&
    other.clusterCPU == clusterCPU &&
    other.clusterCPUAllocatable == clusterCPUAllocatable &&
    other.clusterMemory == clusterMemory &&
    other.clusterMemoryAllocatable == clusterMemoryAllocatable &&
    other.clusterName == clusterName &&
    _deepEquality.equals(other.meta, meta) &&
    other.nodeCountsByReadiness == nodeCountsByReadiness &&
    other.podCountsByPhase == podCountsByPhase;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (clusterCPU == null ? 0 : clusterCPU!.hashCode) +
    (clusterCPUAllocatable == null ? 0 : clusterCPUAllocatable!.hashCode) +
    (clusterMemory == null ? 0 : clusterMemory!.hashCode) +
    (clusterMemoryAllocatable == null ? 0 : clusterMemoryAllocatable!.hashCode) +
    (clusterName == null ? 0 : clusterName!.hashCode) +
    (meta.hashCode) +
    (nodeCountsByReadiness == null ? 0 : nodeCountsByReadiness!.hashCode) +
    (podCountsByPhase == null ? 0 : podCountsByPhase!.hashCode);

  @override
  String toString() => 'O11yClusterRecord[clusterCPU=$clusterCPU, clusterCPUAllocatable=$clusterCPUAllocatable, clusterMemory=$clusterMemory, clusterMemoryAllocatable=$clusterMemoryAllocatable, clusterName=$clusterName, meta=$meta, nodeCountsByReadiness=$nodeCountsByReadiness, podCountsByPhase=$podCountsByPhase]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.clusterCPU != null) {
      json[r'clusterCPU'] = this.clusterCPU;
    } else {
      json[r'clusterCPU'] = null;
    }
    if (this.clusterCPUAllocatable != null) {
      json[r'clusterCPUAllocatable'] = this.clusterCPUAllocatable;
    } else {
      json[r'clusterCPUAllocatable'] = null;
    }
    if (this.clusterMemory != null) {
      json[r'clusterMemory'] = this.clusterMemory;
    } else {
      json[r'clusterMemory'] = null;
    }
    if (this.clusterMemoryAllocatable != null) {
      json[r'clusterMemoryAllocatable'] = this.clusterMemoryAllocatable;
    } else {
      json[r'clusterMemoryAllocatable'] = null;
    }
    if (this.clusterName != null) {
      json[r'clusterName'] = this.clusterName;
    } else {
      json[r'clusterName'] = null;
    }
      json[r'meta'] = this.meta;
    if (this.nodeCountsByReadiness != null) {
      json[r'nodeCountsByReadiness'] = this.nodeCountsByReadiness;
    } else {
      json[r'nodeCountsByReadiness'] = null;
    }
    if (this.podCountsByPhase != null) {
      json[r'podCountsByPhase'] = this.podCountsByPhase;
    } else {
      json[r'podCountsByPhase'] = null;
    }
    return json;
  }

  /// Returns a new [O11yClusterRecord] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yClusterRecord? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yClusterRecord[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yClusterRecord[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yClusterRecord(
        clusterCPU: num.parse('${json[r'clusterCPU']}'),
        clusterCPUAllocatable: num.parse('${json[r'clusterCPUAllocatable']}'),
        clusterMemory: num.parse('${json[r'clusterMemory']}'),
        clusterMemoryAllocatable: num.parse('${json[r'clusterMemoryAllocatable']}'),
        clusterName: mapValueOfType<String>(json, r'clusterName'),
        meta: mapCastOfType<String, String>(json, r'meta') ?? const {},
        nodeCountsByReadiness: O11yNodeCountsByReadiness.fromJson(json[r'nodeCountsByReadiness']),
        podCountsByPhase: O11yPodCountsByPhase.fromJson(json[r'podCountsByPhase']),
      );
    }
    return null;
  }

  static List<O11yClusterRecord> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yClusterRecord>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yClusterRecord.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yClusterRecord> mapFromJson(dynamic json) {
    final map = <String, O11yClusterRecord>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yClusterRecord.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yClusterRecord-objects as value to a dart map
  static Map<String, List<O11yClusterRecord>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yClusterRecord>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yClusterRecord.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

