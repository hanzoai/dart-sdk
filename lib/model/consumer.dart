//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Consumer {
  /// Returns a new [Consumer] instance.
  Consumer({
    this.ackFloor,
    this.config,
    this.created,
    this.delivered,
    this.name,
    this.numAckPending,
    this.numPending,
    this.numRedelivered,
    this.numWaiting,
    this.streamName,
  });

  /// AckFloor is the highest contiguously acknowledged sequence pair.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Sequences? ackFloor;

  /// Config is the consumer's configuration.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Durable? config;

  /// Created is when the consumer was created.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? created;

  /// Delivered is the highest delivered sequence pair.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Sequences? delivered;

  /// Name is the consumer name.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// AckPending is the number of delivered, not yet acknowledged messages.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? numAckPending;

  /// Pending is the number of messages yet to be delivered.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? numPending;

  /// Redelivered is the number of messages currently being redelivered.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? numRedelivered;

  /// Waiting is the number of pull requests waiting for messages.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? numWaiting;

  /// Stream is the stream this consumer reads.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? streamName;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Consumer &&
    other.ackFloor == ackFloor &&
    other.config == config &&
    other.created == created &&
    other.delivered == delivered &&
    other.name == name &&
    other.numAckPending == numAckPending &&
    other.numPending == numPending &&
    other.numRedelivered == numRedelivered &&
    other.numWaiting == numWaiting &&
    other.streamName == streamName;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (ackFloor == null ? 0 : ackFloor!.hashCode) +
    (config == null ? 0 : config!.hashCode) +
    (created == null ? 0 : created!.hashCode) +
    (delivered == null ? 0 : delivered!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (numAckPending == null ? 0 : numAckPending!.hashCode) +
    (numPending == null ? 0 : numPending!.hashCode) +
    (numRedelivered == null ? 0 : numRedelivered!.hashCode) +
    (numWaiting == null ? 0 : numWaiting!.hashCode) +
    (streamName == null ? 0 : streamName!.hashCode);

  @override
  String toString() => 'Consumer[ackFloor=$ackFloor, config=$config, created=$created, delivered=$delivered, name=$name, numAckPending=$numAckPending, numPending=$numPending, numRedelivered=$numRedelivered, numWaiting=$numWaiting, streamName=$streamName]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.ackFloor != null) {
      json[r'ack_floor'] = this.ackFloor;
    } else {
      json[r'ack_floor'] = null;
    }
    if (this.config != null) {
      json[r'config'] = this.config;
    } else {
      json[r'config'] = null;
    }
    if (this.created != null) {
      json[r'created'] = this.created!.toUtc().toIso8601String();
    } else {
      json[r'created'] = null;
    }
    if (this.delivered != null) {
      json[r'delivered'] = this.delivered;
    } else {
      json[r'delivered'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.numAckPending != null) {
      json[r'num_ack_pending'] = this.numAckPending;
    } else {
      json[r'num_ack_pending'] = null;
    }
    if (this.numPending != null) {
      json[r'num_pending'] = this.numPending;
    } else {
      json[r'num_pending'] = null;
    }
    if (this.numRedelivered != null) {
      json[r'num_redelivered'] = this.numRedelivered;
    } else {
      json[r'num_redelivered'] = null;
    }
    if (this.numWaiting != null) {
      json[r'num_waiting'] = this.numWaiting;
    } else {
      json[r'num_waiting'] = null;
    }
    if (this.streamName != null) {
      json[r'stream_name'] = this.streamName;
    } else {
      json[r'stream_name'] = null;
    }
    return json;
  }

  /// Returns a new [Consumer] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Consumer? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Consumer[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Consumer[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Consumer(
        ackFloor: Sequences.fromJson(json[r'ack_floor']),
        config: Durable.fromJson(json[r'config']),
        created: mapDateTime(json, r'created', r''),
        delivered: Sequences.fromJson(json[r'delivered']),
        name: mapValueOfType<String>(json, r'name'),
        numAckPending: mapValueOfType<int>(json, r'num_ack_pending'),
        numPending: mapValueOfType<int>(json, r'num_pending'),
        numRedelivered: mapValueOfType<int>(json, r'num_redelivered'),
        numWaiting: mapValueOfType<int>(json, r'num_waiting'),
        streamName: mapValueOfType<String>(json, r'stream_name'),
      );
    }
    return null;
  }

  static List<Consumer> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Consumer>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Consumer.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Consumer> mapFromJson(dynamic json) {
    final map = <String, Consumer>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Consumer.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Consumer-objects as value to a dart map
  static Map<String, List<Consumer>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Consumer>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Consumer.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

