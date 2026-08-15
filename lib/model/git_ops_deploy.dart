//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class GitOpsDeploy {
  /// Returns a new [GitOpsDeploy] instance.
  GitOpsDeploy({
    this.automated,
    this.deployedAt,
    this.id,
    this.revision,
    this.startedAt,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? automated;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? deployedAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? revision;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? startedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GitOpsDeploy &&
    other.automated == automated &&
    other.deployedAt == deployedAt &&
    other.id == id &&
    other.revision == revision &&
    other.startedAt == startedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (automated == null ? 0 : automated!.hashCode) +
    (deployedAt == null ? 0 : deployedAt!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (revision == null ? 0 : revision!.hashCode) +
    (startedAt == null ? 0 : startedAt!.hashCode);

  @override
  String toString() => 'GitOpsDeploy[automated=$automated, deployedAt=$deployedAt, id=$id, revision=$revision, startedAt=$startedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.automated != null) {
      json[r'automated'] = this.automated;
    } else {
      json[r'automated'] = null;
    }
    if (this.deployedAt != null) {
      json[r'deployedAt'] = this.deployedAt;
    } else {
      json[r'deployedAt'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.revision != null) {
      json[r'revision'] = this.revision;
    } else {
      json[r'revision'] = null;
    }
    if (this.startedAt != null) {
      json[r'startedAt'] = this.startedAt;
    } else {
      json[r'startedAt'] = null;
    }
    return json;
  }

  /// Returns a new [GitOpsDeploy] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GitOpsDeploy? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GitOpsDeploy[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GitOpsDeploy[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GitOpsDeploy(
        automated: mapValueOfType<bool>(json, r'automated'),
        deployedAt: mapValueOfType<String>(json, r'deployedAt'),
        id: mapValueOfType<int>(json, r'id'),
        revision: mapValueOfType<String>(json, r'revision'),
        startedAt: mapValueOfType<String>(json, r'startedAt'),
      );
    }
    return null;
  }

  static List<GitOpsDeploy> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GitOpsDeploy>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GitOpsDeploy.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GitOpsDeploy> mapFromJson(dynamic json) {
    final map = <String, GitOpsDeploy>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GitOpsDeploy.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GitOpsDeploy-objects as value to a dart map
  static Map<String, List<GitOpsDeploy>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GitOpsDeploy>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GitOpsDeploy.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

