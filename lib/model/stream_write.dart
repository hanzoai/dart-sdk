//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class StreamWrite {
  /// Returns a new [StreamWrite] instance.
  StreamWrite({
    this.discard,
    this.maxAge,
    this.maxBytes,
    this.maxMsgs,
    this.name,
    this.retention,
    this.storage,
    this.subjects = const [],
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? discard;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? maxAge;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? maxBytes;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? maxMsgs;

  /// Name is the stream's name within the org: 1–64 of [A-Za-z0-9_], no dash.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? retention;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? storage;

  List<String> subjects;

  @override
  bool operator ==(Object other) => identical(this, other) || other is StreamWrite &&
    other.discard == discard &&
    other.maxAge == maxAge &&
    other.maxBytes == maxBytes &&
    other.maxMsgs == maxMsgs &&
    other.name == name &&
    other.retention == retention &&
    other.storage == storage &&
    _deepEquality.equals(other.subjects, subjects);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (discard == null ? 0 : discard!.hashCode) +
    (maxAge == null ? 0 : maxAge!.hashCode) +
    (maxBytes == null ? 0 : maxBytes!.hashCode) +
    (maxMsgs == null ? 0 : maxMsgs!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (retention == null ? 0 : retention!.hashCode) +
    (storage == null ? 0 : storage!.hashCode) +
    (subjects.hashCode);

  @override
  String toString() => 'StreamWrite[discard=$discard, maxAge=$maxAge, maxBytes=$maxBytes, maxMsgs=$maxMsgs, name=$name, retention=$retention, storage=$storage, subjects=$subjects]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.discard != null) {
      json[r'discard'] = this.discard;
    } else {
      json[r'discard'] = null;
    }
    if (this.maxAge != null) {
      json[r'maxAge'] = this.maxAge;
    } else {
      json[r'maxAge'] = null;
    }
    if (this.maxBytes != null) {
      json[r'maxBytes'] = this.maxBytes;
    } else {
      json[r'maxBytes'] = null;
    }
    if (this.maxMsgs != null) {
      json[r'maxMsgs'] = this.maxMsgs;
    } else {
      json[r'maxMsgs'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.retention != null) {
      json[r'retention'] = this.retention;
    } else {
      json[r'retention'] = null;
    }
    if (this.storage != null) {
      json[r'storage'] = this.storage;
    } else {
      json[r'storage'] = null;
    }
      json[r'subjects'] = this.subjects;
    return json;
  }

  /// Returns a new [StreamWrite] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static StreamWrite? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "StreamWrite[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "StreamWrite[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return StreamWrite(
        discard: mapValueOfType<String>(json, r'discard'),
        maxAge: mapValueOfType<int>(json, r'maxAge'),
        maxBytes: mapValueOfType<int>(json, r'maxBytes'),
        maxMsgs: mapValueOfType<int>(json, r'maxMsgs'),
        name: mapValueOfType<String>(json, r'name'),
        retention: mapValueOfType<String>(json, r'retention'),
        storage: mapValueOfType<String>(json, r'storage'),
        subjects: json[r'subjects'] is Iterable
            ? (json[r'subjects'] as Iterable).cast<String>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<StreamWrite> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <StreamWrite>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = StreamWrite.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, StreamWrite> mapFromJson(dynamic json) {
    final map = <String, StreamWrite>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = StreamWrite.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of StreamWrite-objects as value to a dart map
  static Map<String, List<StreamWrite>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<StreamWrite>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = StreamWrite.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

