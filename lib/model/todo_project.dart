//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class TodoProject {
  /// Returns a new [TodoProject] instance.
  TodoProject({
    this.createdAt,
    this.description,
    this.id,
    this.key,
    this.name,
    this.org,
    this.updatedAt,
  });
  /// CreatedAt is when the board was created, in unix seconds. 0 on a forge board for the same reason Description is absent.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? createdAt;

  /// Description is whatever an index board was created with. Absent on a forge board: this projection takes the repository's name and nothing else about the repository.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  /// ID is the board's opaque handle, and it is NOT how you address it — Key is. Its shape says which source answered: a forge board's is the repository's full name (\"hanzoai/cloud\"), an index board's a minted \"prj_\" id.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// Key addresses the board everywhere else — /v1/todo/projects/<key>/issues — and prefixes every issue identifier on it. An index board's key is 2-8 uppercase alphanumerics starting with a letter (\"ENG\", \"OPS2\") and is matched case-insensitively; a forge board's is the repository name as the forge spells it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? key;

  /// Name is the board's display name. For a forge board it is the repository name, so it equals Key; an index board carries its own.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// Org is the IAM org the board belongs to, taken from the validated principal and never from the request. Every board a caller can see is in it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? org;

  /// UpdatedAt is when the board record last changed, in unix seconds — the BOARD, not the work on it, so filing an issue does not move it. 0 on a forge board.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TodoProject &&
    other.createdAt == createdAt &&
    other.description == description &&
    other.id == id &&
    other.key == key &&
    other.name == name &&
    other.org == org &&
    other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (key == null ? 0 : key!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (org == null ? 0 : org!.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode);

  @override
  String toString() => 'TodoProject[createdAt=$createdAt, description=$description, id=$id, key=$key, name=$name, org=$org, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.createdAt != null) {
      json[r'createdAt'] = this.createdAt;
    } else {
      json[r'createdAt'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.key != null) {
      json[r'key'] = this.key;
    } else {
      json[r'key'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.org != null) {
      json[r'org'] = this.org;
    } else {
      json[r'org'] = null;
    }
    if (this.updatedAt != null) {
      json[r'updatedAt'] = this.updatedAt;
    } else {
      json[r'updatedAt'] = null;
    }
    return json;
  }

  /// Returns a new [TodoProject] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TodoProject? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TodoProject[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TodoProject[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TodoProject(
        createdAt: mapValueOfType<int>(json, r'createdAt'),
        description: mapValueOfType<String>(json, r'description'),
        id: mapValueOfType<String>(json, r'id'),
        key: mapValueOfType<String>(json, r'key'),
        name: mapValueOfType<String>(json, r'name'),
        org: mapValueOfType<String>(json, r'org'),
        updatedAt: mapValueOfType<int>(json, r'updatedAt'),
      );
    }
    return null;
  }

  static List<TodoProject> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TodoProject>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TodoProject.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TodoProject> mapFromJson(dynamic json) {
    final map = <String, TodoProject>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TodoProject.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TodoProject-objects as value to a dart map
  static Map<String, List<TodoProject>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TodoProject>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TodoProject.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

