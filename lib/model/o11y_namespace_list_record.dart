//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yNamespaceListRecord {
  /// Returns a new [O11yNamespaceListRecord] instance.
  O11yNamespaceListRecord({
    this.countByPhase,
    this.cpuUsage,
    this.memoryUsage,
    this.meta = const {},
    this.namespaceName,
  });
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  O11yPodCountByPhase? countByPhase;

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
  num? memoryUsage;

  Map<String, String> meta;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? namespaceName;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yNamespaceListRecord &&
    other.countByPhase == countByPhase &&
    other.cpuUsage == cpuUsage &&
    other.memoryUsage == memoryUsage &&
    _deepEquality.equals(other.meta, meta) &&
    other.namespaceName == namespaceName;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (countByPhase == null ? 0 : countByPhase!.hashCode) +
    (cpuUsage == null ? 0 : cpuUsage!.hashCode) +
    (memoryUsage == null ? 0 : memoryUsage!.hashCode) +
    (meta.hashCode) +
    (namespaceName == null ? 0 : namespaceName!.hashCode);

  @override
  String toString() => 'O11yNamespaceListRecord[countByPhase=$countByPhase, cpuUsage=$cpuUsage, memoryUsage=$memoryUsage, meta=$meta, namespaceName=$namespaceName]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.countByPhase != null) {
      json[r'countByPhase'] = this.countByPhase;
    } else {
      json[r'countByPhase'] = null;
    }
    if (this.cpuUsage != null) {
      json[r'cpuUsage'] = this.cpuUsage;
    } else {
      json[r'cpuUsage'] = null;
    }
    if (this.memoryUsage != null) {
      json[r'memoryUsage'] = this.memoryUsage;
    } else {
      json[r'memoryUsage'] = null;
    }
      json[r'meta'] = this.meta;
    if (this.namespaceName != null) {
      json[r'namespaceName'] = this.namespaceName;
    } else {
      json[r'namespaceName'] = null;
    }
    return json;
  }

  /// Returns a new [O11yNamespaceListRecord] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yNamespaceListRecord? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yNamespaceListRecord[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yNamespaceListRecord[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yNamespaceListRecord(
        countByPhase: O11yPodCountByPhase.fromJson(json[r'countByPhase']),
        cpuUsage: num.parse('${json[r'cpuUsage']}'),
        memoryUsage: num.parse('${json[r'memoryUsage']}'),
        meta: mapCastOfType<String, String>(json, r'meta') ?? const {},
        namespaceName: mapValueOfType<String>(json, r'namespaceName'),
      );
    }
    return null;
  }

  static List<O11yNamespaceListRecord> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yNamespaceListRecord>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yNamespaceListRecord.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yNamespaceListRecord> mapFromJson(dynamic json) {
    final map = <String, O11yNamespaceListRecord>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yNamespaceListRecord.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yNamespaceListRecord-objects as value to a dart map
  static Map<String, List<O11yNamespaceListRecord>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yNamespaceListRecord>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yNamespaceListRecord.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

