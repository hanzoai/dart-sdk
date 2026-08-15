//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ArgoMeta {
  /// Returns a new [ArgoMeta] instance.
  ArgoMeta({
    this.creationTimestamp,
    this.labels = const {},
    this.name,
    this.namespace,
    this.uid,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? creationTimestamp;

  Map<String, String> labels;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? namespace;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? uid;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ArgoMeta &&
    other.creationTimestamp == creationTimestamp &&
    _deepEquality.equals(other.labels, labels) &&
    other.name == name &&
    other.namespace == namespace &&
    other.uid == uid;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (creationTimestamp == null ? 0 : creationTimestamp!.hashCode) +
    (labels.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (namespace == null ? 0 : namespace!.hashCode) +
    (uid == null ? 0 : uid!.hashCode);

  @override
  String toString() => 'ArgoMeta[creationTimestamp=$creationTimestamp, labels=$labels, name=$name, namespace=$namespace, uid=$uid]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.creationTimestamp != null) {
      json[r'creationTimestamp'] = this.creationTimestamp;
    } else {
      json[r'creationTimestamp'] = null;
    }
      json[r'labels'] = this.labels;
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.namespace != null) {
      json[r'namespace'] = this.namespace;
    } else {
      json[r'namespace'] = null;
    }
    if (this.uid != null) {
      json[r'uid'] = this.uid;
    } else {
      json[r'uid'] = null;
    }
    return json;
  }

  /// Returns a new [ArgoMeta] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ArgoMeta? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ArgoMeta[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ArgoMeta[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ArgoMeta(
        creationTimestamp: mapValueOfType<String>(json, r'creationTimestamp'),
        labels: mapCastOfType<String, String>(json, r'labels') ?? const {},
        name: mapValueOfType<String>(json, r'name'),
        namespace: mapValueOfType<String>(json, r'namespace'),
        uid: mapValueOfType<String>(json, r'uid'),
      );
    }
    return null;
  }

  static List<ArgoMeta> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ArgoMeta>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ArgoMeta.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ArgoMeta> mapFromJson(dynamic json) {
    final map = <String, ArgoMeta>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ArgoMeta.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ArgoMeta-objects as value to a dart map
  static Map<String, List<ArgoMeta>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ArgoMeta>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ArgoMeta.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

