//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class StreamRecord {
  /// Returns a new [StreamRecord] instance.
  StreamRecord({
    this.bytes,
    this.consumers,
    this.created,
    this.discard,
    this.firstSeq,
    this.lastSeq,
    this.maxAge,
    this.maxBytes,
    this.maxMsgs,
    this.messages,
    this.name,
    this.retention,
    this.storage,
    this.subjects = const [],
  });

  /// Bytes is how many bytes the stream holds right now.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? bytes;

  /// Consumers is how many consumers the stream carries.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? consumers;

  /// Created is when the stream was created, RFC3339.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? created;

  /// Discard says which end gives way at the limits: old or new.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? discard;

  /// FirstSeq is the sequence of the oldest retained message.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? firstSeq;

  /// LastSeq is the sequence of the newest message.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? lastSeq;

  /// MaxAge is the age cap in seconds; 0 means unlimited.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? maxAge;

  /// MaxBytes is the retained-byte cap; -1 means unlimited.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? maxBytes;

  /// MaxMsgs is the retained-message cap; -1 means unlimited.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? maxMsgs;

  /// Messages is how many messages the stream holds right now.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? messages;

  /// Name is the stream's name within the org.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// Retention is the discipline: limits, interest or workqueue.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? retention;

  /// Storage is the backend: file or memory.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? storage;

  /// Subjects are the subjects it captures, in the org's namespace.
  List<String> subjects;

  @override
  bool operator ==(Object other) => identical(this, other) || other is StreamRecord &&
    other.bytes == bytes &&
    other.consumers == consumers &&
    other.created == created &&
    other.discard == discard &&
    other.firstSeq == firstSeq &&
    other.lastSeq == lastSeq &&
    other.maxAge == maxAge &&
    other.maxBytes == maxBytes &&
    other.maxMsgs == maxMsgs &&
    other.messages == messages &&
    other.name == name &&
    other.retention == retention &&
    other.storage == storage &&
    _deepEquality.equals(other.subjects, subjects);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (bytes == null ? 0 : bytes!.hashCode) +
    (consumers == null ? 0 : consumers!.hashCode) +
    (created == null ? 0 : created!.hashCode) +
    (discard == null ? 0 : discard!.hashCode) +
    (firstSeq == null ? 0 : firstSeq!.hashCode) +
    (lastSeq == null ? 0 : lastSeq!.hashCode) +
    (maxAge == null ? 0 : maxAge!.hashCode) +
    (maxBytes == null ? 0 : maxBytes!.hashCode) +
    (maxMsgs == null ? 0 : maxMsgs!.hashCode) +
    (messages == null ? 0 : messages!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (retention == null ? 0 : retention!.hashCode) +
    (storage == null ? 0 : storage!.hashCode) +
    (subjects.hashCode);

  @override
  String toString() => 'StreamRecord[bytes=$bytes, consumers=$consumers, created=$created, discard=$discard, firstSeq=$firstSeq, lastSeq=$lastSeq, maxAge=$maxAge, maxBytes=$maxBytes, maxMsgs=$maxMsgs, messages=$messages, name=$name, retention=$retention, storage=$storage, subjects=$subjects]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.bytes != null) {
      json[r'bytes'] = this.bytes;
    } else {
      json[r'bytes'] = null;
    }
    if (this.consumers != null) {
      json[r'consumers'] = this.consumers;
    } else {
      json[r'consumers'] = null;
    }
    if (this.created != null) {
      json[r'created'] = this.created;
    } else {
      json[r'created'] = null;
    }
    if (this.discard != null) {
      json[r'discard'] = this.discard;
    } else {
      json[r'discard'] = null;
    }
    if (this.firstSeq != null) {
      json[r'firstSeq'] = this.firstSeq;
    } else {
      json[r'firstSeq'] = null;
    }
    if (this.lastSeq != null) {
      json[r'lastSeq'] = this.lastSeq;
    } else {
      json[r'lastSeq'] = null;
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
    if (this.messages != null) {
      json[r'messages'] = this.messages;
    } else {
      json[r'messages'] = null;
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

  /// Returns a new [StreamRecord] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static StreamRecord? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "StreamRecord[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "StreamRecord[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return StreamRecord(
        bytes: mapValueOfType<int>(json, r'bytes'),
        consumers: mapValueOfType<int>(json, r'consumers'),
        created: mapValueOfType<String>(json, r'created'),
        discard: mapValueOfType<String>(json, r'discard'),
        firstSeq: mapValueOfType<int>(json, r'firstSeq'),
        lastSeq: mapValueOfType<int>(json, r'lastSeq'),
        maxAge: mapValueOfType<int>(json, r'maxAge'),
        maxBytes: mapValueOfType<int>(json, r'maxBytes'),
        maxMsgs: mapValueOfType<int>(json, r'maxMsgs'),
        messages: mapValueOfType<int>(json, r'messages'),
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

  static List<StreamRecord> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <StreamRecord>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = StreamRecord.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, StreamRecord> mapFromJson(dynamic json) {
    final map = <String, StreamRecord>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = StreamRecord.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of StreamRecord-objects as value to a dart map
  static Map<String, List<StreamRecord>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<StreamRecord>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = StreamRecord.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

