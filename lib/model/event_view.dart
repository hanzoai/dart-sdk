//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class EventView {
  /// Returns a new [EventView] instance.
  EventView({
    this.actor,
    this.createdAt,
    this.id,
    this.kind,
    this.payload,
    this.seq,
    this.sessionId,
  });
  /// Actor is who produced the turn. A write that names nobody takes the calling principal, so this is rarely empty in practice.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? actor;

  /// CreatedAt is when the turn was recorded, RFC 3339 in UTC to the second. Seconds are coarse enough that two turns can share one, which is why Seq and not this is the order.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? createdAt;

  /// ID is the event's own handle, minted as \"evt_\" + 32 hex characters. It identifies the turn; Seq is what ORDERS it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// Kind is what the turn IS, from a closed six: message (a model turn), tool-call, spawn (a subagent started), log, status, control (a steering command the running surface consumes). Anything else is refused at the write.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? kind;

  Object? payload;

  /// Seq is the turn's position in this session's log: monotonic from 1, assigned by the store inside the insert, and unique PER SESSION rather than globally. It is the cursor a reader resumes from after a reconnect — ask for everything after your last-seen seq.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? seq;

  /// SessionID is the session this turn belongs to. Carried on every event so a stream frame stands alone — a subscriber watching a whole tree gets turns from several sessions down one connection.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? sessionId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EventView &&
    other.actor == actor &&
    other.createdAt == createdAt &&
    other.id == id &&
    other.kind == kind &&
    other.payload == payload &&
    other.seq == seq &&
    other.sessionId == sessionId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (actor == null ? 0 : actor!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (kind == null ? 0 : kind!.hashCode) +
    (payload == null ? 0 : payload!.hashCode) +
    (seq == null ? 0 : seq!.hashCode) +
    (sessionId == null ? 0 : sessionId!.hashCode);

  @override
  String toString() => 'EventView[actor=$actor, createdAt=$createdAt, id=$id, kind=$kind, payload=$payload, seq=$seq, sessionId=$sessionId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.actor != null) {
      json[r'actor'] = this.actor;
    } else {
      json[r'actor'] = null;
    }
    if (this.createdAt != null) {
      json[r'createdAt'] = this.createdAt;
    } else {
      json[r'createdAt'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.kind != null) {
      json[r'kind'] = this.kind;
    } else {
      json[r'kind'] = null;
    }
    if (this.payload != null) {
      json[r'payload'] = this.payload;
    } else {
      json[r'payload'] = null;
    }
    if (this.seq != null) {
      json[r'seq'] = this.seq;
    } else {
      json[r'seq'] = null;
    }
    if (this.sessionId != null) {
      json[r'sessionId'] = this.sessionId;
    } else {
      json[r'sessionId'] = null;
    }
    return json;
  }

  /// Returns a new [EventView] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EventView? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EventView[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EventView[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EventView(
        actor: mapValueOfType<String>(json, r'actor'),
        createdAt: mapValueOfType<String>(json, r'createdAt'),
        id: mapValueOfType<String>(json, r'id'),
        kind: mapValueOfType<String>(json, r'kind'),
        payload: mapValueOfType<Object>(json, r'payload'),
        seq: mapValueOfType<int>(json, r'seq'),
        sessionId: mapValueOfType<String>(json, r'sessionId'),
      );
    }
    return null;
  }

  static List<EventView> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EventView>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EventView.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EventView> mapFromJson(dynamic json) {
    final map = <String, EventView>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EventView.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EventView-objects as value to a dart map
  static Map<String, List<EventView>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EventView>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EventView.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

