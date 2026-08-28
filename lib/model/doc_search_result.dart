//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class DocSearchResult {
  /// Returns a new [DocSearchResult] instance.
  DocSearchResult({
    this.breadcrumbs = const [],
    this.content,
    this.fileId,
    this.id,
    this.title,
    this.type,
    this.url,
  });
  List<String> breadcrumbs;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? content;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? fileId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

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
  String? type;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? url;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DocSearchResult &&
    _deepEquality.equals(other.breadcrumbs, breadcrumbs) &&
    other.content == content &&
    other.fileId == fileId &&
    other.id == id &&
    other.title == title &&
    other.type == type &&
    other.url == url;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (breadcrumbs.hashCode) +
    (content == null ? 0 : content!.hashCode) +
    (fileId == null ? 0 : fileId!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (title == null ? 0 : title!.hashCode) +
    (type == null ? 0 : type!.hashCode) +
    (url == null ? 0 : url!.hashCode);

  @override
  String toString() => 'DocSearchResult[breadcrumbs=$breadcrumbs, content=$content, fileId=$fileId, id=$id, title=$title, type=$type, url=$url]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'breadcrumbs'] = this.breadcrumbs;
    if (this.content != null) {
      json[r'content'] = this.content;
    } else {
      json[r'content'] = null;
    }
    if (this.fileId != null) {
      json[r'file_id'] = this.fileId;
    } else {
      json[r'file_id'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.title != null) {
      json[r'title'] = this.title;
    } else {
      json[r'title'] = null;
    }
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
    if (this.url != null) {
      json[r'url'] = this.url;
    } else {
      json[r'url'] = null;
    }
    return json;
  }

  /// Returns a new [DocSearchResult] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DocSearchResult? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DocSearchResult[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DocSearchResult[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DocSearchResult(
        breadcrumbs: json[r'breadcrumbs'] is Iterable
            ? (json[r'breadcrumbs'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        content: mapValueOfType<String>(json, r'content'),
        fileId: mapValueOfType<String>(json, r'file_id'),
        id: mapValueOfType<String>(json, r'id'),
        title: mapValueOfType<String>(json, r'title'),
        type: mapValueOfType<String>(json, r'type'),
        url: mapValueOfType<String>(json, r'url'),
      );
    }
    return null;
  }

  static List<DocSearchResult> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DocSearchResult>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DocSearchResult.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DocSearchResult> mapFromJson(dynamic json) {
    final map = <String, DocSearchResult>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DocSearchResult.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DocSearchResult-objects as value to a dart map
  static Map<String, List<DocSearchResult>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DocSearchResult>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DocSearchResult.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

