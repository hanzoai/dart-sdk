//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Config {
  /// Returns a new [Config] instance.
  Config({
    this.maxAge,
    this.maxBytes,
    this.maxMsgSize,
    this.maxMsgs,
    this.name,
    this.numReplicas,
    this.retention,
    this.storage,
    this.subjects = const [],
  });
  /// MaxAge caps message age, e.g. \"24h\" or \"7d\"; \"0\" (default) is unlimited.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? maxAge;

  /// MaxBytes caps the stream's total stored bytes; -1 (default) is unlimited.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? maxBytes;

  /// MaxMsgSize caps one message's size in bytes; -1 (default) is the broker's limit.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? maxMsgSize;

  /// MaxMsgs caps the number of stored messages; -1 (default) is unlimited.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? maxMsgs;

  /// Name is the stream name, unique within the org (alphanumeric, hyphens, underscores).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// Replicas is the number of stream replicas (1–5); this plane runs 1.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? numReplicas;

  /// Retention is the retention policy: limits (default), interest, or workqueue.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? retention;

  /// Storage is the storage backend: file (default) or memory.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? storage;

  /// Subjects are the org-relative subjects bound to this stream (wildcards supported). Default: the stream name.
  List<String> subjects;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Config &&
    other.maxAge == maxAge &&
    other.maxBytes == maxBytes &&
    other.maxMsgSize == maxMsgSize &&
    other.maxMsgs == maxMsgs &&
    other.name == name &&
    other.numReplicas == numReplicas &&
    other.retention == retention &&
    other.storage == storage &&
    _deepEquality.equals(other.subjects, subjects);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (maxAge == null ? 0 : maxAge!.hashCode) +
    (maxBytes == null ? 0 : maxBytes!.hashCode) +
    (maxMsgSize == null ? 0 : maxMsgSize!.hashCode) +
    (maxMsgs == null ? 0 : maxMsgs!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (numReplicas == null ? 0 : numReplicas!.hashCode) +
    (retention == null ? 0 : retention!.hashCode) +
    (storage == null ? 0 : storage!.hashCode) +
    (subjects.hashCode);

  @override
  String toString() => 'Config[maxAge=$maxAge, maxBytes=$maxBytes, maxMsgSize=$maxMsgSize, maxMsgs=$maxMsgs, name=$name, numReplicas=$numReplicas, retention=$retention, storage=$storage, subjects=$subjects]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.maxAge != null) {
      json[r'max_age'] = this.maxAge;
    } else {
      json[r'max_age'] = null;
    }
    if (this.maxBytes != null) {
      json[r'max_bytes'] = this.maxBytes;
    } else {
      json[r'max_bytes'] = null;
    }
    if (this.maxMsgSize != null) {
      json[r'max_msg_size'] = this.maxMsgSize;
    } else {
      json[r'max_msg_size'] = null;
    }
    if (this.maxMsgs != null) {
      json[r'max_msgs'] = this.maxMsgs;
    } else {
      json[r'max_msgs'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.numReplicas != null) {
      json[r'num_replicas'] = this.numReplicas;
    } else {
      json[r'num_replicas'] = null;
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

  /// Returns a new [Config] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Config? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Config[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Config[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Config(
        maxAge: mapValueOfType<String>(json, r'max_age'),
        maxBytes: mapValueOfType<int>(json, r'max_bytes'),
        maxMsgSize: mapValueOfType<int>(json, r'max_msg_size'),
        maxMsgs: mapValueOfType<int>(json, r'max_msgs'),
        name: mapValueOfType<String>(json, r'name'),
        numReplicas: mapValueOfType<int>(json, r'num_replicas'),
        retention: mapValueOfType<String>(json, r'retention'),
        storage: mapValueOfType<String>(json, r'storage'),
        subjects: json[r'subjects'] is Iterable
            ? (json[r'subjects'] as Iterable).cast<String>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<Config> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Config>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Config.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Config> mapFromJson(dynamic json) {
    final map = <String, Config>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Config.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Config-objects as value to a dart map
  static Map<String, List<Config>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Config>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Config.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

