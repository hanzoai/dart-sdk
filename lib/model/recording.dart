//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Recording {
  /// Returns a new [Recording] instance.
  Recording({
    this.bucket,
    this.error,
    this.id,
    this.object,
    this.room,
    this.started,
    this.status,
  });
  /// Bucket is the object store bucket the recording is written to. It is stated beside the key rather than folded into one URI so a client reads two facts instead of splitting a string.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? bucket;

  /// Error is the media server's reason when a recording failed, and empty otherwise.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? error;

  /// ID is the media server's egress id — the handle a later read names.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// Object is the key inside that bucket. Empty only while the media server has not named a file yet.  It says WHERE the recording is, not how to fetch it. Reading one back is a separate decision this surface deliberately does not make: a link to a private conversation needs its own answer about who may follow it and for how long, and inventing a short one here would be worse than not having it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? object;

  /// Room is the room this recording is of.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? room;

  /// Started is when the recording began, as the media server reports it: its own `started_at`, verbatim and unconverted. LiveKit's egress service sets that field from UnixNano, and a conversion this side cannot check against the running server would be a number that looks right and is wrong by a factor of a billion. 0 means it has not started.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? started;

  /// Status is the media server's own state name: EGRESS_STARTING, EGRESS_ACTIVE, EGRESS_ENDING, EGRESS_COMPLETE, EGRESS_FAILED, EGRESS_ABORTED or EGRESS_LIMIT_REACHED. It is passed through rather than folded into a vocabulary of ours, so the answer cannot mean something the media server did not say.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Recording &&
    other.bucket == bucket &&
    other.error == error &&
    other.id == id &&
    other.object == object &&
    other.room == room &&
    other.started == started &&
    other.status == status;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (bucket == null ? 0 : bucket!.hashCode) +
    (error == null ? 0 : error!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (object == null ? 0 : object!.hashCode) +
    (room == null ? 0 : room!.hashCode) +
    (started == null ? 0 : started!.hashCode) +
    (status == null ? 0 : status!.hashCode);

  @override
  String toString() => 'Recording[bucket=$bucket, error=$error, id=$id, object=$object, room=$room, started=$started, status=$status]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.bucket != null) {
      json[r'bucket'] = this.bucket;
    } else {
      json[r'bucket'] = null;
    }
    if (this.error != null) {
      json[r'error'] = this.error;
    } else {
      json[r'error'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.object != null) {
      json[r'object'] = this.object;
    } else {
      json[r'object'] = null;
    }
    if (this.room != null) {
      json[r'room'] = this.room;
    } else {
      json[r'room'] = null;
    }
    if (this.started != null) {
      json[r'started'] = this.started;
    } else {
      json[r'started'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    return json;
  }

  /// Returns a new [Recording] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Recording? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Recording[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Recording[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Recording(
        bucket: mapValueOfType<String>(json, r'bucket'),
        error: mapValueOfType<String>(json, r'error'),
        id: mapValueOfType<String>(json, r'id'),
        object: mapValueOfType<String>(json, r'object'),
        room: mapValueOfType<String>(json, r'room'),
        started: mapValueOfType<int>(json, r'started'),
        status: mapValueOfType<String>(json, r'status'),
      );
    }
    return null;
  }

  static List<Recording> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Recording>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Recording.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Recording> mapFromJson(dynamic json) {
    final map = <String, Recording>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Recording.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Recording-objects as value to a dart map
  static Map<String, List<Recording>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Recording>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Recording.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

