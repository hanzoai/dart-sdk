//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class TreeFile {
  /// Returns a new [TreeFile] instance.
  TreeFile({
    this.children = const [],
    this.createdTime,
    this.isLeaf,
    this.key,
    this.size,
    this.title,
    this.url,
  });

  List<TreeFile> children;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? createdTime;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isLeaf;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? key;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? size;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? title;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? url;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TreeFile &&
    _deepEquality.equals(other.children, children) &&
    other.createdTime == createdTime &&
    other.isLeaf == isLeaf &&
    other.key == key &&
    other.size == size &&
    other.title == title &&
    other.url == url;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (children.hashCode) +
    (createdTime == null ? 0 : createdTime!.hashCode) +
    (isLeaf == null ? 0 : isLeaf!.hashCode) +
    (key == null ? 0 : key!.hashCode) +
    (size == null ? 0 : size!.hashCode) +
    (title == null ? 0 : title!.hashCode) +
    (url == null ? 0 : url!.hashCode);

  @override
  String toString() => 'TreeFile[children=$children, createdTime=$createdTime, isLeaf=$isLeaf, key=$key, size=$size, title=$title, url=$url]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'children'] = this.children;
    if (this.createdTime != null) {
      json[r'createdTime'] = this.createdTime;
    } else {
      json[r'createdTime'] = null;
    }
    if (this.isLeaf != null) {
      json[r'isLeaf'] = this.isLeaf;
    } else {
      json[r'isLeaf'] = null;
    }
    if (this.key != null) {
      json[r'key'] = this.key;
    } else {
      json[r'key'] = null;
    }
    if (this.size != null) {
      json[r'size'] = this.size;
    } else {
      json[r'size'] = null;
    }
    if (this.title != null) {
      json[r'title'] = this.title;
    } else {
      json[r'title'] = null;
    }
    if (this.url != null) {
      json[r'url'] = this.url;
    } else {
      json[r'url'] = null;
    }
    return json;
  }

  /// Returns a new [TreeFile] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TreeFile? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TreeFile[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TreeFile[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TreeFile(
        children: TreeFile.listFromJson(json[r'children']),
        createdTime: mapValueOfType<String>(json, r'createdTime'),
        isLeaf: mapValueOfType<bool>(json, r'isLeaf'),
        key: mapValueOfType<String>(json, r'key'),
        size: mapValueOfType<int>(json, r'size'),
        title: mapValueOfType<String>(json, r'title'),
        url: mapValueOfType<String>(json, r'url'),
      );
    }
    return null;
  }

  static List<TreeFile> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TreeFile>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TreeFile.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TreeFile> mapFromJson(dynamic json) {
    final map = <String, TreeFile>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TreeFile.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TreeFile-objects as value to a dart map
  static Map<String, List<TreeFile>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TreeFile>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TreeFile.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

