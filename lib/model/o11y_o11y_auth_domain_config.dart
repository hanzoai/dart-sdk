//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yO11yAuthDomainConfig {
  /// Returns a new [O11yO11yAuthDomainConfig] instance.
  O11yO11yAuthDomainConfig({
    this.googleAuthConfig,
    this.oidcConfig,
    this.roleMapping,
    this.samlConfig,
    this.ssoEnabled,
    this.ssoType,
  });
  /// Google is the Google provider's settings, when SSOType is google_auth.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  O11yO11yGoogleConfig? googleAuthConfig;

  /// OIDC is the OIDC provider's settings, when SSOType is oidc.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  O11yO11yOIDCConfig? oidcConfig;

  /// RoleMapping maps the provider's groups onto roles for new users.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  O11yO11yRoleMapping? roleMapping;

  /// SAML is the SAML provider's settings, when SSOType is saml.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  O11yO11ySAMLConfig? samlConfig;

  /// SSOEnabled turns enforced SSO on for the domain.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? ssoEnabled;

  /// SSOType picks the provider — saml, google_auth or oidc.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? ssoType;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yO11yAuthDomainConfig &&
    other.googleAuthConfig == googleAuthConfig &&
    other.oidcConfig == oidcConfig &&
    other.roleMapping == roleMapping &&
    other.samlConfig == samlConfig &&
    other.ssoEnabled == ssoEnabled &&
    other.ssoType == ssoType;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (googleAuthConfig == null ? 0 : googleAuthConfig!.hashCode) +
    (oidcConfig == null ? 0 : oidcConfig!.hashCode) +
    (roleMapping == null ? 0 : roleMapping!.hashCode) +
    (samlConfig == null ? 0 : samlConfig!.hashCode) +
    (ssoEnabled == null ? 0 : ssoEnabled!.hashCode) +
    (ssoType == null ? 0 : ssoType!.hashCode);

  @override
  String toString() => 'O11yO11yAuthDomainConfig[googleAuthConfig=$googleAuthConfig, oidcConfig=$oidcConfig, roleMapping=$roleMapping, samlConfig=$samlConfig, ssoEnabled=$ssoEnabled, ssoType=$ssoType]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.googleAuthConfig != null) {
      json[r'googleAuthConfig'] = this.googleAuthConfig;
    } else {
      json[r'googleAuthConfig'] = null;
    }
    if (this.oidcConfig != null) {
      json[r'oidcConfig'] = this.oidcConfig;
    } else {
      json[r'oidcConfig'] = null;
    }
    if (this.roleMapping != null) {
      json[r'roleMapping'] = this.roleMapping;
    } else {
      json[r'roleMapping'] = null;
    }
    if (this.samlConfig != null) {
      json[r'samlConfig'] = this.samlConfig;
    } else {
      json[r'samlConfig'] = null;
    }
    if (this.ssoEnabled != null) {
      json[r'ssoEnabled'] = this.ssoEnabled;
    } else {
      json[r'ssoEnabled'] = null;
    }
    if (this.ssoType != null) {
      json[r'ssoType'] = this.ssoType;
    } else {
      json[r'ssoType'] = null;
    }
    return json;
  }

  /// Returns a new [O11yO11yAuthDomainConfig] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yO11yAuthDomainConfig? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yO11yAuthDomainConfig[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yO11yAuthDomainConfig[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yO11yAuthDomainConfig(
        googleAuthConfig: O11yO11yGoogleConfig.fromJson(json[r'googleAuthConfig']),
        oidcConfig: O11yO11yOIDCConfig.fromJson(json[r'oidcConfig']),
        roleMapping: O11yO11yRoleMapping.fromJson(json[r'roleMapping']),
        samlConfig: O11yO11ySAMLConfig.fromJson(json[r'samlConfig']),
        ssoEnabled: mapValueOfType<bool>(json, r'ssoEnabled'),
        ssoType: mapValueOfType<String>(json, r'ssoType'),
      );
    }
    return null;
  }

  static List<O11yO11yAuthDomainConfig> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yO11yAuthDomainConfig>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yO11yAuthDomainConfig.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yO11yAuthDomainConfig> mapFromJson(dynamic json) {
    final map = <String, O11yO11yAuthDomainConfig>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yO11yAuthDomainConfig.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yO11yAuthDomainConfig-objects as value to a dart map
  static Map<String, List<O11yO11yAuthDomainConfig>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yO11yAuthDomainConfig>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yO11yAuthDomainConfig.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

