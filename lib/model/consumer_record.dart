//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ConsumerRecord {
  /// Returns a new [ConsumerRecord] instance.
  ConsumerRecord({
    this.ack,
    this.ackWait,
    this.acked,
    this.deliver,
    this.delivered,
    this.filter,
    this.maxDeliver,
    this.name,
    this.pending,
    this.redelivered,
    this.stream,
  });

  /// Ack is the acknowledgement discipline: explicit, none or all.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? ack;

  /// AckWait is the redelivery timeout in seconds.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? ackWait;

  /// Acked is the stream sequence acknowledged furthest.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? acked;

  /// Deliver is the starting point: all, last, new or lastPerSubject.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? deliver;

  /// Delivered is the stream sequence delivered furthest.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? delivered;

  /// Filter is the subject filter, in the org's namespace; empty means all.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? filter;

  /// MaxDeliver is the delivery-attempt cap; -1 means unlimited.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? maxDeliver;

  /// Name is the durable consumer name.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// Pending is how many messages await delivery.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? pending;

  /// Redelivered is how many messages are being redelivered.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? redelivered;

  /// Stream is the stream it consumes, in the org's view.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? stream;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ConsumerRecord &&
    other.ack == ack &&
    other.ackWait == ackWait &&
    other.acked == acked &&
    other.deliver == deliver &&
    other.delivered == delivered &&
    other.filter == filter &&
    other.maxDeliver == maxDeliver &&
    other.name == name &&
    other.pending == pending &&
    other.redelivered == redelivered &&
    other.stream == stream;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (ack == null ? 0 : ack!.hashCode) +
    (ackWait == null ? 0 : ackWait!.hashCode) +
    (acked == null ? 0 : acked!.hashCode) +
    (deliver == null ? 0 : deliver!.hashCode) +
    (delivered == null ? 0 : delivered!.hashCode) +
    (filter == null ? 0 : filter!.hashCode) +
    (maxDeliver == null ? 0 : maxDeliver!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (pending == null ? 0 : pending!.hashCode) +
    (redelivered == null ? 0 : redelivered!.hashCode) +
    (stream == null ? 0 : stream!.hashCode);

  @override
  String toString() => 'ConsumerRecord[ack=$ack, ackWait=$ackWait, acked=$acked, deliver=$deliver, delivered=$delivered, filter=$filter, maxDeliver=$maxDeliver, name=$name, pending=$pending, redelivered=$redelivered, stream=$stream]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.ack != null) {
      json[r'ack'] = this.ack;
    } else {
      json[r'ack'] = null;
    }
    if (this.ackWait != null) {
      json[r'ackWait'] = this.ackWait;
    } else {
      json[r'ackWait'] = null;
    }
    if (this.acked != null) {
      json[r'acked'] = this.acked;
    } else {
      json[r'acked'] = null;
    }
    if (this.deliver != null) {
      json[r'deliver'] = this.deliver;
    } else {
      json[r'deliver'] = null;
    }
    if (this.delivered != null) {
      json[r'delivered'] = this.delivered;
    } else {
      json[r'delivered'] = null;
    }
    if (this.filter != null) {
      json[r'filter'] = this.filter;
    } else {
      json[r'filter'] = null;
    }
    if (this.maxDeliver != null) {
      json[r'maxDeliver'] = this.maxDeliver;
    } else {
      json[r'maxDeliver'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.pending != null) {
      json[r'pending'] = this.pending;
    } else {
      json[r'pending'] = null;
    }
    if (this.redelivered != null) {
      json[r'redelivered'] = this.redelivered;
    } else {
      json[r'redelivered'] = null;
    }
    if (this.stream != null) {
      json[r'stream'] = this.stream;
    } else {
      json[r'stream'] = null;
    }
    return json;
  }

  /// Returns a new [ConsumerRecord] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ConsumerRecord? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ConsumerRecord[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ConsumerRecord[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ConsumerRecord(
        ack: mapValueOfType<String>(json, r'ack'),
        ackWait: mapValueOfType<int>(json, r'ackWait'),
        acked: mapValueOfType<int>(json, r'acked'),
        deliver: mapValueOfType<String>(json, r'deliver'),
        delivered: mapValueOfType<int>(json, r'delivered'),
        filter: mapValueOfType<String>(json, r'filter'),
        maxDeliver: mapValueOfType<int>(json, r'maxDeliver'),
        name: mapValueOfType<String>(json, r'name'),
        pending: mapValueOfType<int>(json, r'pending'),
        redelivered: mapValueOfType<int>(json, r'redelivered'),
        stream: mapValueOfType<String>(json, r'stream'),
      );
    }
    return null;
  }

  static List<ConsumerRecord> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ConsumerRecord>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ConsumerRecord.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ConsumerRecord> mapFromJson(dynamic json) {
    final map = <String, ConsumerRecord>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ConsumerRecord.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ConsumerRecord-objects as value to a dart map
  static Map<String, List<ConsumerRecord>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ConsumerRecord>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ConsumerRecord.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

