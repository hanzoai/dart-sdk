//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ArgoSource {
  /// Returns a new [ArgoSource] instance.
  ArgoSource({
    this.path,
    this.repoURL,
    this.targetRevision,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? path;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? repoURL;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? targetRevision;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ArgoSource &&
    other.path == path &&
    other.repoURL == repoURL &&
    other.targetRevision == targetRevision;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (path == null ? 0 : path!.hashCode) +
    (repoURL == null ? 0 : repoURL!.hashCode) +
    (targetRevision == null ? 0 : targetRevision!.hashCode);

  @override
  String toString() => 'ArgoSource[path=$path, repoURL=$repoURL, targetRevision=$targetRevision]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.path != null) {
      json[r'path'] = this.path;
    } else {
      json[r'path'] = null;
    }
    if (this.repoURL != null) {
      json[r'repoURL'] = this.repoURL;
    } else {
      json[r'repoURL'] = null;
    }
    if (this.targetRevision != null) {
      json[r'targetRevision'] = this.targetRevision;
    } else {
      json[r'targetRevision'] = null;
    }
    return json;
  }

  /// Returns a new [ArgoSource] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ArgoSource? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ArgoSource[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ArgoSource[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ArgoSource(
        path: mapValueOfType<String>(json, r'path'),
        repoURL: mapValueOfType<String>(json, r'repoURL'),
        targetRevision: mapValueOfType<String>(json, r'targetRevision'),
      );
    }
    return null;
  }

  static List<ArgoSource> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ArgoSource>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ArgoSource.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ArgoSource> mapFromJson(dynamic json) {
    final map = <String, ArgoSource>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ArgoSource.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ArgoSource-objects as value to a dart map
  static Map<String, List<ArgoSource>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ArgoSource>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ArgoSource.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

