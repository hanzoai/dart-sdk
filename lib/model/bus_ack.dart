//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class BusAck {
  /// Returns a new [BusAck] instance.
  BusAck({
    this.duplicate,
    this.ok,
    this.seq,
    this.stream,
  });
  /// Duplicate is true when JetStream deduplicated the message by its Nats-Msg-Id instead of storing it again.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? duplicate;

  /// OK is true when the bus accepted the message.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? ok;

  /// Seq is the message's sequence in that stream.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? seq;

  /// Stream is the stream that stored the message — absent when no stream captures the subject and the message went out core (fire-and-forget).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? stream;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BusAck &&
    other.duplicate == duplicate &&
    other.ok == ok &&
    other.seq == seq &&
    other.stream == stream;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (duplicate == null ? 0 : duplicate!.hashCode) +
    (ok == null ? 0 : ok!.hashCode) +
    (seq == null ? 0 : seq!.hashCode) +
    (stream == null ? 0 : stream!.hashCode);

  @override
  String toString() => 'BusAck[duplicate=$duplicate, ok=$ok, seq=$seq, stream=$stream]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.duplicate != null) {
      json[r'duplicate'] = this.duplicate;
    } else {
      json[r'duplicate'] = null;
    }
    if (this.ok != null) {
      json[r'ok'] = this.ok;
    } else {
      json[r'ok'] = null;
    }
    if (this.seq != null) {
      json[r'seq'] = this.seq;
    } else {
      json[r'seq'] = null;
    }
    if (this.stream != null) {
      json[r'stream'] = this.stream;
    } else {
      json[r'stream'] = null;
    }
    return json;
  }

  /// Returns a new [BusAck] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BusAck? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "BusAck[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "BusAck[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return BusAck(
        duplicate: mapValueOfType<bool>(json, r'duplicate'),
        ok: mapValueOfType<bool>(json, r'ok'),
        seq: mapValueOfType<int>(json, r'seq'),
        stream: mapValueOfType<String>(json, r'stream'),
      );
    }
    return null;
  }

  static List<BusAck> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BusAck>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BusAck.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, BusAck> mapFromJson(dynamic json) {
    final map = <String, BusAck>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BusAck.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of BusAck-objects as value to a dart map
  static Map<String, List<BusAck>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<BusAck>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = BusAck.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

