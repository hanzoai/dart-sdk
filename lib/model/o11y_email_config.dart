//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yEmailConfig {
  /// Returns a new [O11yEmailConfig] instance.
  O11yEmailConfig({
    this.notifierConfig,
    this.authIdentity,
    this.authPassword,
    this.authPasswordFile,
    this.authSecret,
    this.authSecretFile,
    this.authUsername,
    this.forceImplicitTls,
    this.from,
    this.headers = const {},
    this.hello,
    this.html,
    this.requireTls,
    this.smarthost,
    this.text,
    this.threading,
    this.tlsConfig,
    this.to,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  O11yNotifierConfig? notifierConfig;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? authIdentity;

  Object? authPassword;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? authPasswordFile;

  Object? authSecret;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? authSecretFile;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? authUsername;

  /// ForceImplicitTLS controls whether to use implicit TLS (direct TLS connection). true: force use of implicit TLS (direct TLS connection) false: force disable implicit TLS (use explicit TLS/STARTTLS if required) nil (default): auto-detect based on port (465=implicit, other=explicit) for backward compatibility
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? forceImplicitTls;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? from;

  Map<String, String> headers;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? hello;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? html;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? requireTls;

  Object? smarthost;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? text;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  O11yThreadingConfig? threading;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  O11yTLSConfig? tlsConfig;

  /// Email address to notify.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? to;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yEmailConfig &&
    other.notifierConfig == notifierConfig &&
    other.authIdentity == authIdentity &&
    other.authPassword == authPassword &&
    other.authPasswordFile == authPasswordFile &&
    other.authSecret == authSecret &&
    other.authSecretFile == authSecretFile &&
    other.authUsername == authUsername &&
    other.forceImplicitTls == forceImplicitTls &&
    other.from == from &&
    _deepEquality.equals(other.headers, headers) &&
    other.hello == hello &&
    other.html == html &&
    other.requireTls == requireTls &&
    other.smarthost == smarthost &&
    other.text == text &&
    other.threading == threading &&
    other.tlsConfig == tlsConfig &&
    other.to == to;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (notifierConfig == null ? 0 : notifierConfig!.hashCode) +
    (authIdentity == null ? 0 : authIdentity!.hashCode) +
    (authPassword == null ? 0 : authPassword!.hashCode) +
    (authPasswordFile == null ? 0 : authPasswordFile!.hashCode) +
    (authSecret == null ? 0 : authSecret!.hashCode) +
    (authSecretFile == null ? 0 : authSecretFile!.hashCode) +
    (authUsername == null ? 0 : authUsername!.hashCode) +
    (forceImplicitTls == null ? 0 : forceImplicitTls!.hashCode) +
    (from == null ? 0 : from!.hashCode) +
    (headers.hashCode) +
    (hello == null ? 0 : hello!.hashCode) +
    (html == null ? 0 : html!.hashCode) +
    (requireTls == null ? 0 : requireTls!.hashCode) +
    (smarthost == null ? 0 : smarthost!.hashCode) +
    (text == null ? 0 : text!.hashCode) +
    (threading == null ? 0 : threading!.hashCode) +
    (tlsConfig == null ? 0 : tlsConfig!.hashCode) +
    (to == null ? 0 : to!.hashCode);

  @override
  String toString() => 'O11yEmailConfig[notifierConfig=$notifierConfig, authIdentity=$authIdentity, authPassword=$authPassword, authPasswordFile=$authPasswordFile, authSecret=$authSecret, authSecretFile=$authSecretFile, authUsername=$authUsername, forceImplicitTls=$forceImplicitTls, from=$from, headers=$headers, hello=$hello, html=$html, requireTls=$requireTls, smarthost=$smarthost, text=$text, threading=$threading, tlsConfig=$tlsConfig, to=$to]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.notifierConfig != null) {
      json[r'NotifierConfig'] = this.notifierConfig;
    } else {
      json[r'NotifierConfig'] = null;
    }
    if (this.authIdentity != null) {
      json[r'auth_identity'] = this.authIdentity;
    } else {
      json[r'auth_identity'] = null;
    }
    if (this.authPassword != null) {
      json[r'auth_password'] = this.authPassword;
    } else {
      json[r'auth_password'] = null;
    }
    if (this.authPasswordFile != null) {
      json[r'auth_password_file'] = this.authPasswordFile;
    } else {
      json[r'auth_password_file'] = null;
    }
    if (this.authSecret != null) {
      json[r'auth_secret'] = this.authSecret;
    } else {
      json[r'auth_secret'] = null;
    }
    if (this.authSecretFile != null) {
      json[r'auth_secret_file'] = this.authSecretFile;
    } else {
      json[r'auth_secret_file'] = null;
    }
    if (this.authUsername != null) {
      json[r'auth_username'] = this.authUsername;
    } else {
      json[r'auth_username'] = null;
    }
    if (this.forceImplicitTls != null) {
      json[r'force_implicit_tls'] = this.forceImplicitTls;
    } else {
      json[r'force_implicit_tls'] = null;
    }
    if (this.from != null) {
      json[r'from'] = this.from;
    } else {
      json[r'from'] = null;
    }
      json[r'headers'] = this.headers;
    if (this.hello != null) {
      json[r'hello'] = this.hello;
    } else {
      json[r'hello'] = null;
    }
    if (this.html != null) {
      json[r'html'] = this.html;
    } else {
      json[r'html'] = null;
    }
    if (this.requireTls != null) {
      json[r'require_tls'] = this.requireTls;
    } else {
      json[r'require_tls'] = null;
    }
    if (this.smarthost != null) {
      json[r'smarthost'] = this.smarthost;
    } else {
      json[r'smarthost'] = null;
    }
    if (this.text != null) {
      json[r'text'] = this.text;
    } else {
      json[r'text'] = null;
    }
    if (this.threading != null) {
      json[r'threading'] = this.threading;
    } else {
      json[r'threading'] = null;
    }
    if (this.tlsConfig != null) {
      json[r'tls_config'] = this.tlsConfig;
    } else {
      json[r'tls_config'] = null;
    }
    if (this.to != null) {
      json[r'to'] = this.to;
    } else {
      json[r'to'] = null;
    }
    return json;
  }

  /// Returns a new [O11yEmailConfig] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yEmailConfig? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yEmailConfig[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yEmailConfig[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yEmailConfig(
        notifierConfig: O11yNotifierConfig.fromJson(json[r'NotifierConfig']),
        authIdentity: mapValueOfType<String>(json, r'auth_identity'),
        authPassword: mapValueOfType<Object>(json, r'auth_password'),
        authPasswordFile: mapValueOfType<String>(json, r'auth_password_file'),
        authSecret: mapValueOfType<Object>(json, r'auth_secret'),
        authSecretFile: mapValueOfType<String>(json, r'auth_secret_file'),
        authUsername: mapValueOfType<String>(json, r'auth_username'),
        forceImplicitTls: mapValueOfType<bool>(json, r'force_implicit_tls'),
        from: mapValueOfType<String>(json, r'from'),
        headers: mapCastOfType<String, String>(json, r'headers') ?? const {},
        hello: mapValueOfType<String>(json, r'hello'),
        html: mapValueOfType<String>(json, r'html'),
        requireTls: mapValueOfType<bool>(json, r'require_tls'),
        smarthost: mapValueOfType<Object>(json, r'smarthost'),
        text: mapValueOfType<String>(json, r'text'),
        threading: O11yThreadingConfig.fromJson(json[r'threading']),
        tlsConfig: O11yTLSConfig.fromJson(json[r'tls_config']),
        to: mapValueOfType<String>(json, r'to'),
      );
    }
    return null;
  }

  static List<O11yEmailConfig> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yEmailConfig>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yEmailConfig.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yEmailConfig> mapFromJson(dynamic json) {
    final map = <String, O11yEmailConfig>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yEmailConfig.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yEmailConfig-objects as value to a dart map
  static Map<String, List<O11yEmailConfig>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yEmailConfig>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yEmailConfig.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

