//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ConsoleSettingsGoogleAnalytics {
  /// Returns a new [ConsoleSettingsGoogleAnalytics] instance.
  ConsoleSettingsGoogleAnalytics({
    this.anonymizeUsers,
    this.trackingID,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? anonymizeUsers;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? trackingID;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ConsoleSettingsGoogleAnalytics &&
    other.anonymizeUsers == anonymizeUsers &&
    other.trackingID == trackingID;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (anonymizeUsers == null ? 0 : anonymizeUsers!.hashCode) +
    (trackingID == null ? 0 : trackingID!.hashCode);

  @override
  String toString() => 'ConsoleSettingsGoogleAnalytics[anonymizeUsers=$anonymizeUsers, trackingID=$trackingID]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.anonymizeUsers != null) {
      json[r'anonymizeUsers'] = this.anonymizeUsers;
    } else {
      json[r'anonymizeUsers'] = null;
    }
    if (this.trackingID != null) {
      json[r'trackingID'] = this.trackingID;
    } else {
      json[r'trackingID'] = null;
    }
    return json;
  }

  /// Returns a new [ConsoleSettingsGoogleAnalytics] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ConsoleSettingsGoogleAnalytics? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ConsoleSettingsGoogleAnalytics[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ConsoleSettingsGoogleAnalytics[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ConsoleSettingsGoogleAnalytics(
        anonymizeUsers: mapValueOfType<bool>(json, r'anonymizeUsers'),
        trackingID: mapValueOfType<String>(json, r'trackingID'),
      );
    }
    return null;
  }

  static List<ConsoleSettingsGoogleAnalytics> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ConsoleSettingsGoogleAnalytics>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ConsoleSettingsGoogleAnalytics.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ConsoleSettingsGoogleAnalytics> mapFromJson(dynamic json) {
    final map = <String, ConsoleSettingsGoogleAnalytics>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ConsoleSettingsGoogleAnalytics.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ConsoleSettingsGoogleAnalytics-objects as value to a dart map
  static Map<String, List<ConsoleSettingsGoogleAnalytics>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ConsoleSettingsGoogleAnalytics>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ConsoleSettingsGoogleAnalytics.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

