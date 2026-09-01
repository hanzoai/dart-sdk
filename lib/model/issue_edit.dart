//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class IssueEdit {
  /// Returns a new [IssueEdit] instance.
  IssueEdit({
    this.assignee,
    this.description,
    this.key,
    this.num_,
    this.priority,
    this.status,
    this.title,
  });
  /// Assignee hands the work to somebody — a person or an agent, by the name they are known by on the forge. \"\" TAKES IT OFF whoever holds it, which is why this is a pointer: absent leaves the holder alone.  It is the other half of `claim`, which that handler already named: a claim takes work for the CALLER and refuses to name anyone else, because giving work away is a different act with different authority. This is that act, and until it existed a board could only be worked by whoever clicked first — an agent could never be given anything.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? assignee;

  /// Description rewrites the body.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  /// Key is the board — the repository name, from the path.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? key;

  /// Num is the issue number on that repository, from the path.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? num_;

  /// Priority re-prioritises it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? priority;

  /// Status moves the card to another column.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  /// Title renames the work item.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? title;

  @override
  bool operator ==(Object other) => identical(this, other) || other is IssueEdit &&
    other.assignee == assignee &&
    other.description == description &&
    other.key == key &&
    other.num_ == num_ &&
    other.priority == priority &&
    other.status == status &&
    other.title == title;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (assignee == null ? 0 : assignee!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (key == null ? 0 : key!.hashCode) +
    (num_ == null ? 0 : num_!.hashCode) +
    (priority == null ? 0 : priority!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (title == null ? 0 : title!.hashCode);

  @override
  String toString() => 'IssueEdit[assignee=$assignee, description=$description, key=$key, num_=$num_, priority=$priority, status=$status, title=$title]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.assignee != null) {
      json[r'assignee'] = this.assignee;
    } else {
      json[r'assignee'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.key != null) {
      json[r'key'] = this.key;
    } else {
      json[r'key'] = null;
    }
    if (this.num_ != null) {
      json[r'num'] = this.num_;
    } else {
      json[r'num'] = null;
    }
    if (this.priority != null) {
      json[r'priority'] = this.priority;
    } else {
      json[r'priority'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.title != null) {
      json[r'title'] = this.title;
    } else {
      json[r'title'] = null;
    }
    return json;
  }

  /// Returns a new [IssueEdit] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IssueEdit? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "IssueEdit[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "IssueEdit[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return IssueEdit(
        assignee: mapValueOfType<String>(json, r'assignee'),
        description: mapValueOfType<String>(json, r'description'),
        key: mapValueOfType<String>(json, r'key'),
        num_: mapValueOfType<int>(json, r'num'),
        priority: mapValueOfType<String>(json, r'priority'),
        status: mapValueOfType<String>(json, r'status'),
        title: mapValueOfType<String>(json, r'title'),
      );
    }
    return null;
  }

  static List<IssueEdit> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <IssueEdit>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IssueEdit.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IssueEdit> mapFromJson(dynamic json) {
    final map = <String, IssueEdit>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IssueEdit.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IssueEdit-objects as value to a dart map
  static Map<String, List<IssueEdit>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<IssueEdit>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = IssueEdit.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

