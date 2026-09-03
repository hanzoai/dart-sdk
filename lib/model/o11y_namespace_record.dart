//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yNamespaceRecord {
  /// Returns a new [O11yNamespaceRecord] instance.
  O11yNamespaceRecord({
    this.meta = const {},
    this.namespaceCPU,
    this.namespaceMemory,
    this.namespaceName,
    this.podCountsByPhase,
  });
  Map<String, String> meta;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? namespaceCPU;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? namespaceMemory;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? namespaceName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  O11yPodCountsByPhase? podCountsByPhase;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yNamespaceRecord &&
    _deepEquality.equals(other.meta, meta) &&
    other.namespaceCPU == namespaceCPU &&
    other.namespaceMemory == namespaceMemory &&
    other.namespaceName == namespaceName &&
    other.podCountsByPhase == podCountsByPhase;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (meta.hashCode) +
    (namespaceCPU == null ? 0 : namespaceCPU!.hashCode) +
    (namespaceMemory == null ? 0 : namespaceMemory!.hashCode) +
    (namespaceName == null ? 0 : namespaceName!.hashCode) +
    (podCountsByPhase == null ? 0 : podCountsByPhase!.hashCode);

  @override
  String toString() => 'O11yNamespaceRecord[meta=$meta, namespaceCPU=$namespaceCPU, namespaceMemory=$namespaceMemory, namespaceName=$namespaceName, podCountsByPhase=$podCountsByPhase]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'meta'] = this.meta;
    if (this.namespaceCPU != null) {
      json[r'namespaceCPU'] = this.namespaceCPU;
    } else {
      json[r'namespaceCPU'] = null;
    }
    if (this.namespaceMemory != null) {
      json[r'namespaceMemory'] = this.namespaceMemory;
    } else {
      json[r'namespaceMemory'] = null;
    }
    if (this.namespaceName != null) {
      json[r'namespaceName'] = this.namespaceName;
    } else {
      json[r'namespaceName'] = null;
    }
    if (this.podCountsByPhase != null) {
      json[r'podCountsByPhase'] = this.podCountsByPhase;
    } else {
      json[r'podCountsByPhase'] = null;
    }
    return json;
  }

  /// Returns a new [O11yNamespaceRecord] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yNamespaceRecord? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yNamespaceRecord[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yNamespaceRecord[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yNamespaceRecord(
        meta: mapCastOfType<String, String>(json, r'meta') ?? const {},
        namespaceCPU: mapValueOfType<double>(json, r'namespaceCPU'),
        namespaceMemory: mapValueOfType<double>(json, r'namespaceMemory'),
        namespaceName: mapValueOfType<String>(json, r'namespaceName'),
        podCountsByPhase: O11yPodCountsByPhase.fromJson(json[r'podCountsByPhase']),
      );
    }
    return null;
  }

  static List<O11yNamespaceRecord> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yNamespaceRecord>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yNamespaceRecord.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yNamespaceRecord> mapFromJson(dynamic json) {
    final map = <String, O11yNamespaceRecord>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yNamespaceRecord.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yNamespaceRecord-objects as value to a dart map
  static Map<String, List<O11yNamespaceRecord>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yNamespaceRecord>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yNamespaceRecord.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

