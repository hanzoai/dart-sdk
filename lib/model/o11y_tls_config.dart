//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yTLSConfig {
  /// Returns a new [O11yTLSConfig] instance.
  O11yTLSConfig({
    this.ca,
    this.caFile,
    this.caRef,
    this.cert,
    this.certFile,
    this.certRef,
    this.insecureSkipVerify,
    this.key,
    this.keyFile,
    this.keyRef,
    this.maxVersion,
    this.minVersion,
    this.serverName,
  });
  /// Text of the CA cert to use for the targets.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? ca;

  /// The CA cert to use for the targets.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? caFile;

  /// CARef is the name of the secret within the secret manager to use as the CA cert for the targets.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? caRef;

  /// Text of the client cert file for the targets.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? cert;

  /// The client cert file for the targets.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? certFile;

  /// CertRef is the name of the secret within the secret manager to use as the client cert for the targets.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? certRef;

  /// Disable target certificate validation.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? insecureSkipVerify;

  Object? key;

  /// The client key file for the targets.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? keyFile;

  /// KeyRef is the name of the secret within the secret manager to use as the client key for the targets.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? keyRef;

  Object? maxVersion;

  Object? minVersion;

  /// Used to verify the hostname for the targets.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? serverName;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yTLSConfig &&
    other.ca == ca &&
    other.caFile == caFile &&
    other.caRef == caRef &&
    other.cert == cert &&
    other.certFile == certFile &&
    other.certRef == certRef &&
    other.insecureSkipVerify == insecureSkipVerify &&
    other.key == key &&
    other.keyFile == keyFile &&
    other.keyRef == keyRef &&
    other.maxVersion == maxVersion &&
    other.minVersion == minVersion &&
    other.serverName == serverName;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (ca == null ? 0 : ca!.hashCode) +
    (caFile == null ? 0 : caFile!.hashCode) +
    (caRef == null ? 0 : caRef!.hashCode) +
    (cert == null ? 0 : cert!.hashCode) +
    (certFile == null ? 0 : certFile!.hashCode) +
    (certRef == null ? 0 : certRef!.hashCode) +
    (insecureSkipVerify == null ? 0 : insecureSkipVerify!.hashCode) +
    (key == null ? 0 : key!.hashCode) +
    (keyFile == null ? 0 : keyFile!.hashCode) +
    (keyRef == null ? 0 : keyRef!.hashCode) +
    (maxVersion == null ? 0 : maxVersion!.hashCode) +
    (minVersion == null ? 0 : minVersion!.hashCode) +
    (serverName == null ? 0 : serverName!.hashCode);

  @override
  String toString() => 'O11yTLSConfig[ca=$ca, caFile=$caFile, caRef=$caRef, cert=$cert, certFile=$certFile, certRef=$certRef, insecureSkipVerify=$insecureSkipVerify, key=$key, keyFile=$keyFile, keyRef=$keyRef, maxVersion=$maxVersion, minVersion=$minVersion, serverName=$serverName]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.ca != null) {
      json[r'ca'] = this.ca;
    } else {
      json[r'ca'] = null;
    }
    if (this.caFile != null) {
      json[r'ca_file'] = this.caFile;
    } else {
      json[r'ca_file'] = null;
    }
    if (this.caRef != null) {
      json[r'ca_ref'] = this.caRef;
    } else {
      json[r'ca_ref'] = null;
    }
    if (this.cert != null) {
      json[r'cert'] = this.cert;
    } else {
      json[r'cert'] = null;
    }
    if (this.certFile != null) {
      json[r'cert_file'] = this.certFile;
    } else {
      json[r'cert_file'] = null;
    }
    if (this.certRef != null) {
      json[r'cert_ref'] = this.certRef;
    } else {
      json[r'cert_ref'] = null;
    }
    if (this.insecureSkipVerify != null) {
      json[r'insecure_skip_verify'] = this.insecureSkipVerify;
    } else {
      json[r'insecure_skip_verify'] = null;
    }
    if (this.key != null) {
      json[r'key'] = this.key;
    } else {
      json[r'key'] = null;
    }
    if (this.keyFile != null) {
      json[r'key_file'] = this.keyFile;
    } else {
      json[r'key_file'] = null;
    }
    if (this.keyRef != null) {
      json[r'key_ref'] = this.keyRef;
    } else {
      json[r'key_ref'] = null;
    }
    if (this.maxVersion != null) {
      json[r'max_version'] = this.maxVersion;
    } else {
      json[r'max_version'] = null;
    }
    if (this.minVersion != null) {
      json[r'min_version'] = this.minVersion;
    } else {
      json[r'min_version'] = null;
    }
    if (this.serverName != null) {
      json[r'server_name'] = this.serverName;
    } else {
      json[r'server_name'] = null;
    }
    return json;
  }

  /// Returns a new [O11yTLSConfig] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yTLSConfig? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yTLSConfig[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yTLSConfig[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yTLSConfig(
        ca: mapValueOfType<String>(json, r'ca'),
        caFile: mapValueOfType<String>(json, r'ca_file'),
        caRef: mapValueOfType<String>(json, r'ca_ref'),
        cert: mapValueOfType<String>(json, r'cert'),
        certFile: mapValueOfType<String>(json, r'cert_file'),
        certRef: mapValueOfType<String>(json, r'cert_ref'),
        insecureSkipVerify: mapValueOfType<bool>(json, r'insecure_skip_verify'),
        key: mapValueOfType<Object>(json, r'key'),
        keyFile: mapValueOfType<String>(json, r'key_file'),
        keyRef: mapValueOfType<String>(json, r'key_ref'),
        maxVersion: mapValueOfType<Object>(json, r'max_version'),
        minVersion: mapValueOfType<Object>(json, r'min_version'),
        serverName: mapValueOfType<String>(json, r'server_name'),
      );
    }
    return null;
  }

  static List<O11yTLSConfig> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yTLSConfig>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yTLSConfig.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yTLSConfig> mapFromJson(dynamic json) {
    final map = <String, O11yTLSConfig>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yTLSConfig.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yTLSConfig-objects as value to a dart map
  static Map<String, List<O11yTLSConfig>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yTLSConfig>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yTLSConfig.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

