//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Delivery {
  /// Returns a new [Delivery] instance.
  Delivery({
    this.data,
    this.headers = const {},
    this.numDelivered,
    this.numPending,
    this.sequence,
    this.subject,
    this.timestamp,
  });

  /// Data is the payload, base64-encoded.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? data;

  /// Headers are the message headers, when any were published.
  Map<String, List<String>> headers;

  /// Delivered is how many times a consumer has been handed this message (pulls only).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? numDelivered;

  /// Remaining is how many messages follow this one for the consumer (pulls only).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? numPending;

  /// Sequence is the message's stream sequence.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? sequence;

  /// Subject is the org-relative subject the message was stored under.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? subject;

  /// Timestamp is when the broker stored the message.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? timestamp;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Delivery &&
    other.data == data &&
    _deepEquality.equals(other.headers, headers) &&
    other.numDelivered == numDelivered &&
    other.numPending == numPending &&
    other.sequence == sequence &&
    other.subject == subject &&
    other.timestamp == timestamp;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (data == null ? 0 : data!.hashCode) +
    (headers.hashCode) +
    (numDelivered == null ? 0 : numDelivered!.hashCode) +
    (numPending == null ? 0 : numPending!.hashCode) +
    (sequence == null ? 0 : sequence!.hashCode) +
    (subject == null ? 0 : subject!.hashCode) +
    (timestamp == null ? 0 : timestamp!.hashCode);

  @override
  String toString() => 'Delivery[data=$data, headers=$headers, numDelivered=$numDelivered, numPending=$numPending, sequence=$sequence, subject=$subject, timestamp=$timestamp]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.data != null) {
      json[r'data'] = this.data;
    } else {
      json[r'data'] = null;
    }
      json[r'headers'] = this.headers;
    if (this.numDelivered != null) {
      json[r'num_delivered'] = this.numDelivered;
    } else {
      json[r'num_delivered'] = null;
    }
    if (this.numPending != null) {
      json[r'num_pending'] = this.numPending;
    } else {
      json[r'num_pending'] = null;
    }
    if (this.sequence != null) {
      json[r'sequence'] = this.sequence;
    } else {
      json[r'sequence'] = null;
    }
    if (this.subject != null) {
      json[r'subject'] = this.subject;
    } else {
      json[r'subject'] = null;
    }
    if (this.timestamp != null) {
      json[r'timestamp'] = this.timestamp!.toUtc().toIso8601String();
    } else {
      json[r'timestamp'] = null;
    }
    return json;
  }

  /// Returns a new [Delivery] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Delivery? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Delivery[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Delivery[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Delivery(
        data: mapValueOfType<String>(json, r'data'),
        headers: json[r'headers'] == null
          ? const {}
            : (json[r'headers'] as Map).map((k, v) => MapEntry(k as String, v == null ? const <String>[] : (v as List).cast<String>().toList(growable: false))),
        numDelivered: mapValueOfType<int>(json, r'num_delivered'),
        numPending: mapValueOfType<int>(json, r'num_pending'),
        sequence: mapValueOfType<int>(json, r'sequence'),
        subject: mapValueOfType<String>(json, r'subject'),
        timestamp: mapDateTime(json, r'timestamp', r''),
      );
    }
    return null;
  }

  static List<Delivery> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Delivery>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Delivery.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Delivery> mapFromJson(dynamic json) {
    final map = <String, Delivery>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Delivery.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Delivery-objects as value to a dart map
  static Map<String, List<Delivery>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Delivery>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Delivery.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

