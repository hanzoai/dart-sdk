//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ReconcileSource {
  /// Returns a new [ReconcileSource] instance.
  ReconcileSource({
    this.path,
    this.ref,
    this.repo,
  });
  /// Path is the directory WITHIN the repository that is rendered — everything outside it is not this plane's desired state and is never applied.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? path;

  /// Ref is the branch or tag the revision was resolved from.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? ref;

  /// Repo is the clone URL of the repository holding the desired state.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? repo;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ReconcileSource &&
    other.path == path &&
    other.ref == ref &&
    other.repo == repo;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (path == null ? 0 : path!.hashCode) +
    (ref == null ? 0 : ref!.hashCode) +
    (repo == null ? 0 : repo!.hashCode);

  @override
  String toString() => 'ReconcileSource[path=$path, ref=$ref, repo=$repo]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.path != null) {
      json[r'path'] = this.path;
    } else {
      json[r'path'] = null;
    }
    if (this.ref != null) {
      json[r'ref'] = this.ref;
    } else {
      json[r'ref'] = null;
    }
    if (this.repo != null) {
      json[r'repo'] = this.repo;
    } else {
      json[r'repo'] = null;
    }
    return json;
  }

  /// Returns a new [ReconcileSource] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ReconcileSource? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ReconcileSource[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ReconcileSource[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ReconcileSource(
        path: mapValueOfType<String>(json, r'path'),
        ref: mapValueOfType<String>(json, r'ref'),
        repo: mapValueOfType<String>(json, r'repo'),
      );
    }
    return null;
  }

  static List<ReconcileSource> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ReconcileSource>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ReconcileSource.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ReconcileSource> mapFromJson(dynamic json) {
    final map = <String, ReconcileSource>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ReconcileSource.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ReconcileSource-objects as value to a dart map
  static Map<String, List<ReconcileSource>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ReconcileSource>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ReconcileSource.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

