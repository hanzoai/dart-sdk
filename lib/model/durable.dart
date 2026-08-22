//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Durable {
  /// Returns a new [Durable] instance.
  Durable({
    this.ackPolicy,
    this.ackWait,
    this.deliverPolicy,
    this.description,
    this.durableName,
    this.filterSubject,
    this.maxAckPending,
    this.maxDeliver,
    this.optStartSeq,
    this.optStartTime,
    this.replayPolicy,
  });
  /// Ack is the acknowledgment policy: explicit (default), all, or none.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? ackPolicy;

  /// AckWait is how long the broker waits for an ack before redelivering, e.g. \"30s\" (default).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? ackWait;

  /// Deliver is where delivery starts: all (default), last, new, by_start_sequence, by_start_time, or last_per_subject.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? deliverPolicy;

  /// Description says what this consumer is for.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  /// Name is the durable consumer name (alphanumeric, hyphens, underscores).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? durableName;

  /// Filter delivers only messages on this org-relative subject (wildcards supported).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? filterSubject;

  /// MaxAckPending caps unacknowledged messages in flight (default 1000).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? maxAckPending;

  /// MaxDeliver caps delivery attempts per message; -1 (default) is unlimited.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? maxDeliver;

  /// StartSeq is the starting sequence for deliver_policy by_start_sequence.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? optStartSeq;

  /// StartTime is the starting instant for deliver_policy by_start_time.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? optStartTime;

  /// Replay is the replay pacing: instant (default) or original.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? replayPolicy;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Durable &&
    other.ackPolicy == ackPolicy &&
    other.ackWait == ackWait &&
    other.deliverPolicy == deliverPolicy &&
    other.description == description &&
    other.durableName == durableName &&
    other.filterSubject == filterSubject &&
    other.maxAckPending == maxAckPending &&
    other.maxDeliver == maxDeliver &&
    other.optStartSeq == optStartSeq &&
    other.optStartTime == optStartTime &&
    other.replayPolicy == replayPolicy;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (ackPolicy == null ? 0 : ackPolicy!.hashCode) +
    (ackWait == null ? 0 : ackWait!.hashCode) +
    (deliverPolicy == null ? 0 : deliverPolicy!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (durableName == null ? 0 : durableName!.hashCode) +
    (filterSubject == null ? 0 : filterSubject!.hashCode) +
    (maxAckPending == null ? 0 : maxAckPending!.hashCode) +
    (maxDeliver == null ? 0 : maxDeliver!.hashCode) +
    (optStartSeq == null ? 0 : optStartSeq!.hashCode) +
    (optStartTime == null ? 0 : optStartTime!.hashCode) +
    (replayPolicy == null ? 0 : replayPolicy!.hashCode);

  @override
  String toString() => 'Durable[ackPolicy=$ackPolicy, ackWait=$ackWait, deliverPolicy=$deliverPolicy, description=$description, durableName=$durableName, filterSubject=$filterSubject, maxAckPending=$maxAckPending, maxDeliver=$maxDeliver, optStartSeq=$optStartSeq, optStartTime=$optStartTime, replayPolicy=$replayPolicy]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.ackPolicy != null) {
      json[r'ack_policy'] = this.ackPolicy;
    } else {
      json[r'ack_policy'] = null;
    }
    if (this.ackWait != null) {
      json[r'ack_wait'] = this.ackWait;
    } else {
      json[r'ack_wait'] = null;
    }
    if (this.deliverPolicy != null) {
      json[r'deliver_policy'] = this.deliverPolicy;
    } else {
      json[r'deliver_policy'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.durableName != null) {
      json[r'durable_name'] = this.durableName;
    } else {
      json[r'durable_name'] = null;
    }
    if (this.filterSubject != null) {
      json[r'filter_subject'] = this.filterSubject;
    } else {
      json[r'filter_subject'] = null;
    }
    if (this.maxAckPending != null) {
      json[r'max_ack_pending'] = this.maxAckPending;
    } else {
      json[r'max_ack_pending'] = null;
    }
    if (this.maxDeliver != null) {
      json[r'max_deliver'] = this.maxDeliver;
    } else {
      json[r'max_deliver'] = null;
    }
    if (this.optStartSeq != null) {
      json[r'opt_start_seq'] = this.optStartSeq;
    } else {
      json[r'opt_start_seq'] = null;
    }
    if (this.optStartTime != null) {
      json[r'opt_start_time'] = this.optStartTime!.toUtc().toIso8601String();
    } else {
      json[r'opt_start_time'] = null;
    }
    if (this.replayPolicy != null) {
      json[r'replay_policy'] = this.replayPolicy;
    } else {
      json[r'replay_policy'] = null;
    }
    return json;
  }

  /// Returns a new [Durable] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Durable? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Durable[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Durable[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Durable(
        ackPolicy: mapValueOfType<String>(json, r'ack_policy'),
        ackWait: mapValueOfType<String>(json, r'ack_wait'),
        deliverPolicy: mapValueOfType<String>(json, r'deliver_policy'),
        description: mapValueOfType<String>(json, r'description'),
        durableName: mapValueOfType<String>(json, r'durable_name'),
        filterSubject: mapValueOfType<String>(json, r'filter_subject'),
        maxAckPending: mapValueOfType<int>(json, r'max_ack_pending'),
        maxDeliver: mapValueOfType<int>(json, r'max_deliver'),
        optStartSeq: mapValueOfType<int>(json, r'opt_start_seq'),
        optStartTime: mapDateTime(json, r'opt_start_time', r''),
        replayPolicy: mapValueOfType<String>(json, r'replay_policy'),
      );
    }
    return null;
  }

  static List<Durable> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Durable>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Durable.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Durable> mapFromJson(dynamic json) {
    final map = <String, Durable>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Durable.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Durable-objects as value to a dart map
  static Map<String, List<Durable>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Durable>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Durable.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

