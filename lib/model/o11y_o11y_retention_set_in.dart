//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yO11yRetentionSetIn {
  /// Returns a new [O11yO11yRetentionSetIn] instance.
  O11yO11yRetentionSetIn({
    this.coldStorageDurationDays,
    this.coldStorageVolume,
    this.defaultTTLDays,
    this.ttlConditions = const [],
    this.type,
  });

  /// ColdStorageDurationDays is how old data must be before it moves, in days.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? coldStorageDurationDays;

  /// ColdStorageVolume names the volume aged data moves to, when set.
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
  int? defaultTTLDays;

  /// TTLConditions are ordered per-label rules; the first matching rule wins.
  List<O11yO11yRetentionRule> ttlConditions;

  /// Type is the signal the policy applies to — traces, metrics or logs.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? type;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yO11yRetentionSetIn &&
    other.coldStorageDurationDays == coldStorageDurationDays &&
    other.coldStorageVolume == coldStorageVolume &&
    other.defaultTTLDays == defaultTTLDays &&
    _deepEquality.equals(other.ttlConditions, ttlConditions) &&
    other.type == type;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (coldStorageDurationDays == null ? 0 : coldStorageDurationDays!.hashCode) +
    (coldStorageVolume == null ? 0 : coldStorageVolume!.hashCode) +
    (defaultTTLDays == null ? 0 : defaultTTLDays!.hashCode) +
    (ttlConditions.hashCode) +
    (type == null ? 0 : type!.hashCode);

  @override
  String toString() => 'O11yO11yRetentionSetIn[coldStorageDurationDays=$coldStorageDurationDays, coldStorageVolume=$coldStorageVolume, defaultTTLDays=$defaultTTLDays, ttlConditions=$ttlConditions, type=$type]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.coldStorageDurationDays != null) {
      json[r'coldStorageDurationDays'] = this.coldStorageDurationDays;
    } else {
      json[r'coldStorageDurationDays'] = null;
    }
    if (this.coldStorageVolume != null) {
      json[r'coldStorageVolume'] = this.coldStorageVolume;
    } else {
      json[r'coldStorageVolume'] = null;
    }
    if (this.defaultTTLDays != null) {
      json[r'defaultTTLDays'] = this.defaultTTLDays;
    } else {
      json[r'defaultTTLDays'] = null;
    }
      json[r'ttlConditions'] = this.ttlConditions;
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
    return json;
  }

  /// Returns a new [O11yO11yRetentionSetIn] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yO11yRetentionSetIn? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yO11yRetentionSetIn[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yO11yRetentionSetIn[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yO11yRetentionSetIn(
        coldStorageDurationDays: mapValueOfType<int>(json, r'coldStorageDurationDays'),
        coldStorageVolume: mapValueOfType<String>(json, r'coldStorageVolume'),
        defaultTTLDays: mapValueOfType<int>(json, r'defaultTTLDays'),
        ttlConditions: O11yO11yRetentionRule.listFromJson(json[r'ttlConditions']),
        type: mapValueOfType<String>(json, r'type'),
      );
    }
    return null;
  }

  static List<O11yO11yRetentionSetIn> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yO11yRetentionSetIn>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yO11yRetentionSetIn.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yO11yRetentionSetIn> mapFromJson(dynamic json) {
    final map = <String, O11yO11yRetentionSetIn>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yO11yRetentionSetIn.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yO11yRetentionSetIn-objects as value to a dart map
  static Map<String, List<O11yO11yRetentionSetIn>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yO11yRetentionSetIn>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yO11yRetentionSetIn.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

