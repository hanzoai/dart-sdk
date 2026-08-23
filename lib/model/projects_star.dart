//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ProjectsStar {
  /// Returns a new [ProjectsStar] instance.
  ProjectsStar({
    this.starred,
  });
  /// Starred is whether THIS caller has starred the project after the toggle — their own bookmark, not a property the project carries, so two people see two answers for one project.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? starred;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ProjectsStar &&
    other.starred == starred;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (starred == null ? 0 : starred!.hashCode);

  @override
  String toString() => 'ProjectsStar[starred=$starred]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.starred != null) {
      json[r'starred'] = this.starred;
    } else {
      json[r'starred'] = null;
    }
    return json;
  }

  /// Returns a new [ProjectsStar] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ProjectsStar? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ProjectsStar[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ProjectsStar[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ProjectsStar(
        starred: mapValueOfType<bool>(json, r'starred'),
      );
    }
    return null;
  }

  static List<ProjectsStar> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ProjectsStar>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ProjectsStar.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ProjectsStar> mapFromJson(dynamic json) {
    final map = <String, ProjectsStar>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ProjectsStar.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ProjectsStar-objects as value to a dart map
  static Map<String, List<ProjectsStar>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ProjectsStar>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ProjectsStar.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

