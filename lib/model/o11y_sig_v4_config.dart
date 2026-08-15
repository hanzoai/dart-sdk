//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11ySigV4Config {
  /// Returns a new [O11ySigV4Config] instance.
  O11ySigV4Config({
    this.accessKey,
    this.externalID,
    this.profile,
    this.region,
    this.roleARN,
    this.secretKey,
    this.serviceName,
    this.useFIPSSTSEndpoint,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? accessKey;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? externalID;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? profile;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? region;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? roleARN;

  Object? secretKey;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? serviceName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? useFIPSSTSEndpoint;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11ySigV4Config &&
    other.accessKey == accessKey &&
    other.externalID == externalID &&
    other.profile == profile &&
    other.region == region &&
    other.roleARN == roleARN &&
    other.secretKey == secretKey &&
    other.serviceName == serviceName &&
    other.useFIPSSTSEndpoint == useFIPSSTSEndpoint;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (accessKey == null ? 0 : accessKey!.hashCode) +
    (externalID == null ? 0 : externalID!.hashCode) +
    (profile == null ? 0 : profile!.hashCode) +
    (region == null ? 0 : region!.hashCode) +
    (roleARN == null ? 0 : roleARN!.hashCode) +
    (secretKey == null ? 0 : secretKey!.hashCode) +
    (serviceName == null ? 0 : serviceName!.hashCode) +
    (useFIPSSTSEndpoint == null ? 0 : useFIPSSTSEndpoint!.hashCode);

  @override
  String toString() => 'O11ySigV4Config[accessKey=$accessKey, externalID=$externalID, profile=$profile, region=$region, roleARN=$roleARN, secretKey=$secretKey, serviceName=$serviceName, useFIPSSTSEndpoint=$useFIPSSTSEndpoint]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.accessKey != null) {
      json[r'AccessKey'] = this.accessKey;
    } else {
      json[r'AccessKey'] = null;
    }
    if (this.externalID != null) {
      json[r'ExternalID'] = this.externalID;
    } else {
      json[r'ExternalID'] = null;
    }
    if (this.profile != null) {
      json[r'Profile'] = this.profile;
    } else {
      json[r'Profile'] = null;
    }
    if (this.region != null) {
      json[r'Region'] = this.region;
    } else {
      json[r'Region'] = null;
    }
    if (this.roleARN != null) {
      json[r'RoleARN'] = this.roleARN;
    } else {
      json[r'RoleARN'] = null;
    }
    if (this.secretKey != null) {
      json[r'SecretKey'] = this.secretKey;
    } else {
      json[r'SecretKey'] = null;
    }
    if (this.serviceName != null) {
      json[r'ServiceName'] = this.serviceName;
    } else {
      json[r'ServiceName'] = null;
    }
    if (this.useFIPSSTSEndpoint != null) {
      json[r'UseFIPSSTSEndpoint'] = this.useFIPSSTSEndpoint;
    } else {
      json[r'UseFIPSSTSEndpoint'] = null;
    }
    return json;
  }

  /// Returns a new [O11ySigV4Config] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11ySigV4Config? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11ySigV4Config[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11ySigV4Config[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11ySigV4Config(
        accessKey: mapValueOfType<String>(json, r'AccessKey'),
        externalID: mapValueOfType<String>(json, r'ExternalID'),
        profile: mapValueOfType<String>(json, r'Profile'),
        region: mapValueOfType<String>(json, r'Region'),
        roleARN: mapValueOfType<String>(json, r'RoleARN'),
        secretKey: mapValueOfType<Object>(json, r'SecretKey'),
        serviceName: mapValueOfType<String>(json, r'ServiceName'),
        useFIPSSTSEndpoint: mapValueOfType<bool>(json, r'UseFIPSSTSEndpoint'),
      );
    }
    return null;
  }

  static List<O11ySigV4Config> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11ySigV4Config>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11ySigV4Config.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11ySigV4Config> mapFromJson(dynamic json) {
    final map = <String, O11ySigV4Config>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11ySigV4Config.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11ySigV4Config-objects as value to a dart map
  static Map<String, List<O11ySigV4Config>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11ySigV4Config>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11ySigV4Config.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

