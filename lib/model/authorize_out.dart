//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class AuthorizeOut {
  /// Returns a new [AuthorizeOut] instance.
  AuthorizeOut({
    this.authorizeUrl,
  });
  /// AuthorizeURL is the provider consent (or bot deep-link) URL.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? authorizeUrl;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AuthorizeOut &&
    other.authorizeUrl == authorizeUrl;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (authorizeUrl == null ? 0 : authorizeUrl!.hashCode);

  @override
  String toString() => 'AuthorizeOut[authorizeUrl=$authorizeUrl]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.authorizeUrl != null) {
      json[r'authorizeUrl'] = this.authorizeUrl;
    } else {
      json[r'authorizeUrl'] = null;
    }
    return json;
  }

  /// Returns a new [AuthorizeOut] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AuthorizeOut? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AuthorizeOut[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AuthorizeOut[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AuthorizeOut(
        authorizeUrl: mapValueOfType<String>(json, r'authorizeUrl'),
      );
    }
    return null;
  }

  static List<AuthorizeOut> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AuthorizeOut>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AuthorizeOut.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AuthorizeOut> mapFromJson(dynamic json) {
    final map = <String, AuthorizeOut>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AuthorizeOut.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AuthorizeOut-objects as value to a dart map
  static Map<String, List<AuthorizeOut>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AuthorizeOut>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AuthorizeOut.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

