//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class PaymentConfig {
  /// Returns a new [PaymentConfig] instance.
  PaymentConfig({
    this.applicationId,
    this.environment,
    this.live,
    this.locationId,
    this.provider,
  });
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? applicationId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? environment;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? live;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? locationId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? provider;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PaymentConfig &&
    other.applicationId == applicationId &&
    other.environment == environment &&
    other.live == live &&
    other.locationId == locationId &&
    other.provider == provider;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (applicationId == null ? 0 : applicationId!.hashCode) +
    (environment == null ? 0 : environment!.hashCode) +
    (live == null ? 0 : live!.hashCode) +
    (locationId == null ? 0 : locationId!.hashCode) +
    (provider == null ? 0 : provider!.hashCode);

  @override
  String toString() => 'PaymentConfig[applicationId=$applicationId, environment=$environment, live=$live, locationId=$locationId, provider=$provider]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.applicationId != null) {
      json[r'applicationId'] = this.applicationId;
    } else {
      json[r'applicationId'] = null;
    }
    if (this.environment != null) {
      json[r'environment'] = this.environment;
    } else {
      json[r'environment'] = null;
    }
    if (this.live != null) {
      json[r'live'] = this.live;
    } else {
      json[r'live'] = null;
    }
    if (this.locationId != null) {
      json[r'locationId'] = this.locationId;
    } else {
      json[r'locationId'] = null;
    }
    if (this.provider != null) {
      json[r'provider'] = this.provider;
    } else {
      json[r'provider'] = null;
    }
    return json;
  }

  /// Returns a new [PaymentConfig] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PaymentConfig? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PaymentConfig[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PaymentConfig[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PaymentConfig(
        applicationId: mapValueOfType<String>(json, r'applicationId'),
        environment: mapValueOfType<String>(json, r'environment'),
        live: mapValueOfType<bool>(json, r'live'),
        locationId: mapValueOfType<String>(json, r'locationId'),
        provider: mapValueOfType<String>(json, r'provider'),
      );
    }
    return null;
  }

  static List<PaymentConfig> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PaymentConfig>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PaymentConfig.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PaymentConfig> mapFromJson(dynamic json) {
    final map = <String, PaymentConfig>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PaymentConfig.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PaymentConfig-objects as value to a dart map
  static Map<String, List<PaymentConfig>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PaymentConfig>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PaymentConfig.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

