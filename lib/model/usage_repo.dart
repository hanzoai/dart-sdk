//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class UsageRepo {
  /// Returns a new [UsageRepo] instance.
  UsageRepo({
    this.name,
    this.project,
    this.sizeBytes,
  });

  /// Name is the repo's org-unique handle.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// Project is the sub-scope the repo lives in; absent for the default scope.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? project;

  /// SizeBytes is the repo's on-disk size at its last measurement.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? sizeBytes;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UsageRepo &&
    other.name == name &&
    other.project == project &&
    other.sizeBytes == sizeBytes;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name == null ? 0 : name!.hashCode) +
    (project == null ? 0 : project!.hashCode) +
    (sizeBytes == null ? 0 : sizeBytes!.hashCode);

  @override
  String toString() => 'UsageRepo[name=$name, project=$project, sizeBytes=$sizeBytes]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.project != null) {
      json[r'project'] = this.project;
    } else {
      json[r'project'] = null;
    }
    if (this.sizeBytes != null) {
      json[r'sizeBytes'] = this.sizeBytes;
    } else {
      json[r'sizeBytes'] = null;
    }
    return json;
  }

  /// Returns a new [UsageRepo] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UsageRepo? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UsageRepo[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UsageRepo[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UsageRepo(
        name: mapValueOfType<String>(json, r'name'),
        project: mapValueOfType<String>(json, r'project'),
        sizeBytes: mapValueOfType<int>(json, r'sizeBytes'),
      );
    }
    return null;
  }

  static List<UsageRepo> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UsageRepo>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UsageRepo.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UsageRepo> mapFromJson(dynamic json) {
    final map = <String, UsageRepo>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UsageRepo.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UsageRepo-objects as value to a dart map
  static Map<String, List<UsageRepo>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UsageRepo>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UsageRepo.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

