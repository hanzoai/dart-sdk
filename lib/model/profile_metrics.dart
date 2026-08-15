//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ProfileMetrics {
  /// Returns a new [ProfileMetrics] instance.
  ProfileMetrics({
    this.funnel,
    this.launchProgress,
    this.records,
    this.revenueCents,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Funnel? funnel;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ProgressView? launchProgress;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? records;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? revenueCents;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ProfileMetrics &&
    other.funnel == funnel &&
    other.launchProgress == launchProgress &&
    other.records == records &&
    other.revenueCents == revenueCents;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (funnel == null ? 0 : funnel!.hashCode) +
    (launchProgress == null ? 0 : launchProgress!.hashCode) +
    (records == null ? 0 : records!.hashCode) +
    (revenueCents == null ? 0 : revenueCents!.hashCode);

  @override
  String toString() => 'ProfileMetrics[funnel=$funnel, launchProgress=$launchProgress, records=$records, revenueCents=$revenueCents]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.funnel != null) {
      json[r'funnel'] = this.funnel;
    } else {
      json[r'funnel'] = null;
    }
    if (this.launchProgress != null) {
      json[r'launchProgress'] = this.launchProgress;
    } else {
      json[r'launchProgress'] = null;
    }
    if (this.records != null) {
      json[r'records'] = this.records;
    } else {
      json[r'records'] = null;
    }
    if (this.revenueCents != null) {
      json[r'revenueCents'] = this.revenueCents;
    } else {
      json[r'revenueCents'] = null;
    }
    return json;
  }

  /// Returns a new [ProfileMetrics] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ProfileMetrics? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ProfileMetrics[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ProfileMetrics[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ProfileMetrics(
        funnel: Funnel.fromJson(json[r'funnel']),
        launchProgress: ProgressView.fromJson(json[r'launchProgress']),
        records: mapValueOfType<int>(json, r'records'),
        revenueCents: mapValueOfType<int>(json, r'revenueCents'),
      );
    }
    return null;
  }

  static List<ProfileMetrics> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ProfileMetrics>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ProfileMetrics.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ProfileMetrics> mapFromJson(dynamic json) {
    final map = <String, ProfileMetrics>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ProfileMetrics.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ProfileMetrics-objects as value to a dart map
  static Map<String, List<ProfileMetrics>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ProfileMetrics>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ProfileMetrics.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

