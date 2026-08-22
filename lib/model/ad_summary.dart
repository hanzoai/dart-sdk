//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class AdSummary {
  /// Returns a new [AdSummary] instance.
  AdSummary({
    this.active,
    this.budget,
    this.campaigns,
    this.spend,
  });
  /// Active is how many of those campaigns are in the active state.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? active;

  /// Budget is the summed budget of every campaign in the org, in cents.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? budget;

  /// Campaigns is how many campaigns the org has, in every state.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? campaigns;

  /// Spend is the summed spend of every campaign in the org, in cents.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? spend;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AdSummary &&
    other.active == active &&
    other.budget == budget &&
    other.campaigns == campaigns &&
    other.spend == spend;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (active == null ? 0 : active!.hashCode) +
    (budget == null ? 0 : budget!.hashCode) +
    (campaigns == null ? 0 : campaigns!.hashCode) +
    (spend == null ? 0 : spend!.hashCode);

  @override
  String toString() => 'AdSummary[active=$active, budget=$budget, campaigns=$campaigns, spend=$spend]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.active != null) {
      json[r'active'] = this.active;
    } else {
      json[r'active'] = null;
    }
    if (this.budget != null) {
      json[r'budget'] = this.budget;
    } else {
      json[r'budget'] = null;
    }
    if (this.campaigns != null) {
      json[r'campaigns'] = this.campaigns;
    } else {
      json[r'campaigns'] = null;
    }
    if (this.spend != null) {
      json[r'spend'] = this.spend;
    } else {
      json[r'spend'] = null;
    }
    return json;
  }

  /// Returns a new [AdSummary] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AdSummary? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AdSummary[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AdSummary[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AdSummary(
        active: mapValueOfType<int>(json, r'active'),
        budget: mapValueOfType<int>(json, r'budget'),
        campaigns: mapValueOfType<int>(json, r'campaigns'),
        spend: mapValueOfType<int>(json, r'spend'),
      );
    }
    return null;
  }

  static List<AdSummary> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AdSummary>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AdSummary.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AdSummary> mapFromJson(dynamic json) {
    final map = <String, AdSummary>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AdSummary.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AdSummary-objects as value to a dart map
  static Map<String, List<AdSummary>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AdSummary>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AdSummary.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

