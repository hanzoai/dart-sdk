//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yPostableProfile {
  /// Returns a new [O11yPostableProfile] instance.
  O11yPostableProfile({
    this.existingObservabilityTool,
    this.hasExistingObservabilityTool,
    this.logsScalePerDayInGb,
    this.numberOfHosts,
    this.numberOfServices,
    this.reasonsForInterestInO11y = const [],
    this.timelineForMigratingToO11y,
    this.usesOtel,
    this.whereDidYouDiscoverO11y,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? existingObservabilityTool;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? hasExistingObservabilityTool;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? logsScalePerDayInGb;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? numberOfHosts;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? numberOfServices;

  List<String> reasonsForInterestInO11y;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? timelineForMigratingToO11y;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? usesOtel;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? whereDidYouDiscoverO11y;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yPostableProfile &&
    other.existingObservabilityTool == existingObservabilityTool &&
    other.hasExistingObservabilityTool == hasExistingObservabilityTool &&
    other.logsScalePerDayInGb == logsScalePerDayInGb &&
    other.numberOfHosts == numberOfHosts &&
    other.numberOfServices == numberOfServices &&
    _deepEquality.equals(other.reasonsForInterestInO11y, reasonsForInterestInO11y) &&
    other.timelineForMigratingToO11y == timelineForMigratingToO11y &&
    other.usesOtel == usesOtel &&
    other.whereDidYouDiscoverO11y == whereDidYouDiscoverO11y;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (existingObservabilityTool == null ? 0 : existingObservabilityTool!.hashCode) +
    (hasExistingObservabilityTool == null ? 0 : hasExistingObservabilityTool!.hashCode) +
    (logsScalePerDayInGb == null ? 0 : logsScalePerDayInGb!.hashCode) +
    (numberOfHosts == null ? 0 : numberOfHosts!.hashCode) +
    (numberOfServices == null ? 0 : numberOfServices!.hashCode) +
    (reasonsForInterestInO11y.hashCode) +
    (timelineForMigratingToO11y == null ? 0 : timelineForMigratingToO11y!.hashCode) +
    (usesOtel == null ? 0 : usesOtel!.hashCode) +
    (whereDidYouDiscoverO11y == null ? 0 : whereDidYouDiscoverO11y!.hashCode);

  @override
  String toString() => 'O11yPostableProfile[existingObservabilityTool=$existingObservabilityTool, hasExistingObservabilityTool=$hasExistingObservabilityTool, logsScalePerDayInGb=$logsScalePerDayInGb, numberOfHosts=$numberOfHosts, numberOfServices=$numberOfServices, reasonsForInterestInO11y=$reasonsForInterestInO11y, timelineForMigratingToO11y=$timelineForMigratingToO11y, usesOtel=$usesOtel, whereDidYouDiscoverO11y=$whereDidYouDiscoverO11y]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.existingObservabilityTool != null) {
      json[r'existing_observability_tool'] = this.existingObservabilityTool;
    } else {
      json[r'existing_observability_tool'] = null;
    }
    if (this.hasExistingObservabilityTool != null) {
      json[r'has_existing_observability_tool'] = this.hasExistingObservabilityTool;
    } else {
      json[r'has_existing_observability_tool'] = null;
    }
    if (this.logsScalePerDayInGb != null) {
      json[r'logs_scale_per_day_in_gb'] = this.logsScalePerDayInGb;
    } else {
      json[r'logs_scale_per_day_in_gb'] = null;
    }
    if (this.numberOfHosts != null) {
      json[r'number_of_hosts'] = this.numberOfHosts;
    } else {
      json[r'number_of_hosts'] = null;
    }
    if (this.numberOfServices != null) {
      json[r'number_of_services'] = this.numberOfServices;
    } else {
      json[r'number_of_services'] = null;
    }
      json[r'reasons_for_interest_in_o11y'] = this.reasonsForInterestInO11y;
    if (this.timelineForMigratingToO11y != null) {
      json[r'timeline_for_migrating_to_o11y'] = this.timelineForMigratingToO11y;
    } else {
      json[r'timeline_for_migrating_to_o11y'] = null;
    }
    if (this.usesOtel != null) {
      json[r'uses_otel'] = this.usesOtel;
    } else {
      json[r'uses_otel'] = null;
    }
    if (this.whereDidYouDiscoverO11y != null) {
      json[r'where_did_you_discover_o11y'] = this.whereDidYouDiscoverO11y;
    } else {
      json[r'where_did_you_discover_o11y'] = null;
    }
    return json;
  }

  /// Returns a new [O11yPostableProfile] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yPostableProfile? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yPostableProfile[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yPostableProfile[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yPostableProfile(
        existingObservabilityTool: mapValueOfType<String>(json, r'existing_observability_tool'),
        hasExistingObservabilityTool: mapValueOfType<bool>(json, r'has_existing_observability_tool'),
        logsScalePerDayInGb: mapValueOfType<int>(json, r'logs_scale_per_day_in_gb'),
        numberOfHosts: mapValueOfType<int>(json, r'number_of_hosts'),
        numberOfServices: mapValueOfType<int>(json, r'number_of_services'),
        reasonsForInterestInO11y: json[r'reasons_for_interest_in_o11y'] is Iterable
            ? (json[r'reasons_for_interest_in_o11y'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        timelineForMigratingToO11y: mapValueOfType<String>(json, r'timeline_for_migrating_to_o11y'),
        usesOtel: mapValueOfType<bool>(json, r'uses_otel'),
        whereDidYouDiscoverO11y: mapValueOfType<String>(json, r'where_did_you_discover_o11y'),
      );
    }
    return null;
  }

  static List<O11yPostableProfile> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yPostableProfile>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yPostableProfile.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yPostableProfile> mapFromJson(dynamic json) {
    final map = <String, O11yPostableProfile>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yPostableProfile.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yPostableProfile-objects as value to a dart map
  static Map<String, List<O11yPostableProfile>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yPostableProfile>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yPostableProfile.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

