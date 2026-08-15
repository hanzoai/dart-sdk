//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ConnectorTokenOut {
  /// Returns a new [ConnectorTokenOut] instance.
  ConnectorTokenOut({
    this.expiresAt,
    this.label,
    this.provider,
    this.token,
  });

  /// ExpiresAt is when this token expires, RFC 3339 UTC; empty if non-expiring.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? expiresAt;

  /// Label is the connector's label.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? label;

  /// Provider is the connector's provider id.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? provider;

  /// Token is the access token, rotated first if it was within the refresh window.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? token;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ConnectorTokenOut &&
    other.expiresAt == expiresAt &&
    other.label == label &&
    other.provider == provider &&
    other.token == token;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (expiresAt == null ? 0 : expiresAt!.hashCode) +
    (label == null ? 0 : label!.hashCode) +
    (provider == null ? 0 : provider!.hashCode) +
    (token == null ? 0 : token!.hashCode);

  @override
  String toString() => 'ConnectorTokenOut[expiresAt=$expiresAt, label=$label, provider=$provider, token=$token]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.expiresAt != null) {
      json[r'expiresAt'] = this.expiresAt;
    } else {
      json[r'expiresAt'] = null;
    }
    if (this.label != null) {
      json[r'label'] = this.label;
    } else {
      json[r'label'] = null;
    }
    if (this.provider != null) {
      json[r'provider'] = this.provider;
    } else {
      json[r'provider'] = null;
    }
    if (this.token != null) {
      json[r'token'] = this.token;
    } else {
      json[r'token'] = null;
    }
    return json;
  }

  /// Returns a new [ConnectorTokenOut] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ConnectorTokenOut? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ConnectorTokenOut[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ConnectorTokenOut[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ConnectorTokenOut(
        expiresAt: mapValueOfType<String>(json, r'expiresAt'),
        label: mapValueOfType<String>(json, r'label'),
        provider: mapValueOfType<String>(json, r'provider'),
        token: mapValueOfType<String>(json, r'token'),
      );
    }
    return null;
  }

  static List<ConnectorTokenOut> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ConnectorTokenOut>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ConnectorTokenOut.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ConnectorTokenOut> mapFromJson(dynamic json) {
    final map = <String, ConnectorTokenOut>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ConnectorTokenOut.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ConnectorTokenOut-objects as value to a dart map
  static Map<String, List<ConnectorTokenOut>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ConnectorTokenOut>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ConnectorTokenOut.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

