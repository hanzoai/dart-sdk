//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yO11yOIDCConfig {
  /// Returns a new [O11yO11yOIDCConfig] instance.
  O11yO11yOIDCConfig({
    this.claimMapping,
    this.clientId,
    this.clientSecret,
    this.getUserInfo,
    this.insecureSkipEmailVerified,
    this.issuer,
    this.issuerAlias,
  });
  /// ClaimMapping names the token claims to read identity from.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  O11yO11yAttributeMapping? claimMapping;

  /// ClientID is the OAuth application's id.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? clientId;

  /// ClientSecret is the OAuth application's secret.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? clientSecret;

  /// GetUserInfo also queries the userinfo endpoint, for providers whose id tokens are thin.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? getUserInfo;

  /// InsecureSkipEmailVerified admits addresses the provider has not verified.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? insecureSkipEmailVerified;

  /// Issuer is the provider's issuer URL.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? issuer;

  /// IssuerAlias overrides the issuer for providers whose discovery document disagrees with their issuer URL.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? issuerAlias;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yO11yOIDCConfig &&
    other.claimMapping == claimMapping &&
    other.clientId == clientId &&
    other.clientSecret == clientSecret &&
    other.getUserInfo == getUserInfo &&
    other.insecureSkipEmailVerified == insecureSkipEmailVerified &&
    other.issuer == issuer &&
    other.issuerAlias == issuerAlias;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (claimMapping == null ? 0 : claimMapping!.hashCode) +
    (clientId == null ? 0 : clientId!.hashCode) +
    (clientSecret == null ? 0 : clientSecret!.hashCode) +
    (getUserInfo == null ? 0 : getUserInfo!.hashCode) +
    (insecureSkipEmailVerified == null ? 0 : insecureSkipEmailVerified!.hashCode) +
    (issuer == null ? 0 : issuer!.hashCode) +
    (issuerAlias == null ? 0 : issuerAlias!.hashCode);

  @override
  String toString() => 'O11yO11yOIDCConfig[claimMapping=$claimMapping, clientId=$clientId, clientSecret=$clientSecret, getUserInfo=$getUserInfo, insecureSkipEmailVerified=$insecureSkipEmailVerified, issuer=$issuer, issuerAlias=$issuerAlias]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.claimMapping != null) {
      json[r'claimMapping'] = this.claimMapping;
    } else {
      json[r'claimMapping'] = null;
    }
    if (this.clientId != null) {
      json[r'clientId'] = this.clientId;
    } else {
      json[r'clientId'] = null;
    }
    if (this.clientSecret != null) {
      json[r'clientSecret'] = this.clientSecret;
    } else {
      json[r'clientSecret'] = null;
    }
    if (this.getUserInfo != null) {
      json[r'getUserInfo'] = this.getUserInfo;
    } else {
      json[r'getUserInfo'] = null;
    }
    if (this.insecureSkipEmailVerified != null) {
      json[r'insecureSkipEmailVerified'] = this.insecureSkipEmailVerified;
    } else {
      json[r'insecureSkipEmailVerified'] = null;
    }
    if (this.issuer != null) {
      json[r'issuer'] = this.issuer;
    } else {
      json[r'issuer'] = null;
    }
    if (this.issuerAlias != null) {
      json[r'issuerAlias'] = this.issuerAlias;
    } else {
      json[r'issuerAlias'] = null;
    }
    return json;
  }

  /// Returns a new [O11yO11yOIDCConfig] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yO11yOIDCConfig? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yO11yOIDCConfig[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yO11yOIDCConfig[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yO11yOIDCConfig(
        claimMapping: O11yO11yAttributeMapping.fromJson(json[r'claimMapping']),
        clientId: mapValueOfType<String>(json, r'clientId'),
        clientSecret: mapValueOfType<String>(json, r'clientSecret'),
        getUserInfo: mapValueOfType<bool>(json, r'getUserInfo'),
        insecureSkipEmailVerified: mapValueOfType<bool>(json, r'insecureSkipEmailVerified'),
        issuer: mapValueOfType<String>(json, r'issuer'),
        issuerAlias: mapValueOfType<String>(json, r'issuerAlias'),
      );
    }
    return null;
  }

  static List<O11yO11yOIDCConfig> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yO11yOIDCConfig>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yO11yOIDCConfig.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yO11yOIDCConfig> mapFromJson(dynamic json) {
    final map = <String, O11yO11yOIDCConfig>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yO11yOIDCConfig.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yO11yOIDCConfig-objects as value to a dart map
  static Map<String, List<O11yO11yOIDCConfig>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yO11yOIDCConfig>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yO11yOIDCConfig.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

