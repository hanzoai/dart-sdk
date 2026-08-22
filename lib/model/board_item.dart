//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class BoardItem {
  /// Returns a new [BoardItem] instance.
  BoardItem({
    this.doctype,
    this.name,
    this.project,
    this.status,
    this.title,
    this.updatedAt,
  });
  /// DocType is which content type the row came from: Campaign, SocialPost or Asset. The board spans all three at once, so this is what tells them apart.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? doctype;

  /// Name is the document within that type. (doctype, name) is the pair every /v1/content write addresses an item by.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// Project is the brand/site sub-scope within the org. Absent for an item held at org level rather than under one brand.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? project;

  /// Status is the lifecycle state: draft, in_review, approved, queued, published or archived. It decides what a reader may see — the public site pulls exactly \"published\" and nothing else — so it is a visibility fact, not a workflow label.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  /// Title is the item's headline, read from its type's own title field. Empty for a document that has none.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? title;

  /// UpdatedAt is unix seconds of the document's last write, and the key the board sorts on, newest first.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BoardItem &&
    other.doctype == doctype &&
    other.name == name &&
    other.project == project &&
    other.status == status &&
    other.title == title &&
    other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (doctype == null ? 0 : doctype!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (project == null ? 0 : project!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (title == null ? 0 : title!.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode);

  @override
  String toString() => 'BoardItem[doctype=$doctype, name=$name, project=$project, status=$status, title=$title, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.doctype != null) {
      json[r'doctype'] = this.doctype;
    } else {
      json[r'doctype'] = null;
    }
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
    if (this.updatedAt != null) {
      json[r'updatedAt'] = this.updatedAt;
    } else {
      json[r'updatedAt'] = null;
    }
    return json;
  }

  /// Returns a new [BoardItem] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BoardItem? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "BoardItem[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "BoardItem[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return BoardItem(
        doctype: mapValueOfType<String>(json, r'doctype'),
        name: mapValueOfType<String>(json, r'name'),
        project: mapValueOfType<String>(json, r'project'),
        status: mapValueOfType<String>(json, r'status'),
        title: mapValueOfType<String>(json, r'title'),
        updatedAt: mapValueOfType<int>(json, r'updatedAt'),
      );
    }
    return null;
  }

  static List<BoardItem> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BoardItem>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BoardItem.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, BoardItem> mapFromJson(dynamic json) {
    final map = <String, BoardItem>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BoardItem.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of BoardItem-objects as value to a dart map
  static Map<String, List<BoardItem>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<BoardItem>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = BoardItem.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

