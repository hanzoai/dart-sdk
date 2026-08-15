//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class BusRequest {
  /// Returns a new [BusRequest] instance.
  BusRequest({
    this.data,
    this.headers = const {},
    this.subject,
    this.timeoutMs,
  });

  /// Data is the request payload, carried verbatim as UTF-8 text.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? data;

  /// Headers are optional request headers, one value per name.
  Map<String, String> headers;

  /// Subject is the subject a responder listens on, in the org's namespace.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? subject;

  /// TimeoutMs bounds the wait for a reply. 0 or less means the default of 5000; anything above 30000 is clamped to 30000.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? timeoutMs;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BusRequest &&
    other.data == data &&
    _deepEquality.equals(other.headers, headers) &&
    other.subject == subject &&
    other.timeoutMs == timeoutMs;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (data == null ? 0 : data!.hashCode) +
    (headers.hashCode) +
    (subject == null ? 0 : subject!.hashCode) +
    (timeoutMs == null ? 0 : timeoutMs!.hashCode);

  @override
  String toString() => 'BusRequest[data=$data, headers=$headers, subject=$subject, timeoutMs=$timeoutMs]';

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
    if (this.timeoutMs != null) {
      json[r'timeoutMs'] = this.timeoutMs;
    } else {
      json[r'timeoutMs'] = null;
    }
    return json;
  }

  /// Returns a new [BusRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BusRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "BusRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "BusRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return BusRequest(
        data: mapValueOfType<String>(json, r'data'),
        headers: mapCastOfType<String, String>(json, r'headers') ?? const {},
        subject: mapValueOfType<String>(json, r'subject'),
        timeoutMs: mapValueOfType<int>(json, r'timeoutMs'),
      );
    }
    return null;
  }

  static List<BusRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BusRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BusRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, BusRequest> mapFromJson(dynamic json) {
    final map = <String, BusRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BusRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of BusRequest-objects as value to a dart map
  static Map<String, List<BusRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<BusRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = BusRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

