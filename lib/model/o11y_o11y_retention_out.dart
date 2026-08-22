//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yO11yRetentionOut {
  /// Returns a new [O11yO11yRetentionOut] instance.
  O11yO11yRetentionOut({
    this.coldStorageTtlDays,
    this.coldStorageVolume,
    this.defaultTtlDays,
    this.expectedLogsMoveTtlDurationHrs,
    this.expectedLogsTtlDurationHrs,
    this.status,
    this.ttlConditions = const [],
    this.version,
  });
  /// ColdStorageTTLDays is how old data must be before it moves, in days.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? coldStorageTtlDays;

  /// ColdStorageVolume names the volume aged data moves to.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? coldStorageVolume;

  /// DefaultTTLDays is the retention for data no rule matches, in days.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? defaultTtlDays;

  /// ExpectedLogsMoveTTLHours is the pending logs cold-storage move TTL, in hours.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? expectedLogsMoveTtlDurationHrs;

  /// ExpectedLogsTTLHours is the pending logs TTL, in hours.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? expectedLogsTtlDurationHrs;

  /// Status is the last TTL operation's state.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  /// TTLConditions are the ordered per-label rules; the first match wins.
  List<O11yO11yRetentionRule> ttlConditions;

  /// Version is the policy format version.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? version;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yO11yRetentionOut &&
    other.coldStorageTtlDays == coldStorageTtlDays &&
    other.coldStorageVolume == coldStorageVolume &&
    other.defaultTtlDays == defaultTtlDays &&
    other.expectedLogsMoveTtlDurationHrs == expectedLogsMoveTtlDurationHrs &&
    other.expectedLogsTtlDurationHrs == expectedLogsTtlDurationHrs &&
    other.status == status &&
    _deepEquality.equals(other.ttlConditions, ttlConditions) &&
    other.version == version;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (coldStorageTtlDays == null ? 0 : coldStorageTtlDays!.hashCode) +
    (coldStorageVolume == null ? 0 : coldStorageVolume!.hashCode) +
    (defaultTtlDays == null ? 0 : defaultTtlDays!.hashCode) +
    (expectedLogsMoveTtlDurationHrs == null ? 0 : expectedLogsMoveTtlDurationHrs!.hashCode) +
    (expectedLogsTtlDurationHrs == null ? 0 : expectedLogsTtlDurationHrs!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (ttlConditions.hashCode) +
    (version == null ? 0 : version!.hashCode);

  @override
  String toString() => 'O11yO11yRetentionOut[coldStorageTtlDays=$coldStorageTtlDays, coldStorageVolume=$coldStorageVolume, defaultTtlDays=$defaultTtlDays, expectedLogsMoveTtlDurationHrs=$expectedLogsMoveTtlDurationHrs, expectedLogsTtlDurationHrs=$expectedLogsTtlDurationHrs, status=$status, ttlConditions=$ttlConditions, version=$version]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.coldStorageTtlDays != null) {
      json[r'cold_storage_ttl_days'] = this.coldStorageTtlDays;
    } else {
      json[r'cold_storage_ttl_days'] = null;
    }
    if (this.coldStorageVolume != null) {
      json[r'cold_storage_volume'] = this.coldStorageVolume;
    } else {
      json[r'cold_storage_volume'] = null;
    }
    if (this.defaultTtlDays != null) {
      json[r'default_ttl_days'] = this.defaultTtlDays;
    } else {
      json[r'default_ttl_days'] = null;
    }
    if (this.expectedLogsMoveTtlDurationHrs != null) {
      json[r'expected_logs_move_ttl_duration_hrs'] = this.expectedLogsMoveTtlDurationHrs;
    } else {
      json[r'expected_logs_move_ttl_duration_hrs'] = null;
    }
    if (this.expectedLogsTtlDurationHrs != null) {
      json[r'expected_logs_ttl_duration_hrs'] = this.expectedLogsTtlDurationHrs;
    } else {
      json[r'expected_logs_ttl_duration_hrs'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
      json[r'ttl_conditions'] = this.ttlConditions;
    if (this.version != null) {
      json[r'version'] = this.version;
    } else {
      json[r'version'] = null;
    }
    return json;
  }

  /// Returns a new [O11yO11yRetentionOut] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yO11yRetentionOut? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yO11yRetentionOut[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yO11yRetentionOut[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yO11yRetentionOut(
        coldStorageTtlDays: mapValueOfType<int>(json, r'cold_storage_ttl_days'),
        coldStorageVolume: mapValueOfType<String>(json, r'cold_storage_volume'),
        defaultTtlDays: mapValueOfType<int>(json, r'default_ttl_days'),
        expectedLogsMoveTtlDurationHrs: mapValueOfType<int>(json, r'expected_logs_move_ttl_duration_hrs'),
        expectedLogsTtlDurationHrs: mapValueOfType<int>(json, r'expected_logs_ttl_duration_hrs'),
        status: mapValueOfType<String>(json, r'status'),
        ttlConditions: O11yO11yRetentionRule.listFromJson(json[r'ttl_conditions']),
        version: mapValueOfType<String>(json, r'version'),
      );
    }
    return null;
  }

  static List<O11yO11yRetentionOut> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yO11yRetentionOut>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yO11yRetentionOut.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yO11yRetentionOut> mapFromJson(dynamic json) {
    final map = <String, O11yO11yRetentionOut>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yO11yRetentionOut.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yO11yRetentionOut-objects as value to a dart map
  static Map<String, List<O11yO11yRetentionOut>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yO11yRetentionOut>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yO11yRetentionOut.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

