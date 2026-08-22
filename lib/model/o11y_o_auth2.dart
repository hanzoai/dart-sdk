//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yOAuth2 {
  /// Returns a new [O11yOAuth2] instance.
  O11yOAuth2({
    this.tLSConfig,
    this.audience,
    this.claims = const {},
    this.clientCertificateKey,
    this.clientCertificateKeyFile,
    this.clientCertificateKeyId,
    this.clientCertificateKeyRef,
    this.clientId,
    this.clientSecret,
    this.clientSecretFile,
    this.clientSecretRef,
    this.endpointParams = const {},
    this.grantType,
    this.iss,
    this.noProxy,
    this.proxyConnectHeader = const {},
    this.proxyFromEnvironment,
    this.proxyUrl,
    this.scopes = const [],
    this.signatureAlgorithm,
    this.tokenUrl,
  });
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  O11yTLSConfig? tLSConfig;

  /// Audience optionally specifies the intended audience of the request.  If empty, the value of TokenURL is used as the intended audience. Only used if GrantType is set to \"urn:ietf:params:oauth:grant-type:jwt-bearer\".
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? audience;

  /// Claims is a map of claims to be added to the JWT token. Only used if GrantType is set to \"urn:ietf:params:oauth:grant-type:jwt-bearer\".
  Map<String, Object> claims;

  Object? clientCertificateKey;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? clientCertificateKeyFile;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? clientCertificateKeyId;

  /// ClientCertificateKeyRef is the name of the secret within the secret manager to use as the client secret.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? clientCertificateKeyRef;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? clientId;

  Object? clientSecret;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? clientSecretFile;

  /// ClientSecretRef is the name of the secret within the secret manager to use as the client secret.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? clientSecretRef;

  Map<String, String> endpointParams;

  /// GrantType is the OAuth2 grant type to use. It can be one of \"client_credentials\" or \"urn:ietf:params:oauth:grant-type:jwt-bearer\" (RFC 7523). Default value is \"client_credentials\"
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? grantType;

  /// Iss is the OAuth client identifier used when communicating with the configured OAuth provider. Default value is client_id. Only used if GrantType is set to \"urn:ietf:params:oauth:grant-type:jwt-bearer\".
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? iss;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? noProxy;

  Map<String, List<Object>> proxyConnectHeader;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? proxyFromEnvironment;

  Object? proxyUrl;

  List<String> scopes;

  /// SignatureAlgorithm is the RSA algorithm used to sign JWT token. Only used if GrantType is set to \"urn:ietf:params:oauth:grant-type:jwt-bearer\". Default value is RS256 and valid values RS256, RS384, RS512
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? signatureAlgorithm;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? tokenUrl;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yOAuth2 &&
    other.tLSConfig == tLSConfig &&
    other.audience == audience &&
    _deepEquality.equals(other.claims, claims) &&
    other.clientCertificateKey == clientCertificateKey &&
    other.clientCertificateKeyFile == clientCertificateKeyFile &&
    other.clientCertificateKeyId == clientCertificateKeyId &&
    other.clientCertificateKeyRef == clientCertificateKeyRef &&
    other.clientId == clientId &&
    other.clientSecret == clientSecret &&
    other.clientSecretFile == clientSecretFile &&
    other.clientSecretRef == clientSecretRef &&
    _deepEquality.equals(other.endpointParams, endpointParams) &&
    other.grantType == grantType &&
    other.iss == iss &&
    other.noProxy == noProxy &&
    _deepEquality.equals(other.proxyConnectHeader, proxyConnectHeader) &&
    other.proxyFromEnvironment == proxyFromEnvironment &&
    other.proxyUrl == proxyUrl &&
    _deepEquality.equals(other.scopes, scopes) &&
    other.signatureAlgorithm == signatureAlgorithm &&
    other.tokenUrl == tokenUrl;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (tLSConfig == null ? 0 : tLSConfig!.hashCode) +
    (audience == null ? 0 : audience!.hashCode) +
    (claims.hashCode) +
    (clientCertificateKey == null ? 0 : clientCertificateKey!.hashCode) +
    (clientCertificateKeyFile == null ? 0 : clientCertificateKeyFile!.hashCode) +
    (clientCertificateKeyId == null ? 0 : clientCertificateKeyId!.hashCode) +
    (clientCertificateKeyRef == null ? 0 : clientCertificateKeyRef!.hashCode) +
    (clientId == null ? 0 : clientId!.hashCode) +
    (clientSecret == null ? 0 : clientSecret!.hashCode) +
    (clientSecretFile == null ? 0 : clientSecretFile!.hashCode) +
    (clientSecretRef == null ? 0 : clientSecretRef!.hashCode) +
    (endpointParams.hashCode) +
    (grantType == null ? 0 : grantType!.hashCode) +
    (iss == null ? 0 : iss!.hashCode) +
    (noProxy == null ? 0 : noProxy!.hashCode) +
    (proxyConnectHeader.hashCode) +
    (proxyFromEnvironment == null ? 0 : proxyFromEnvironment!.hashCode) +
    (proxyUrl == null ? 0 : proxyUrl!.hashCode) +
    (scopes.hashCode) +
    (signatureAlgorithm == null ? 0 : signatureAlgorithm!.hashCode) +
    (tokenUrl == null ? 0 : tokenUrl!.hashCode);

  @override
  String toString() => 'O11yOAuth2[tLSConfig=$tLSConfig, audience=$audience, claims=$claims, clientCertificateKey=$clientCertificateKey, clientCertificateKeyFile=$clientCertificateKeyFile, clientCertificateKeyId=$clientCertificateKeyId, clientCertificateKeyRef=$clientCertificateKeyRef, clientId=$clientId, clientSecret=$clientSecret, clientSecretFile=$clientSecretFile, clientSecretRef=$clientSecretRef, endpointParams=$endpointParams, grantType=$grantType, iss=$iss, noProxy=$noProxy, proxyConnectHeader=$proxyConnectHeader, proxyFromEnvironment=$proxyFromEnvironment, proxyUrl=$proxyUrl, scopes=$scopes, signatureAlgorithm=$signatureAlgorithm, tokenUrl=$tokenUrl]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.tLSConfig != null) {
      json[r'TLSConfig'] = this.tLSConfig;
    } else {
      json[r'TLSConfig'] = null;
    }
    if (this.audience != null) {
      json[r'audience'] = this.audience;
    } else {
      json[r'audience'] = null;
    }
      json[r'claims'] = this.claims;
    if (this.clientCertificateKey != null) {
      json[r'client_certificate_key'] = this.clientCertificateKey;
    } else {
      json[r'client_certificate_key'] = null;
    }
    if (this.clientCertificateKeyFile != null) {
      json[r'client_certificate_key_file'] = this.clientCertificateKeyFile;
    } else {
      json[r'client_certificate_key_file'] = null;
    }
    if (this.clientCertificateKeyId != null) {
      json[r'client_certificate_key_id'] = this.clientCertificateKeyId;
    } else {
      json[r'client_certificate_key_id'] = null;
    }
    if (this.clientCertificateKeyRef != null) {
      json[r'client_certificate_key_ref'] = this.clientCertificateKeyRef;
    } else {
      json[r'client_certificate_key_ref'] = null;
    }
    if (this.clientId != null) {
      json[r'client_id'] = this.clientId;
    } else {
      json[r'client_id'] = null;
    }
    if (this.clientSecret != null) {
      json[r'client_secret'] = this.clientSecret;
    } else {
      json[r'client_secret'] = null;
    }
    if (this.clientSecretFile != null) {
      json[r'client_secret_file'] = this.clientSecretFile;
    } else {
      json[r'client_secret_file'] = null;
    }
    if (this.clientSecretRef != null) {
      json[r'client_secret_ref'] = this.clientSecretRef;
    } else {
      json[r'client_secret_ref'] = null;
    }
      json[r'endpoint_params'] = this.endpointParams;
    if (this.grantType != null) {
      json[r'grant_type'] = this.grantType;
    } else {
      json[r'grant_type'] = null;
    }
    if (this.iss != null) {
      json[r'iss'] = this.iss;
    } else {
      json[r'iss'] = null;
    }
    if (this.noProxy != null) {
      json[r'no_proxy'] = this.noProxy;
    } else {
      json[r'no_proxy'] = null;
    }
      json[r'proxy_connect_header'] = this.proxyConnectHeader;
    if (this.proxyFromEnvironment != null) {
      json[r'proxy_from_environment'] = this.proxyFromEnvironment;
    } else {
      json[r'proxy_from_environment'] = null;
    }
    if (this.proxyUrl != null) {
      json[r'proxy_url'] = this.proxyUrl;
    } else {
      json[r'proxy_url'] = null;
    }
      json[r'scopes'] = this.scopes;
    if (this.signatureAlgorithm != null) {
      json[r'signature_algorithm'] = this.signatureAlgorithm;
    } else {
      json[r'signature_algorithm'] = null;
    }
    if (this.tokenUrl != null) {
      json[r'token_url'] = this.tokenUrl;
    } else {
      json[r'token_url'] = null;
    }
    return json;
  }

  /// Returns a new [O11yOAuth2] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yOAuth2? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yOAuth2[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yOAuth2[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yOAuth2(
        tLSConfig: O11yTLSConfig.fromJson(json[r'TLSConfig']),
        audience: mapValueOfType<String>(json, r'audience'),
        claims: mapCastOfType<String, Object>(json, r'claims') ?? const {},
        clientCertificateKey: mapValueOfType<Object>(json, r'client_certificate_key'),
        clientCertificateKeyFile: mapValueOfType<String>(json, r'client_certificate_key_file'),
        clientCertificateKeyId: mapValueOfType<String>(json, r'client_certificate_key_id'),
        clientCertificateKeyRef: mapValueOfType<String>(json, r'client_certificate_key_ref'),
        clientId: mapValueOfType<String>(json, r'client_id'),
        clientSecret: mapValueOfType<Object>(json, r'client_secret'),
        clientSecretFile: mapValueOfType<String>(json, r'client_secret_file'),
        clientSecretRef: mapValueOfType<String>(json, r'client_secret_ref'),
        endpointParams: mapCastOfType<String, String>(json, r'endpoint_params') ?? const {},
        grantType: mapValueOfType<String>(json, r'grant_type'),
        iss: mapValueOfType<String>(json, r'iss'),
        noProxy: mapValueOfType<String>(json, r'no_proxy'),
        proxyConnectHeader: json[r'proxy_connect_header'] == null
          ? const {}
            : (json[r'proxy_connect_header'] as Map).map((k, v) => MapEntry(k as String, v == null ? const <Object>[] : (v as List).cast<Object>().toList(growable: false))),
        proxyFromEnvironment: mapValueOfType<bool>(json, r'proxy_from_environment'),
        proxyUrl: mapValueOfType<Object>(json, r'proxy_url'),
        scopes: json[r'scopes'] is Iterable
            ? (json[r'scopes'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        signatureAlgorithm: mapValueOfType<String>(json, r'signature_algorithm'),
        tokenUrl: mapValueOfType<String>(json, r'token_url'),
      );
    }
    return null;
  }

  static List<O11yOAuth2> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yOAuth2>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yOAuth2.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yOAuth2> mapFromJson(dynamic json) {
    final map = <String, O11yOAuth2>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yOAuth2.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yOAuth2-objects as value to a dart map
  static Map<String, List<O11yOAuth2>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yOAuth2>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yOAuth2.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

