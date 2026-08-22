//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class State {
  /// Returns a new [State] instance.
  State({
    this.bytes,
    this.consumerCount,
    this.firstSeq,
    this.firstTs,
    this.lastSeq,
    this.lastTs,
    this.messages,
    this.numDeleted,
    this.numSubjects,
  });
  /// Bytes is the total stored size.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? bytes;

  /// Consumers is the number of consumers attached to this stream.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? consumerCount;

  /// FirstSeq is the sequence of the first stored message.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? firstSeq;

  /// FirstTS is the timestamp of the first stored message.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? firstTs;

  /// LastSeq is the sequence of the last stored message.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? lastSeq;

  /// LastTS is the timestamp of the last stored message.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? lastTs;

  /// Messages is the number of messages currently stored.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? messages;

  /// Deleted is the number of deleted messages (sequence gaps).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? numDeleted;

  /// Subjects is the number of distinct subjects stored.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? numSubjects;

  @override
  bool operator ==(Object other) => identical(this, other) || other is State &&
    other.bytes == bytes &&
    other.consumerCount == consumerCount &&
    other.firstSeq == firstSeq &&
    other.firstTs == firstTs &&
    other.lastSeq == lastSeq &&
    other.lastTs == lastTs &&
    other.messages == messages &&
    other.numDeleted == numDeleted &&
    other.numSubjects == numSubjects;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (bytes == null ? 0 : bytes!.hashCode) +
    (consumerCount == null ? 0 : consumerCount!.hashCode) +
    (firstSeq == null ? 0 : firstSeq!.hashCode) +
    (firstTs == null ? 0 : firstTs!.hashCode) +
    (lastSeq == null ? 0 : lastSeq!.hashCode) +
    (lastTs == null ? 0 : lastTs!.hashCode) +
    (messages == null ? 0 : messages!.hashCode) +
    (numDeleted == null ? 0 : numDeleted!.hashCode) +
    (numSubjects == null ? 0 : numSubjects!.hashCode);

  @override
  String toString() => 'State[bytes=$bytes, consumerCount=$consumerCount, firstSeq=$firstSeq, firstTs=$firstTs, lastSeq=$lastSeq, lastTs=$lastTs, messages=$messages, numDeleted=$numDeleted, numSubjects=$numSubjects]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.bytes != null) {
      json[r'bytes'] = this.bytes;
    } else {
      json[r'bytes'] = null;
    }
    if (this.consumerCount != null) {
      json[r'consumer_count'] = this.consumerCount;
    } else {
      json[r'consumer_count'] = null;
    }
    if (this.firstSeq != null) {
      json[r'first_seq'] = this.firstSeq;
    } else {
      json[r'first_seq'] = null;
    }
    if (this.firstTs != null) {
      json[r'first_ts'] = this.firstTs!.toUtc().toIso8601String();
    } else {
      json[r'first_ts'] = null;
    }
    if (this.lastSeq != null) {
      json[r'last_seq'] = this.lastSeq;
    } else {
      json[r'last_seq'] = null;
    }
    if (this.lastTs != null) {
      json[r'last_ts'] = this.lastTs!.toUtc().toIso8601String();
    } else {
      json[r'last_ts'] = null;
    }
    if (this.messages != null) {
      json[r'messages'] = this.messages;
    } else {
      json[r'messages'] = null;
    }
    if (this.numDeleted != null) {
      json[r'num_deleted'] = this.numDeleted;
    } else {
      json[r'num_deleted'] = null;
    }
    if (this.numSubjects != null) {
      json[r'num_subjects'] = this.numSubjects;
    } else {
      json[r'num_subjects'] = null;
    }
    return json;
  }

  /// Returns a new [State] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static State? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "State[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "State[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return State(
        bytes: mapValueOfType<int>(json, r'bytes'),
        consumerCount: mapValueOfType<int>(json, r'consumer_count'),
        firstSeq: mapValueOfType<int>(json, r'first_seq'),
        firstTs: mapDateTime(json, r'first_ts', r''),
        lastSeq: mapValueOfType<int>(json, r'last_seq'),
        lastTs: mapDateTime(json, r'last_ts', r''),
        messages: mapValueOfType<int>(json, r'messages'),
        numDeleted: mapValueOfType<int>(json, r'num_deleted'),
        numSubjects: mapValueOfType<int>(json, r'num_subjects'),
      );
    }
    return null;
  }

  static List<State> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <State>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = State.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, State> mapFromJson(dynamic json) {
    final map = <String, State>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = State.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of State-objects as value to a dart map
  static Map<String, List<State>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<State>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = State.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

