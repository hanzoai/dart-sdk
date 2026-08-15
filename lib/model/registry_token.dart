//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class RegistryToken {
  /// Returns a new [RegistryToken] instance.
  RegistryToken({
    this.expires,
    this.ref,
    this.token,
  });

  /// Expires is the token's lifetime in seconds.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? expires;

  /// Ref is the one repository reference the token can pull.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? ref;

  /// Token is the bearer to present on the OCI wire (`Authorization: Bearer …` against the host's /v2/ routes).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? token;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RegistryToken &&
    other.expires == expires &&
    other.ref == ref &&
    other.token == token;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (expires == null ? 0 : expires!.hashCode) +
    (ref == null ? 0 : ref!.hashCode) +
    (token == null ? 0 : token!.hashCode);

  @override
  String toString() => 'RegistryToken[expires=$expires, ref=$ref, token=$token]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.expires != null) {
      json[r'expires'] = this.expires;
    } else {
      json[r'expires'] = null;
    }
    if (this.ref != null) {
      json[r'ref'] = this.ref;
    } else {
      json[r'ref'] = null;
    }
    if (this.token != null) {
      json[r'token'] = this.token;
    } else {
      json[r'token'] = null;
    }
    return json;
  }

  /// Returns a new [RegistryToken] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RegistryToken? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RegistryToken[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RegistryToken[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RegistryToken(
        expires: mapValueOfType<int>(json, r'expires'),
        ref: mapValueOfType<String>(json, r'ref'),
        token: mapValueOfType<String>(json, r'token'),
      );
    }
    return null;
  }

  static List<RegistryToken> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RegistryToken>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RegistryToken.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RegistryToken> mapFromJson(dynamic json) {
    final map = <String, RegistryToken>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RegistryToken.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RegistryToken-objects as value to a dart map
  static Map<String, List<RegistryToken>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RegistryToken>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RegistryToken.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

