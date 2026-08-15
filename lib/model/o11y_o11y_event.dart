//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yO11yEvent {
  /// Returns a new [O11yO11yEvent] instance.
  O11yO11yEvent({
    this.culprit,
    this.environment,
    this.eventId,
    this.fingerprint,
    this.frames = const [],
    this.handled,
    this.level,
    this.message,
    this.orgId,
    this.platform,
    this.projectId,
    this.receivedAt,
    this.release,
    this.serverName,
    this.serviceName,
    this.spanId,
    this.tags = const {},
    this.timestamp,
    this.traceId,
    this.transaction,
    this.type,
    this.userEmail,
    this.userId,
    this.userIp,
    this.value,
  });

  /// Culprit is where it came from — the function or route blamed for it.
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

  /// EventID is its own id.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? eventId;

  /// Fingerprint is the grouping key that puts like errors in one issue.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? fingerprint;

  /// Frames are the stack, innermost first.
  List<O11yO11yFrame> frames;

  /// Handled says whether the application caught it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? handled;

  /// Level is its severity, e.g. error, warning, info.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? level;

  /// Message is the human-readable message.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? message;

  /// OrgID is the org that owns it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? orgId;

  /// Platform is the reporting runtime, e.g. go, python, javascript.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? platform;

  /// ProjectID is the project it was captured for.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? projectId;

  /// ReceivedAt is when it arrived here.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? receivedAt;

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

  /// Timestamp is when the error happened, as the reporter recorded it.
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

  /// UserEmail is that user's email, when attached.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? userEmail;

  /// UserID identifies the affected end user, when the reporter attached one.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? userId;

  /// UserIP is that user's address, when attached.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? userIp;

  /// Value is the exception value.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? value;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yO11yEvent &&
    other.culprit == culprit &&
    other.environment == environment &&
    other.eventId == eventId &&
    other.fingerprint == fingerprint &&
    _deepEquality.equals(other.frames, frames) &&
    other.handled == handled &&
    other.level == level &&
    other.message == message &&
    other.orgId == orgId &&
    other.platform == platform &&
    other.projectId == projectId &&
    other.receivedAt == receivedAt &&
    other.release == release &&
    other.serverName == serverName &&
    other.serviceName == serviceName &&
    other.spanId == spanId &&
    _deepEquality.equals(other.tags, tags) &&
    other.timestamp == timestamp &&
    other.traceId == traceId &&
    other.transaction == transaction &&
    other.type == type &&
    other.userEmail == userEmail &&
    other.userId == userId &&
    other.userIp == userIp &&
    other.value == value;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (culprit == null ? 0 : culprit!.hashCode) +
    (environment == null ? 0 : environment!.hashCode) +
    (eventId == null ? 0 : eventId!.hashCode) +
    (fingerprint == null ? 0 : fingerprint!.hashCode) +
    (frames.hashCode) +
    (handled == null ? 0 : handled!.hashCode) +
    (level == null ? 0 : level!.hashCode) +
    (message == null ? 0 : message!.hashCode) +
    (orgId == null ? 0 : orgId!.hashCode) +
    (platform == null ? 0 : platform!.hashCode) +
    (projectId == null ? 0 : projectId!.hashCode) +
    (receivedAt == null ? 0 : receivedAt!.hashCode) +
    (release == null ? 0 : release!.hashCode) +
    (serverName == null ? 0 : serverName!.hashCode) +
    (serviceName == null ? 0 : serviceName!.hashCode) +
    (spanId == null ? 0 : spanId!.hashCode) +
    (tags.hashCode) +
    (timestamp == null ? 0 : timestamp!.hashCode) +
    (traceId == null ? 0 : traceId!.hashCode) +
    (transaction == null ? 0 : transaction!.hashCode) +
    (type == null ? 0 : type!.hashCode) +
    (userEmail == null ? 0 : userEmail!.hashCode) +
    (userId == null ? 0 : userId!.hashCode) +
    (userIp == null ? 0 : userIp!.hashCode) +
    (value == null ? 0 : value!.hashCode);

  @override
  String toString() => 'O11yO11yEvent[culprit=$culprit, environment=$environment, eventId=$eventId, fingerprint=$fingerprint, frames=$frames, handled=$handled, level=$level, message=$message, orgId=$orgId, platform=$platform, projectId=$projectId, receivedAt=$receivedAt, release=$release, serverName=$serverName, serviceName=$serviceName, spanId=$spanId, tags=$tags, timestamp=$timestamp, traceId=$traceId, transaction=$transaction, type=$type, userEmail=$userEmail, userId=$userId, userIp=$userIp, value=$value]';

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
    if (this.handled != null) {
      json[r'handled'] = this.handled;
    } else {
      json[r'handled'] = null;
    }
    if (this.level != null) {
      json[r'level'] = this.level;
    } else {
      json[r'level'] = null;
    }
    if (this.message != null) {
      json[r'message'] = this.message;
    } else {
      json[r'message'] = null;
    }
    if (this.orgId != null) {
      json[r'orgId'] = this.orgId;
    } else {
      json[r'orgId'] = null;
    }
    if (this.platform != null) {
      json[r'platform'] = this.platform;
    } else {
      json[r'platform'] = null;
    }
    if (this.projectId != null) {
      json[r'projectId'] = this.projectId;
    } else {
      json[r'projectId'] = null;
    }
    if (this.receivedAt != null) {
      json[r'receivedAt'] = this.receivedAt!.toUtc().toIso8601String();
    } else {
      json[r'receivedAt'] = null;
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
    if (this.userEmail != null) {
      json[r'userEmail'] = this.userEmail;
    } else {
      json[r'userEmail'] = null;
    }
    if (this.userId != null) {
      json[r'userId'] = this.userId;
    } else {
      json[r'userId'] = null;
    }
    if (this.userIp != null) {
      json[r'userIp'] = this.userIp;
    } else {
      json[r'userIp'] = null;
    }
    if (this.value != null) {
      json[r'value'] = this.value;
    } else {
      json[r'value'] = null;
    }
    return json;
  }

  /// Returns a new [O11yO11yEvent] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yO11yEvent? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yO11yEvent[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yO11yEvent[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yO11yEvent(
        culprit: mapValueOfType<String>(json, r'culprit'),
        environment: mapValueOfType<String>(json, r'environment'),
        eventId: mapValueOfType<String>(json, r'eventId'),
        fingerprint: mapValueOfType<String>(json, r'fingerprint'),
        frames: O11yO11yFrame.listFromJson(json[r'frames']),
        handled: mapValueOfType<bool>(json, r'handled'),
        level: mapValueOfType<String>(json, r'level'),
        message: mapValueOfType<String>(json, r'message'),
        orgId: mapValueOfType<String>(json, r'orgId'),
        platform: mapValueOfType<String>(json, r'platform'),
        projectId: mapValueOfType<String>(json, r'projectId'),
        receivedAt: mapDateTime(json, r'receivedAt', r''),
        release: mapValueOfType<String>(json, r'release'),
        serverName: mapValueOfType<String>(json, r'serverName'),
        serviceName: mapValueOfType<String>(json, r'serviceName'),
        spanId: mapValueOfType<String>(json, r'spanId'),
        tags: mapCastOfType<String, String>(json, r'tags') ?? const {},
        timestamp: mapDateTime(json, r'timestamp', r''),
        traceId: mapValueOfType<String>(json, r'traceId'),
        transaction: mapValueOfType<String>(json, r'transaction'),
        type: mapValueOfType<String>(json, r'type'),
        userEmail: mapValueOfType<String>(json, r'userEmail'),
        userId: mapValueOfType<String>(json, r'userId'),
        userIp: mapValueOfType<String>(json, r'userIp'),
        value: mapValueOfType<String>(json, r'value'),
      );
    }
    return null;
  }

  static List<O11yO11yEvent> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yO11yEvent>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yO11yEvent.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yO11yEvent> mapFromJson(dynamic json) {
    final map = <String, O11yO11yEvent>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yO11yEvent.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yO11yEvent-objects as value to a dart map
  static Map<String, List<O11yO11yEvent>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yO11yEvent>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yO11yEvent.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

