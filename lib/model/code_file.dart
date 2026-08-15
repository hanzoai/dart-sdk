//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class CodeFile {
  /// Returns a new [CodeFile] instance.
  CodeFile({
    this.id,
    this.name,
    this.sessionId,
    this.storageSessionId,
  });

  /// ID is the file's path RELATIVE to its session's artifact directory, which is also how it is fetched: GET /v1/download/{session}/{id}.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// Name is the display name. On an ANSWER it carries the `{session}/{id}` identifier whole, because the client matches on that prefix.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// SessionID is the other accepted spelling of the same fact on the way IN. Both are read; whichever is set wins.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? sessionId;

  /// StorageSessionID names the session holding the bytes, and is the spelling the answer always uses.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? storageSessionId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CodeFile &&
    other.id == id &&
    other.name == name &&
    other.sessionId == sessionId &&
    other.storageSessionId == storageSessionId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (sessionId == null ? 0 : sessionId!.hashCode) +
    (storageSessionId == null ? 0 : storageSessionId!.hashCode);

  @override
  String toString() => 'CodeFile[id=$id, name=$name, sessionId=$sessionId, storageSessionId=$storageSessionId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.sessionId != null) {
      json[r'session_id'] = this.sessionId;
    } else {
      json[r'session_id'] = null;
    }
    if (this.storageSessionId != null) {
      json[r'storage_session_id'] = this.storageSessionId;
    } else {
      json[r'storage_session_id'] = null;
    }
    return json;
  }

  /// Returns a new [CodeFile] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CodeFile? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CodeFile[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CodeFile[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CodeFile(
        id: mapValueOfType<String>(json, r'id'),
        name: mapValueOfType<String>(json, r'name'),
        sessionId: mapValueOfType<String>(json, r'session_id'),
        storageSessionId: mapValueOfType<String>(json, r'storage_session_id'),
      );
    }
    return null;
  }

  static List<CodeFile> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CodeFile>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CodeFile.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CodeFile> mapFromJson(dynamic json) {
    final map = <String, CodeFile>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CodeFile.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CodeFile-objects as value to a dart map
  static Map<String, List<CodeFile>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CodeFile>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CodeFile.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

