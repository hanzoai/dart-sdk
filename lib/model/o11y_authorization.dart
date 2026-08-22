//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yAuthorization {
  /// Returns a new [O11yAuthorization] instance.
  O11yAuthorization({
    this.credentials,
    this.credentialsFile,
    this.credentialsRef,
    this.type,
  });
  Object? credentials;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? credentialsFile;

  /// CredentialsRef is the name of the secret within the secret manager to use as credentials.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? credentialsRef;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? type;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yAuthorization &&
    other.credentials == credentials &&
    other.credentialsFile == credentialsFile &&
    other.credentialsRef == credentialsRef &&
    other.type == type;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (credentials == null ? 0 : credentials!.hashCode) +
    (credentialsFile == null ? 0 : credentialsFile!.hashCode) +
    (credentialsRef == null ? 0 : credentialsRef!.hashCode) +
    (type == null ? 0 : type!.hashCode);

  @override
  String toString() => 'O11yAuthorization[credentials=$credentials, credentialsFile=$credentialsFile, credentialsRef=$credentialsRef, type=$type]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.credentials != null) {
      json[r'credentials'] = this.credentials;
    } else {
      json[r'credentials'] = null;
    }
    if (this.credentialsFile != null) {
      json[r'credentials_file'] = this.credentialsFile;
    } else {
      json[r'credentials_file'] = null;
    }
    if (this.credentialsRef != null) {
      json[r'credentials_ref'] = this.credentialsRef;
    } else {
      json[r'credentials_ref'] = null;
    }
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
    return json;
  }

  /// Returns a new [O11yAuthorization] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yAuthorization? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yAuthorization[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yAuthorization[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yAuthorization(
        credentials: mapValueOfType<Object>(json, r'credentials'),
        credentialsFile: mapValueOfType<String>(json, r'credentials_file'),
        credentialsRef: mapValueOfType<String>(json, r'credentials_ref'),
        type: mapValueOfType<String>(json, r'type'),
      );
    }
    return null;
  }

  static List<O11yAuthorization> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yAuthorization>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yAuthorization.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yAuthorization> mapFromJson(dynamic json) {
    final map = <String, O11yAuthorization>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yAuthorization.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yAuthorization-objects as value to a dart map
  static Map<String, List<O11yAuthorization>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yAuthorization>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yAuthorization.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

