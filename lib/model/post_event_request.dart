//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class PostEventRequest {
  /// Returns a new [PostEventRequest] instance.
  PostEventRequest({
    this.distinctId,
    this.event,
    this.properties = const {},
    this.time,
    this.type,
    this.batch = const [],
    this.events = const [],
    this.distinctIdLegacy,
    this.timestamp,
    this.uuid,
  });
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? distinctId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? event;

  Map<String, Object> properties;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? time;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? type;

  List<InsightsEvent> batch;

  List<CaptureEvent> events;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? distinctIdLegacy;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? timestamp;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? uuid;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PostEventRequest &&
    other.distinctId == distinctId &&
    other.event == event &&
    _deepEquality.equals(other.properties, properties) &&
    other.time == time &&
    other.type == type &&
    _deepEquality.equals(other.batch, batch) &&
    _deepEquality.equals(other.events, events) &&
    other.distinctIdLegacy == distinctIdLegacy &&
    other.timestamp == timestamp &&
    other.uuid == uuid;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (distinctId == null ? 0 : distinctId!.hashCode) +
    (event == null ? 0 : event!.hashCode) +
    (properties.hashCode) +
    (time == null ? 0 : time!.hashCode) +
    (type == null ? 0 : type!.hashCode) +
    (batch.hashCode) +
    (events.hashCode) +
    (distinctIdLegacy == null ? 0 : distinctIdLegacy!.hashCode) +
    (timestamp == null ? 0 : timestamp!.hashCode) +
    (uuid == null ? 0 : uuid!.hashCode);

  @override
  String toString() => 'PostEventRequest[distinctId=$distinctId, event=$event, properties=$properties, time=$time, type=$type, batch=$batch, events=$events, distinctIdLegacy=$distinctIdLegacy, timestamp=$timestamp, uuid=$uuid]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.distinctId != null) {
      json[r'distinctId'] = this.distinctId;
    } else {
      json[r'distinctId'] = null;
    }
    if (this.event != null) {
      json[r'event'] = this.event;
    } else {
      json[r'event'] = null;
    }
      json[r'properties'] = this.properties;
    if (this.time != null) {
      json[r'time'] = this.time;
    } else {
      json[r'time'] = null;
    }
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
      json[r'batch'] = this.batch;
      json[r'events'] = this.events;
    if (this.distinctIdLegacy != null) {
      json[r'distinct_id'] = this.distinctIdLegacy;
    } else {
      json[r'distinct_id'] = null;
    }
    if (this.timestamp != null) {
      json[r'timestamp'] = this.timestamp;
    } else {
      json[r'timestamp'] = null;
    }
    if (this.uuid != null) {
      json[r'uuid'] = this.uuid;
    } else {
      json[r'uuid'] = null;
    }
    return json;
  }

  /// Returns a new [PostEventRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PostEventRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PostEventRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PostEventRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PostEventRequest(
        distinctId: mapValueOfType<String>(json, r'distinctId'),
        event: mapValueOfType<String>(json, r'event'),
        properties: mapCastOfType<String, Object>(json, r'properties') ?? const {},
        time: mapValueOfType<String>(json, r'time'),
        type: mapValueOfType<String>(json, r'type'),
        batch: InsightsEvent.listFromJson(json[r'batch']),
        events: CaptureEvent.listFromJson(json[r'events']),
        distinctIdLegacy: mapValueOfType<String>(json, r'distinct_id'),
        timestamp: mapValueOfType<String>(json, r'timestamp'),
        uuid: mapValueOfType<String>(json, r'uuid'),
      );
    }
    return null;
  }

  static List<PostEventRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PostEventRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PostEventRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PostEventRequest> mapFromJson(dynamic json) {
    final map = <String, PostEventRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PostEventRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PostEventRequest-objects as value to a dart map
  static Map<String, List<PostEventRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PostEventRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PostEventRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

