//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class PushFile {
  /// Returns a new [PushFile] instance.
  PushFile({
    this.content,
    this.encoding,
    this.path,
  });

  /// Content is the file's bytes, carried per Encoding.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? content;

  /// Encoding is \"base64\", or \"utf-8\" (the default, also \"utf8\" / \"text\").
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? encoding;

  /// Path is repo-relative. Absolute or traversing paths are refused.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? path;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PushFile &&
    other.content == content &&
    other.encoding == encoding &&
    other.path == path;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (content == null ? 0 : content!.hashCode) +
    (encoding == null ? 0 : encoding!.hashCode) +
    (path == null ? 0 : path!.hashCode);

  @override
  String toString() => 'PushFile[content=$content, encoding=$encoding, path=$path]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.content != null) {
      json[r'content'] = this.content;
    } else {
      json[r'content'] = null;
    }
    if (this.encoding != null) {
      json[r'encoding'] = this.encoding;
    } else {
      json[r'encoding'] = null;
    }
    if (this.path != null) {
      json[r'path'] = this.path;
    } else {
      json[r'path'] = null;
    }
    return json;
  }

  /// Returns a new [PushFile] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PushFile? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PushFile[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PushFile[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PushFile(
        content: mapValueOfType<String>(json, r'content'),
        encoding: mapValueOfType<String>(json, r'encoding'),
        path: mapValueOfType<String>(json, r'path'),
      );
    }
    return null;
  }

  static List<PushFile> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PushFile>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PushFile.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PushFile> mapFromJson(dynamic json) {
    final map = <String, PushFile>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PushFile.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PushFile-objects as value to a dart map
  static Map<String, List<PushFile>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PushFile>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PushFile.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

