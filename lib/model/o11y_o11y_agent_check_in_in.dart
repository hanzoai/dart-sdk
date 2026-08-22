//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yO11yAgentCheckInIn {
  /// Returns a new [O11yO11yAgentCheckInIn] instance.
  O11yO11yAgentCheckInIn({
    this.accountId,
    this.cloudAccountId,
    this.cloudIntegrationId,
    this.data = const {},
    this.providerAccountId,
  });
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

  Object? cloudIntegrationId;

  Map<String, Object> data;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? providerAccountId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yO11yAgentCheckInIn &&
    other.accountId == accountId &&
    other.cloudAccountId == cloudAccountId &&
    other.cloudIntegrationId == cloudIntegrationId &&
    _deepEquality.equals(other.data, data) &&
    other.providerAccountId == providerAccountId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (accountId == null ? 0 : accountId!.hashCode) +
    (cloudAccountId == null ? 0 : cloudAccountId!.hashCode) +
    (cloudIntegrationId == null ? 0 : cloudIntegrationId!.hashCode) +
    (data.hashCode) +
    (providerAccountId == null ? 0 : providerAccountId!.hashCode);

  @override
  String toString() => 'O11yO11yAgentCheckInIn[accountId=$accountId, cloudAccountId=$cloudAccountId, cloudIntegrationId=$cloudIntegrationId, data=$data, providerAccountId=$providerAccountId]';

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
      json[r'data'] = this.data;
    if (this.providerAccountId != null) {
      json[r'providerAccountId'] = this.providerAccountId;
    } else {
      json[r'providerAccountId'] = null;
    }
    return json;
  }

  /// Returns a new [O11yO11yAgentCheckInIn] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yO11yAgentCheckInIn? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yO11yAgentCheckInIn[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yO11yAgentCheckInIn[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yO11yAgentCheckInIn(
        accountId: mapValueOfType<String>(json, r'account_id'),
        cloudAccountId: mapValueOfType<String>(json, r'cloud_account_id'),
        cloudIntegrationId: mapValueOfType<Object>(json, r'cloudIntegrationId'),
        data: mapCastOfType<String, Object>(json, r'data') ?? const {},
        providerAccountId: mapValueOfType<String>(json, r'providerAccountId'),
      );
    }
    return null;
  }

  static List<O11yO11yAgentCheckInIn> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yO11yAgentCheckInIn>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yO11yAgentCheckInIn.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yO11yAgentCheckInIn> mapFromJson(dynamic json) {
    final map = <String, O11yO11yAgentCheckInIn>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yO11yAgentCheckInIn.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yO11yAgentCheckInIn-objects as value to a dart map
  static Map<String, List<O11yO11yAgentCheckInIn>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yO11yAgentCheckInIn>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yO11yAgentCheckInIn.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

