//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class DestinationTest {
  /// Returns a new [DestinationTest] instance.
  DestinationTest({
    this.error,
    this.message,
    this.ok,
    this.sent,
  });
  /// Error is the platform's rejection, present only on a failed send.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? error;

  /// Message is the platform's own note about the send, present only on success.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? message;

  /// OK is true when the platform accepted the synthetic event.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? ok;

  /// Sent is how many events the platform accepted, present only on success.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? sent;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DestinationTest &&
    other.error == error &&
    other.message == message &&
    other.ok == ok &&
    other.sent == sent;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (error == null ? 0 : error!.hashCode) +
    (message == null ? 0 : message!.hashCode) +
    (ok == null ? 0 : ok!.hashCode) +
    (sent == null ? 0 : sent!.hashCode);

  @override
  String toString() => 'DestinationTest[error=$error, message=$message, ok=$ok, sent=$sent]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.error != null) {
      json[r'error'] = this.error;
    } else {
      json[r'error'] = null;
    }
    if (this.message != null) {
      json[r'message'] = this.message;
    } else {
      json[r'message'] = null;
    }
    if (this.ok != null) {
      json[r'ok'] = this.ok;
    } else {
      json[r'ok'] = null;
    }
    if (this.sent != null) {
      json[r'sent'] = this.sent;
    } else {
      json[r'sent'] = null;
    }
    return json;
  }

  /// Returns a new [DestinationTest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DestinationTest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DestinationTest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DestinationTest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DestinationTest(
        error: mapValueOfType<String>(json, r'error'),
        message: mapValueOfType<String>(json, r'message'),
        ok: mapValueOfType<bool>(json, r'ok'),
        sent: mapValueOfType<int>(json, r'sent'),
      );
    }
    return null;
  }

  static List<DestinationTest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DestinationTest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DestinationTest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DestinationTest> mapFromJson(dynamic json) {
    final map = <String, DestinationTest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DestinationTest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DestinationTest-objects as value to a dart map
  static Map<String, List<DestinationTest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DestinationTest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DestinationTest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

