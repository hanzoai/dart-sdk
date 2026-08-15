//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yHTTPClientConfig {
  /// Returns a new [O11yHTTPClientConfig] instance.
  O11yHTTPClientConfig({
    this.authorization,
    this.basicAuth,
    this.bearerToken,
    this.bearerTokenFile,
    this.enableHttp2,
    this.followRedirects,
    this.httpHeaders,
    this.noProxy,
    this.oauth2,
    this.proxyConnectHeader = const {},
    this.proxyFromEnvironment,
    this.proxyUrl,
    this.tlsConfig,
  });

  /// The HTTP authorization credentials for the targets.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  O11yAuthorization? authorization;

  /// The HTTP basic authentication credentials for the targets.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  O11yBasicAuth? basicAuth;

  Object? bearerToken;

  /// The bearer token file for the targets. Deprecated in favour of Authorization.CredentialsFile.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? bearerTokenFile;

  /// EnableHTTP2 specifies whether the client should configure HTTP2. The omitempty flag is not set, because it would be hidden from the marshalled configuration when set to false.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? enableHttp2;

  /// FollowRedirects specifies whether the client should follow HTTP 3xx redirects. The omitempty flag is not set, because it would be hidden from the marshalled configuration when set to false.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? followRedirects;

  Object? httpHeaders;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? noProxy;

  /// The OAuth2 client credentials used to fetch a token for the targets.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  O11yOAuth2? oauth2;

  Map<String, List<Object>> proxyConnectHeader;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? proxyFromEnvironment;

  Object? proxyUrl;

  /// TLSConfig to use to connect to the targets.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  O11yTLSConfig? tlsConfig;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yHTTPClientConfig &&
    other.authorization == authorization &&
    other.basicAuth == basicAuth &&
    other.bearerToken == bearerToken &&
    other.bearerTokenFile == bearerTokenFile &&
    other.enableHttp2 == enableHttp2 &&
    other.followRedirects == followRedirects &&
    other.httpHeaders == httpHeaders &&
    other.noProxy == noProxy &&
    other.oauth2 == oauth2 &&
    _deepEquality.equals(other.proxyConnectHeader, proxyConnectHeader) &&
    other.proxyFromEnvironment == proxyFromEnvironment &&
    other.proxyUrl == proxyUrl &&
    other.tlsConfig == tlsConfig;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (authorization == null ? 0 : authorization!.hashCode) +
    (basicAuth == null ? 0 : basicAuth!.hashCode) +
    (bearerToken == null ? 0 : bearerToken!.hashCode) +
    (bearerTokenFile == null ? 0 : bearerTokenFile!.hashCode) +
    (enableHttp2 == null ? 0 : enableHttp2!.hashCode) +
    (followRedirects == null ? 0 : followRedirects!.hashCode) +
    (httpHeaders == null ? 0 : httpHeaders!.hashCode) +
    (noProxy == null ? 0 : noProxy!.hashCode) +
    (oauth2 == null ? 0 : oauth2!.hashCode) +
    (proxyConnectHeader.hashCode) +
    (proxyFromEnvironment == null ? 0 : proxyFromEnvironment!.hashCode) +
    (proxyUrl == null ? 0 : proxyUrl!.hashCode) +
    (tlsConfig == null ? 0 : tlsConfig!.hashCode);

  @override
  String toString() => 'O11yHTTPClientConfig[authorization=$authorization, basicAuth=$basicAuth, bearerToken=$bearerToken, bearerTokenFile=$bearerTokenFile, enableHttp2=$enableHttp2, followRedirects=$followRedirects, httpHeaders=$httpHeaders, noProxy=$noProxy, oauth2=$oauth2, proxyConnectHeader=$proxyConnectHeader, proxyFromEnvironment=$proxyFromEnvironment, proxyUrl=$proxyUrl, tlsConfig=$tlsConfig]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.authorization != null) {
      json[r'authorization'] = this.authorization;
    } else {
      json[r'authorization'] = null;
    }
    if (this.basicAuth != null) {
      json[r'basic_auth'] = this.basicAuth;
    } else {
      json[r'basic_auth'] = null;
    }
    if (this.bearerToken != null) {
      json[r'bearer_token'] = this.bearerToken;
    } else {
      json[r'bearer_token'] = null;
    }
    if (this.bearerTokenFile != null) {
      json[r'bearer_token_file'] = this.bearerTokenFile;
    } else {
      json[r'bearer_token_file'] = null;
    }
    if (this.enableHttp2 != null) {
      json[r'enable_http2'] = this.enableHttp2;
    } else {
      json[r'enable_http2'] = null;
    }
    if (this.followRedirects != null) {
      json[r'follow_redirects'] = this.followRedirects;
    } else {
      json[r'follow_redirects'] = null;
    }
    if (this.httpHeaders != null) {
      json[r'http_headers'] = this.httpHeaders;
    } else {
      json[r'http_headers'] = null;
    }
    if (this.noProxy != null) {
      json[r'no_proxy'] = this.noProxy;
    } else {
      json[r'no_proxy'] = null;
    }
    if (this.oauth2 != null) {
      json[r'oauth2'] = this.oauth2;
    } else {
      json[r'oauth2'] = null;
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
    if (this.tlsConfig != null) {
      json[r'tls_config'] = this.tlsConfig;
    } else {
      json[r'tls_config'] = null;
    }
    return json;
  }

  /// Returns a new [O11yHTTPClientConfig] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yHTTPClientConfig? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yHTTPClientConfig[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yHTTPClientConfig[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yHTTPClientConfig(
        authorization: O11yAuthorization.fromJson(json[r'authorization']),
        basicAuth: O11yBasicAuth.fromJson(json[r'basic_auth']),
        bearerToken: mapValueOfType<Object>(json, r'bearer_token'),
        bearerTokenFile: mapValueOfType<String>(json, r'bearer_token_file'),
        enableHttp2: mapValueOfType<bool>(json, r'enable_http2'),
        followRedirects: mapValueOfType<bool>(json, r'follow_redirects'),
        httpHeaders: mapValueOfType<Object>(json, r'http_headers'),
        noProxy: mapValueOfType<String>(json, r'no_proxy'),
        oauth2: O11yOAuth2.fromJson(json[r'oauth2']),
        proxyConnectHeader: json[r'proxy_connect_header'] == null
          ? const {}
            : (json[r'proxy_connect_header'] as Map).map((k, v) => MapEntry(k as String, v == null ? const <Object>[] : (v as List).cast<Object>().toList(growable: false))),
        proxyFromEnvironment: mapValueOfType<bool>(json, r'proxy_from_environment'),
        proxyUrl: mapValueOfType<Object>(json, r'proxy_url'),
        tlsConfig: O11yTLSConfig.fromJson(json[r'tls_config']),
      );
    }
    return null;
  }

  static List<O11yHTTPClientConfig> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yHTTPClientConfig>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yHTTPClientConfig.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yHTTPClientConfig> mapFromJson(dynamic json) {
    final map = <String, O11yHTTPClientConfig>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yHTTPClientConfig.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yHTTPClientConfig-objects as value to a dart map
  static Map<String, List<O11yHTTPClientConfig>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yHTTPClientConfig>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yHTTPClientConfig.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

