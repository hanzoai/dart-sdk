//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ObjectItem {
  /// Returns a new [ObjectItem] instance.
  ObjectItem({
    this.etag,
    this.isDir,
    this.key,
    this.lastModified,
    this.size,
  });
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? etag;

  /// true for a folder (common prefix)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isDir;

  /// key RELATIVE to the requested prefix
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? key;

  /// unix seconds (0 for a folder)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? lastModified;

  /// bytes (0 for a folder)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? size;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ObjectItem &&
    other.etag == etag &&
    other.isDir == isDir &&
    other.key == key &&
    other.lastModified == lastModified &&
    other.size == size;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (etag == null ? 0 : etag!.hashCode) +
    (isDir == null ? 0 : isDir!.hashCode) +
    (key == null ? 0 : key!.hashCode) +
    (lastModified == null ? 0 : lastModified!.hashCode) +
    (size == null ? 0 : size!.hashCode);

  @override
  String toString() => 'ObjectItem[etag=$etag, isDir=$isDir, key=$key, lastModified=$lastModified, size=$size]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.etag != null) {
      json[r'etag'] = this.etag;
    } else {
      json[r'etag'] = null;
    }
    if (this.isDir != null) {
      json[r'isDir'] = this.isDir;
    } else {
      json[r'isDir'] = null;
    }
    if (this.key != null) {
      json[r'key'] = this.key;
    } else {
      json[r'key'] = null;
    }
    if (this.lastModified != null) {
      json[r'lastModified'] = this.lastModified;
    } else {
      json[r'lastModified'] = null;
    }
    if (this.size != null) {
      json[r'size'] = this.size;
    } else {
      json[r'size'] = null;
    }
    return json;
  }

  /// Returns a new [ObjectItem] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ObjectItem? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ObjectItem[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ObjectItem[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ObjectItem(
        etag: mapValueOfType<String>(json, r'etag'),
        isDir: mapValueOfType<bool>(json, r'isDir'),
        key: mapValueOfType<String>(json, r'key'),
        lastModified: mapValueOfType<int>(json, r'lastModified'),
        size: mapValueOfType<int>(json, r'size'),
      );
    }
    return null;
  }

  static List<ObjectItem> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ObjectItem>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ObjectItem.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ObjectItem> mapFromJson(dynamic json) {
    final map = <String, ObjectItem>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ObjectItem.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ObjectItem-objects as value to a dart map
  static Map<String, List<ObjectItem>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ObjectItem>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ObjectItem.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

