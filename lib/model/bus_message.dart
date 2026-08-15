//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class BusMessage {
  /// Returns a new [BusMessage] instance.
  BusMessage({
    this.data,
    this.headers = const {},
    this.seq,
    this.subject,
    this.time,
  });

  /// Data is the payload as UTF-8 text.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? data;

  /// Headers are the message's headers, when it carries any.
  Map<String, List<String>> headers;

  /// Seq is the message's stream sequence — fetched messages only.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? seq;

  /// Subject is the message's subject in the org's own namespace.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? subject;

  /// Time is when the stream stored the message, RFC3339 — fetched messages only.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? time;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BusMessage &&
    other.data == data &&
    _deepEquality.equals(other.headers, headers) &&
    other.seq == seq &&
    other.subject == subject &&
    other.time == time;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (data == null ? 0 : data!.hashCode) +
    (headers.hashCode) +
    (seq == null ? 0 : seq!.hashCode) +
    (subject == null ? 0 : subject!.hashCode) +
    (time == null ? 0 : time!.hashCode);

  @override
  String toString() => 'BusMessage[data=$data, headers=$headers, seq=$seq, subject=$subject, time=$time]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.data != null) {
      json[r'data'] = this.data;
    } else {
      json[r'data'] = null;
    }
      json[r'headers'] = this.headers;
    if (this.seq != null) {
      json[r'seq'] = this.seq;
    } else {
      json[r'seq'] = null;
    }
    if (this.subject != null) {
      json[r'subject'] = this.subject;
    } else {
      json[r'subject'] = null;
    }
    if (this.time != null) {
      json[r'time'] = this.time;
    } else {
      json[r'time'] = null;
    }
    return json;
  }

  /// Returns a new [BusMessage] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BusMessage? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "BusMessage[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "BusMessage[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return BusMessage(
        data: mapValueOfType<String>(json, r'data'),
        headers: json[r'headers'] == null
          ? const {}
            : (json[r'headers'] as Map).map((k, v) => MapEntry(k as String, v == null ? const <String>[] : (v as List).cast<String>().toList(growable: false))),
        seq: mapValueOfType<int>(json, r'seq'),
        subject: mapValueOfType<String>(json, r'subject'),
        time: mapValueOfType<String>(json, r'time'),
      );
    }
    return null;
  }

  static List<BusMessage> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BusMessage>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BusMessage.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, BusMessage> mapFromJson(dynamic json) {
    final map = <String, BusMessage>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BusMessage.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of BusMessage-objects as value to a dart map
  static Map<String, List<BusMessage>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<BusMessage>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = BusMessage.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

