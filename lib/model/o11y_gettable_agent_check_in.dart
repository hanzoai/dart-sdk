//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yGettableAgentCheckIn {
  /// Returns a new [O11yGettableAgentCheckIn] instance.
  O11yGettableAgentCheckIn({
    this.accountId,
    this.cloudAccountId,
    this.cloudIntegrationId,
    this.integrationConfigLegacy,
    this.integrationConfig,
    this.providerAccountId,
    this.removedAtLegacy,
    this.removedAt,
  });

  /// Older fields for backward compatibility with existing AWS agents
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? accountId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? cloudAccountId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? cloudIntegrationId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  O11yIntegrationConfig? integrationConfigLegacy;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  O11yProviderIntegrationConfig? integrationConfig;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? providerAccountId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? removedAtLegacy;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? removedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yGettableAgentCheckIn &&
    other.accountId == accountId &&
    other.cloudAccountId == cloudAccountId &&
    other.cloudIntegrationId == cloudIntegrationId &&
    other.integrationConfigLegacy == integrationConfigLegacy &&
    other.integrationConfig == integrationConfig &&
    other.providerAccountId == providerAccountId &&
    other.removedAtLegacy == removedAtLegacy &&
    other.removedAt == removedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (accountId == null ? 0 : accountId!.hashCode) +
    (cloudAccountId == null ? 0 : cloudAccountId!.hashCode) +
    (cloudIntegrationId == null ? 0 : cloudIntegrationId!.hashCode) +
    (integrationConfigLegacy == null ? 0 : integrationConfigLegacy!.hashCode) +
    (integrationConfig == null ? 0 : integrationConfig!.hashCode) +
    (providerAccountId == null ? 0 : providerAccountId!.hashCode) +
    (removedAtLegacy == null ? 0 : removedAtLegacy!.hashCode) +
    (removedAt == null ? 0 : removedAt!.hashCode);

  @override
  String toString() => 'O11yGettableAgentCheckIn[accountId=$accountId, cloudAccountId=$cloudAccountId, cloudIntegrationId=$cloudIntegrationId, integrationConfigLegacy=$integrationConfigLegacy, integrationConfig=$integrationConfig, providerAccountId=$providerAccountId, removedAtLegacy=$removedAtLegacy, removedAt=$removedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.accountId != null) {
      json[r'account_id'] = this.accountId;
    } else {
      json[r'account_id'] = null;
    }
    if (this.cloudAccountId != null) {
      json[r'cloud_account_id'] = this.cloudAccountId;
    } else {
      json[r'cloud_account_id'] = null;
    }
    if (this.cloudIntegrationId != null) {
      json[r'cloudIntegrationId'] = this.cloudIntegrationId;
    } else {
      json[r'cloudIntegrationId'] = null;
    }
    if (this.integrationConfigLegacy != null) {
      json[r'integration_config'] = this.integrationConfigLegacy;
    } else {
      json[r'integration_config'] = null;
    }
    if (this.integrationConfig != null) {
      json[r'integrationConfig'] = this.integrationConfig;
    } else {
      json[r'integrationConfig'] = null;
    }
    if (this.providerAccountId != null) {
      json[r'providerAccountId'] = this.providerAccountId;
    } else {
      json[r'providerAccountId'] = null;
    }
    if (this.removedAtLegacy != null) {
      json[r'removed_at'] = this.removedAtLegacy!.toUtc().toIso8601String();
    } else {
      json[r'removed_at'] = null;
    }
    if (this.removedAt != null) {
      json[r'removedAt'] = this.removedAt!.toUtc().toIso8601String();
    } else {
      json[r'removedAt'] = null;
    }
    return json;
  }

  /// Returns a new [O11yGettableAgentCheckIn] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yGettableAgentCheckIn? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yGettableAgentCheckIn[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yGettableAgentCheckIn[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yGettableAgentCheckIn(
        accountId: mapValueOfType<String>(json, r'account_id'),
        cloudAccountId: mapValueOfType<String>(json, r'cloud_account_id'),
        cloudIntegrationId: mapValueOfType<String>(json, r'cloudIntegrationId'),
        integrationConfigLegacy: O11yIntegrationConfig.fromJson(json[r'integration_config']),
        integrationConfig: O11yProviderIntegrationConfig.fromJson(json[r'integrationConfig']),
        providerAccountId: mapValueOfType<String>(json, r'providerAccountId'),
        removedAtLegacy: mapDateTime(json, r'removed_at', r''),
        removedAt: mapDateTime(json, r'removedAt', r''),
      );
    }
    return null;
  }

  static List<O11yGettableAgentCheckIn> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yGettableAgentCheckIn>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yGettableAgentCheckIn.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yGettableAgentCheckIn> mapFromJson(dynamic json) {
    final map = <String, O11yGettableAgentCheckIn>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yGettableAgentCheckIn.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yGettableAgentCheckIn-objects as value to a dart map
  static Map<String, List<O11yGettableAgentCheckIn>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yGettableAgentCheckIn>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yGettableAgentCheckIn.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

