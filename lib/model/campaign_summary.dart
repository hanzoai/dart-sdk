//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class CampaignSummary {
  /// Returns a new [CampaignSummary] instance.
  CampaignSummary({
    this.budget,
    this.campaigns,
    this.channels = const [],
    this.live,
  });
  /// Budget is the sum of every campaign's budget, in CENTS.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? budget;

  /// Campaigns is how many campaigns the org has, in any state.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? campaigns;

  /// Channels are the channel kinds this deployment has an executor wired for. A kind absent here is a kind a launch will honestly record as unavailable.
  List<String> channels;

  /// Live is how many of them are currently live.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? live;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CampaignSummary &&
    other.budget == budget &&
    other.campaigns == campaigns &&
    _deepEquality.equals(other.channels, channels) &&
    other.live == live;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (budget == null ? 0 : budget!.hashCode) +
    (campaigns == null ? 0 : campaigns!.hashCode) +
    (channels.hashCode) +
    (live == null ? 0 : live!.hashCode);

  @override
  String toString() => 'CampaignSummary[budget=$budget, campaigns=$campaigns, channels=$channels, live=$live]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
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
      json[r'channels'] = this.channels;
    if (this.live != null) {
      json[r'live'] = this.live;
    } else {
      json[r'live'] = null;
    }
    return json;
  }

  /// Returns a new [CampaignSummary] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CampaignSummary? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CampaignSummary[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CampaignSummary[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CampaignSummary(
        budget: mapValueOfType<int>(json, r'budget'),
        campaigns: mapValueOfType<int>(json, r'campaigns'),
        channels: json[r'channels'] is Iterable
            ? (json[r'channels'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        live: mapValueOfType<int>(json, r'live'),
      );
    }
    return null;
  }

  static List<CampaignSummary> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CampaignSummary>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CampaignSummary.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CampaignSummary> mapFromJson(dynamic json) {
    final map = <String, CampaignSummary>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CampaignSummary.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CampaignSummary-objects as value to a dart map
  static Map<String, List<CampaignSummary>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CampaignSummary>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CampaignSummary.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

