//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class RiskEvent {
  /// Returns a new [RiskEvent] instance.
  RiskEvent({
    this.at,
    this.device,
    this.id,
    this.kind,
    this.nano,
    this.peer,
    this.subject,
  });
  /// At is when it happened, RFC 3339. Empty means now. It must sit inside the thirty-day window the aggregates keep and no more than two minutes ahead of this plane's clock; anything outside that is REFUSED rather than quietly accepted, because a future timestamp moves the aggregates' leading edge and leaves every later event for that subject reading as though it never happened. History older than the window is folded in from your own event surface, not through this door.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? at;

  /// Device is the device fingerprint, if any. It is the axis that surfaces several nominally unrelated subjects acting as one.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? device;

  /// ID is the caller's own stable identifier for the event. It selects the below-the-line review sample by hash, so a counter would make the sample steerable — use the id the event already has.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// Kind is whose behaviour this is: person, session or account. It namespaces the subject, so a person and an account that share an identifier stay two subjects.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? kind;

  /// Nano is the value moved, in nano-USD. Omit it for an event that moves no money: the value features then read BLIND rather than being told the amount was zero, and the difference is reported on the model state.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? nano;

  /// Peer is the counterparty, if any. It is an aggregation axis of its own — \"unfamiliar\" is a fact about a relationship and not about either party.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? peer;

  /// Subject is the identifier on that kind.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? subject;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RiskEvent &&
    other.at == at &&
    other.device == device &&
    other.id == id &&
    other.kind == kind &&
    other.nano == nano &&
    other.peer == peer &&
    other.subject == subject;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (at == null ? 0 : at!.hashCode) +
    (device == null ? 0 : device!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (kind == null ? 0 : kind!.hashCode) +
    (nano == null ? 0 : nano!.hashCode) +
    (peer == null ? 0 : peer!.hashCode) +
    (subject == null ? 0 : subject!.hashCode);

  @override
  String toString() => 'RiskEvent[at=$at, device=$device, id=$id, kind=$kind, nano=$nano, peer=$peer, subject=$subject]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.at != null) {
      json[r'at'] = this.at;
    } else {
      json[r'at'] = null;
    }
    if (this.device != null) {
      json[r'device'] = this.device;
    } else {
      json[r'device'] = null;
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
    if (this.nano != null) {
      json[r'nano'] = this.nano;
    } else {
      json[r'nano'] = null;
    }
    if (this.peer != null) {
      json[r'peer'] = this.peer;
    } else {
      json[r'peer'] = null;
    }
    if (this.subject != null) {
      json[r'subject'] = this.subject;
    } else {
      json[r'subject'] = null;
    }
    return json;
  }

  /// Returns a new [RiskEvent] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RiskEvent? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RiskEvent[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RiskEvent[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RiskEvent(
        at: mapValueOfType<String>(json, r'at'),
        device: mapValueOfType<String>(json, r'device'),
        id: mapValueOfType<String>(json, r'id'),
        kind: mapValueOfType<String>(json, r'kind'),
        nano: mapValueOfType<int>(json, r'nano'),
        peer: mapValueOfType<String>(json, r'peer'),
        subject: mapValueOfType<String>(json, r'subject'),
      );
    }
    return null;
  }

  static List<RiskEvent> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RiskEvent>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RiskEvent.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RiskEvent> mapFromJson(dynamic json) {
    final map = <String, RiskEvent>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RiskEvent.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RiskEvent-objects as value to a dart map
  static Map<String, List<RiskEvent>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RiskEvent>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RiskEvent.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

