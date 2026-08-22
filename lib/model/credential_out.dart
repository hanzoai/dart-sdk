//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class CredentialOut {
  /// Returns a new [CredentialOut] instance.
  CredentialOut({
    this.connected,
    this.connector,
  });
  /// Connected is always true — a failed verification is a 400 and stores nothing.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? connected;

  /// Connection is the connector as it now stands.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ConnView? connector;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CredentialOut &&
    other.connected == connected &&
    other.connector == connector;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (connected == null ? 0 : connected!.hashCode) +
    (connector == null ? 0 : connector!.hashCode);

  @override
  String toString() => 'CredentialOut[connected=$connected, connector=$connector]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.connected != null) {
      json[r'connected'] = this.connected;
    } else {
      json[r'connected'] = null;
    }
    if (this.connector != null) {
      json[r'connector'] = this.connector;
    } else {
      json[r'connector'] = null;
    }
    return json;
  }

  /// Returns a new [CredentialOut] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CredentialOut? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CredentialOut[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CredentialOut[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CredentialOut(
        connected: mapValueOfType<bool>(json, r'connected'),
        connector: ConnView.fromJson(json[r'connector']),
      );
    }
    return null;
  }

  static List<CredentialOut> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CredentialOut>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CredentialOut.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CredentialOut> mapFromJson(dynamic json) {
    final map = <String, CredentialOut>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CredentialOut.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CredentialOut-objects as value to a dart map
  static Map<String, List<CredentialOut>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CredentialOut>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CredentialOut.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

