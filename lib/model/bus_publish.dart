//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class BusPublish {
  /// Returns a new [BusPublish] instance.
  BusPublish({
    this.data,
    this.headers = const {},
    this.subject,
  });

  /// Data is the payload, carried verbatim as UTF-8 text (typically JSON). Binary payloads belong on the NATS port.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? data;

  /// Headers are optional message headers, one value per name. A Nats-Msg-Id header is JetStream's deduplication key: a repeat within the stream's dedup window is acknowledged as duplicate rather than stored twice.
  Map<String, String> headers;

  /// Subject is the subject to publish to, in the org's own namespace — e.g. orders.created. No wildcards.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? subject;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BusPublish &&
    other.data == data &&
    _deepEquality.equals(other.headers, headers) &&
    other.subject == subject;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (data == null ? 0 : data!.hashCode) +
    (headers.hashCode) +
    (subject == null ? 0 : subject!.hashCode);

  @override
  String toString() => 'BusPublish[data=$data, headers=$headers, subject=$subject]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.data != null) {
      json[r'data'] = this.data;
    } else {
      json[r'data'] = null;
    }
      json[r'headers'] = this.headers;
    if (this.subject != null) {
      json[r'subject'] = this.subject;
    } else {
      json[r'subject'] = null;
    }
    return json;
  }

  /// Returns a new [BusPublish] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BusPublish? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "BusPublish[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "BusPublish[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return BusPublish(
        data: mapValueOfType<String>(json, r'data'),
        headers: mapCastOfType<String, String>(json, r'headers') ?? const {},
        subject: mapValueOfType<String>(json, r'subject'),
      );
    }
    return null;
  }

  static List<BusPublish> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BusPublish>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BusPublish.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, BusPublish> mapFromJson(dynamic json) {
    final map = <String, BusPublish>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BusPublish.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of BusPublish-objects as value to a dart map
  static Map<String, List<BusPublish>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<BusPublish>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = BusPublish.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

