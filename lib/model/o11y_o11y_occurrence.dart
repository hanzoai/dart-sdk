//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yO11yOccurrence {
  /// Returns a new [O11yO11yOccurrence] instance.
  O11yO11yOccurrence({
    this.culprit,
    this.environment,
    this.eventId,
    this.fingerprint,
    this.frames = const [],
    this.level,
    this.platform,
    this.release,
    this.serverName,
    this.serviceName,
    this.spanId,
    this.tags = const {},
    this.timestamp,
    this.traceId,
    this.transaction,
    this.type,
    this.user,
    this.value,
  });

  /// Culprit is where it came from.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? culprit;

  /// Environment is the deployment it happened in.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? environment;

  /// EventID is the occurrence's id.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? eventId;

  /// Fingerprint is the grouping key it was bucketed by.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? fingerprint;

  /// Frames are the stack, innermost first.
  List<O11yO11yOccurrenceFrame> frames;

  /// Level is its severity, e.g. error, warning, info.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? level;

  /// Platform is the reporting runtime.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? platform;

  /// Release is the version that produced it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? release;

  /// ServerName is the host that reported it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? serverName;

  /// ServiceName is the service that reported it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? serviceName;

  /// SpanID is the span it belonged to.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? spanId;

  /// Tags are the reporter's own key/value labels.
  Map<String, String> tags;

  /// Timestamp is when the error happened.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? timestamp;

  /// TraceID is the trace it belonged to.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? traceId;

  /// Transaction is the operation it happened in.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? transaction;

  /// Type is the exception type.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? type;

  /// User is the affected end-user context, when the reporter attached one.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  O11yO11yEventUser? user;

  /// Value is the exception value.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? value;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yO11yOccurrence &&
    other.culprit == culprit &&
    other.environment == environment &&
    other.eventId == eventId &&
    other.fingerprint == fingerprint &&
    _deepEquality.equals(other.frames, frames) &&
    other.level == level &&
    other.platform == platform &&
    other.release == release &&
    other.serverName == serverName &&
    other.serviceName == serviceName &&
    other.spanId == spanId &&
    _deepEquality.equals(other.tags, tags) &&
    other.timestamp == timestamp &&
    other.traceId == traceId &&
    other.transaction == transaction &&
    other.type == type &&
    other.user == user &&
    other.value == value;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (culprit == null ? 0 : culprit!.hashCode) +
    (environment == null ? 0 : environment!.hashCode) +
    (eventId == null ? 0 : eventId!.hashCode) +
    (fingerprint == null ? 0 : fingerprint!.hashCode) +
    (frames.hashCode) +
    (level == null ? 0 : level!.hashCode) +
    (platform == null ? 0 : platform!.hashCode) +
    (release == null ? 0 : release!.hashCode) +
    (serverName == null ? 0 : serverName!.hashCode) +
    (serviceName == null ? 0 : serviceName!.hashCode) +
    (spanId == null ? 0 : spanId!.hashCode) +
    (tags.hashCode) +
    (timestamp == null ? 0 : timestamp!.hashCode) +
    (traceId == null ? 0 : traceId!.hashCode) +
    (transaction == null ? 0 : transaction!.hashCode) +
    (type == null ? 0 : type!.hashCode) +
    (user == null ? 0 : user!.hashCode) +
    (value == null ? 0 : value!.hashCode);

  @override
  String toString() => 'O11yO11yOccurrence[culprit=$culprit, environment=$environment, eventId=$eventId, fingerprint=$fingerprint, frames=$frames, level=$level, platform=$platform, release=$release, serverName=$serverName, serviceName=$serviceName, spanId=$spanId, tags=$tags, timestamp=$timestamp, traceId=$traceId, transaction=$transaction, type=$type, user=$user, value=$value]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.culprit != null) {
      json[r'culprit'] = this.culprit;
    } else {
      json[r'culprit'] = null;
    }
    if (this.environment != null) {
      json[r'environment'] = this.environment;
    } else {
      json[r'environment'] = null;
    }
    if (this.eventId != null) {
      json[r'eventId'] = this.eventId;
    } else {
      json[r'eventId'] = null;
    }
    if (this.fingerprint != null) {
      json[r'fingerprint'] = this.fingerprint;
    } else {
      json[r'fingerprint'] = null;
    }
      json[r'frames'] = this.frames;
    if (this.level != null) {
      json[r'level'] = this.level;
    } else {
      json[r'level'] = null;
    }
    if (this.platform != null) {
      json[r'platform'] = this.platform;
    } else {
      json[r'platform'] = null;
    }
    if (this.release != null) {
      json[r'release'] = this.release;
    } else {
      json[r'release'] = null;
    }
    if (this.serverName != null) {
      json[r'serverName'] = this.serverName;
    } else {
      json[r'serverName'] = null;
    }
    if (this.serviceName != null) {
      json[r'serviceName'] = this.serviceName;
    } else {
      json[r'serviceName'] = null;
    }
    if (this.spanId != null) {
      json[r'spanId'] = this.spanId;
    } else {
      json[r'spanId'] = null;
    }
      json[r'tags'] = this.tags;
    if (this.timestamp != null) {
      json[r'timestamp'] = this.timestamp!.toUtc().toIso8601String();
    } else {
      json[r'timestamp'] = null;
    }
    if (this.traceId != null) {
      json[r'traceId'] = this.traceId;
    } else {
      json[r'traceId'] = null;
    }
    if (this.transaction != null) {
      json[r'transaction'] = this.transaction;
    } else {
      json[r'transaction'] = null;
    }
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
    if (this.user != null) {
      json[r'user'] = this.user;
    } else {
      json[r'user'] = null;
    }
    if (this.value != null) {
      json[r'value'] = this.value;
    } else {
      json[r'value'] = null;
    }
    return json;
  }

  /// Returns a new [O11yO11yOccurrence] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yO11yOccurrence? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yO11yOccurrence[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yO11yOccurrence[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yO11yOccurrence(
        culprit: mapValueOfType<String>(json, r'culprit'),
        environment: mapValueOfType<String>(json, r'environment'),
        eventId: mapValueOfType<String>(json, r'eventId'),
        fingerprint: mapValueOfType<String>(json, r'fingerprint'),
        frames: O11yO11yOccurrenceFrame.listFromJson(json[r'frames']),
        level: mapValueOfType<String>(json, r'level'),
        platform: mapValueOfType<String>(json, r'platform'),
        release: mapValueOfType<String>(json, r'release'),
        serverName: mapValueOfType<String>(json, r'serverName'),
        serviceName: mapValueOfType<String>(json, r'serviceName'),
        spanId: mapValueOfType<String>(json, r'spanId'),
        tags: mapCastOfType<String, String>(json, r'tags') ?? const {},
        timestamp: mapDateTime(json, r'timestamp', r''),
        traceId: mapValueOfType<String>(json, r'traceId'),
        transaction: mapValueOfType<String>(json, r'transaction'),
        type: mapValueOfType<String>(json, r'type'),
        user: O11yO11yEventUser.fromJson(json[r'user']),
        value: mapValueOfType<String>(json, r'value'),
      );
    }
    return null;
  }

  static List<O11yO11yOccurrence> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yO11yOccurrence>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yO11yOccurrence.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yO11yOccurrence> mapFromJson(dynamic json) {
    final map = <String, O11yO11yOccurrence>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yO11yOccurrence.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yO11yOccurrence-objects as value to a dart map
  static Map<String, List<O11yO11yOccurrence>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yO11yOccurrence>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yO11yOccurrence.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

