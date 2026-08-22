//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class BlobJSON {
  /// Returns a new [BlobJSON] instance.
  BlobJSON({
    this.binary,
    this.content,
    this.encoding,
    this.path,
    this.size,
    this.truncated,
  });
  /// Binary marks content git could not treat as text; it comes back base64.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? binary;

  /// Content is the file's bytes, empty when Truncated.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? content;

  /// Encoding is how Content is carried: \"utf8\" verbatim, or \"base64\".
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? encoding;

  /// Path is the file's repo-relative path.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? path;

  /// Size is the file's byte length in the repo, whatever was returned below.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? size;

  /// Truncated marks a file past the 1 MiB view cap. No content is sent — clone the repo for it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? truncated;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BlobJSON &&
    other.binary == binary &&
    other.content == content &&
    other.encoding == encoding &&
    other.path == path &&
    other.size == size &&
    other.truncated == truncated;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (binary == null ? 0 : binary!.hashCode) +
    (content == null ? 0 : content!.hashCode) +
    (encoding == null ? 0 : encoding!.hashCode) +
    (path == null ? 0 : path!.hashCode) +
    (size == null ? 0 : size!.hashCode) +
    (truncated == null ? 0 : truncated!.hashCode);

  @override
  String toString() => 'BlobJSON[binary=$binary, content=$content, encoding=$encoding, path=$path, size=$size, truncated=$truncated]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.binary != null) {
      json[r'binary'] = this.binary;
    } else {
      json[r'binary'] = null;
    }
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
    if (this.size != null) {
      json[r'size'] = this.size;
    } else {
      json[r'size'] = null;
    }
    if (this.truncated != null) {
      json[r'truncated'] = this.truncated;
    } else {
      json[r'truncated'] = null;
    }
    return json;
  }

  /// Returns a new [BlobJSON] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BlobJSON? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "BlobJSON[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "BlobJSON[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return BlobJSON(
        binary: mapValueOfType<bool>(json, r'binary'),
        content: mapValueOfType<String>(json, r'content'),
        encoding: mapValueOfType<String>(json, r'encoding'),
        path: mapValueOfType<String>(json, r'path'),
        size: mapValueOfType<int>(json, r'size'),
        truncated: mapValueOfType<bool>(json, r'truncated'),
      );
    }
    return null;
  }

  static List<BlobJSON> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BlobJSON>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BlobJSON.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, BlobJSON> mapFromJson(dynamic json) {
    final map = <String, BlobJSON>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BlobJSON.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of BlobJSON-objects as value to a dart map
  static Map<String, List<BlobJSON>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<BlobJSON>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = BlobJSON.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

