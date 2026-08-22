//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class KmsToken {
  /// Returns a new [KmsToken] instance.
  KmsToken({
    this.accessToken,
    this.expiresIn,
    this.tokenType,
  });
  /// AccessToken is IAM's own JWT, verbatim. Its `owner` claim scopes it to exactly one org, which is what every secret operation then reads.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? accessToken;

  /// ExpiresIn is the token's lifetime in seconds, as IAM reported it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? expiresIn;

  /// TokenType is `Bearer`.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? tokenType;

  @override
  bool operator ==(Object other) => identical(this, other) || other is KmsToken &&
    other.accessToken == accessToken &&
    other.expiresIn == expiresIn &&
    other.tokenType == tokenType;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (accessToken == null ? 0 : accessToken!.hashCode) +
    (expiresIn == null ? 0 : expiresIn!.hashCode) +
    (tokenType == null ? 0 : tokenType!.hashCode);

  @override
  String toString() => 'KmsToken[accessToken=$accessToken, expiresIn=$expiresIn, tokenType=$tokenType]';

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
    if (this.tokenType != null) {
      json[r'tokenType'] = this.tokenType;
    } else {
      json[r'tokenType'] = null;
    }
    return json;
  }

  /// Returns a new [KmsToken] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static KmsToken? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "KmsToken[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "KmsToken[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return KmsToken(
        accessToken: mapValueOfType<String>(json, r'accessToken'),
        expiresIn: mapValueOfType<int>(json, r'expiresIn'),
        tokenType: mapValueOfType<String>(json, r'tokenType'),
      );
    }
    return null;
  }

  static List<KmsToken> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <KmsToken>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = KmsToken.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, KmsToken> mapFromJson(dynamic json) {
    final map = <String, KmsToken>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = KmsToken.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of KmsToken-objects as value to a dart map
  static Map<String, List<KmsToken>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<KmsToken>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = KmsToken.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

