//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class LicensingVerifyRequest {
  /// Returns a new [LicensingVerifyRequest] instance.
  LicensingVerifyRequest({
    this.app,
    required this.token,
  });
  /// App overrides the app_id the token is expected to carry. Leave it empty and the token's own app_id is used — an online verify is informational, and it is the ENGINE that enforces the app at boot.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? app;

  /// Token is the license token to check.
  String token;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LicensingVerifyRequest &&
    other.app == app &&
    other.token == token;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (app == null ? 0 : app!.hashCode) +
    (token.hashCode);

  @override
  String toString() => 'LicensingVerifyRequest[app=$app, token=$token]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.app != null) {
      json[r'app'] = this.app;
    } else {
      json[r'app'] = null;
    }
      json[r'token'] = this.token;
    return json;
  }

  /// Returns a new [LicensingVerifyRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LicensingVerifyRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "LicensingVerifyRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "LicensingVerifyRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return LicensingVerifyRequest(
        app: mapValueOfType<String>(json, r'app'),
        token: mapValueOfType<String>(json, r'token')!,
      );
    }
    return null;
  }

  static List<LicensingVerifyRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LicensingVerifyRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LicensingVerifyRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LicensingVerifyRequest> mapFromJson(dynamic json) {
    final map = <String, LicensingVerifyRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LicensingVerifyRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LicensingVerifyRequest-objects as value to a dart map
  static Map<String, List<LicensingVerifyRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<LicensingVerifyRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = LicensingVerifyRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'token',
  };
}

