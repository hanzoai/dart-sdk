//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yO11yToken {
  /// Returns a new [O11yO11yToken] instance.
  O11yO11yToken({
    this.accessToken,
    this.expiresIn,
    this.refreshToken,
    this.tokenType,
  });

  /// AccessToken authenticates requests until it expires.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? accessToken;

  /// ExpiresIn is the access token's lifetime in seconds.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? expiresIn;

  /// RefreshToken buys the next pair via rotateSession.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? refreshToken;

  /// TokenType is how to present the access token, e.g. bearer.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? tokenType;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yO11yToken &&
    other.accessToken == accessToken &&
    other.expiresIn == expiresIn &&
    other.refreshToken == refreshToken &&
    other.tokenType == tokenType;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (accessToken == null ? 0 : accessToken!.hashCode) +
    (expiresIn == null ? 0 : expiresIn!.hashCode) +
    (refreshToken == null ? 0 : refreshToken!.hashCode) +
    (tokenType == null ? 0 : tokenType!.hashCode);

  @override
  String toString() => 'O11yO11yToken[accessToken=$accessToken, expiresIn=$expiresIn, refreshToken=$refreshToken, tokenType=$tokenType]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.accessToken != null) {
      json[r'accessToken'] = this.accessToken;
    } else {
      json[r'accessToken'] = null;
    }
    if (this.expiresIn != null) {
      json[r'expiresIn'] = this.expiresIn;
    } else {
      json[r'expiresIn'] = null;
    }
    if (this.refreshToken != null) {
      json[r'refreshToken'] = this.refreshToken;
    } else {
      json[r'refreshToken'] = null;
    }
    if (this.tokenType != null) {
      json[r'tokenType'] = this.tokenType;
    } else {
      json[r'tokenType'] = null;
    }
    return json;
  }

  /// Returns a new [O11yO11yToken] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yO11yToken? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yO11yToken[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yO11yToken[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yO11yToken(
        accessToken: mapValueOfType<String>(json, r'accessToken'),
        expiresIn: mapValueOfType<int>(json, r'expiresIn'),
        refreshToken: mapValueOfType<String>(json, r'refreshToken'),
        tokenType: mapValueOfType<String>(json, r'tokenType'),
      );
    }
    return null;
  }

  static List<O11yO11yToken> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yO11yToken>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yO11yToken.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yO11yToken> mapFromJson(dynamic json) {
    final map = <String, O11yO11yToken>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yO11yToken.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yO11yToken-objects as value to a dart map
  static Map<String, List<O11yO11yToken>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yO11yToken>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yO11yToken.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

