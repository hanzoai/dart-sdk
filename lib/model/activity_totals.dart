//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ActivityTotals {
  /// Returns a new [ActivityTotals] instance.
  ActivityTotals({
    this.activeDays,
    this.costCents,
    this.maxRequests,
    this.maxTokens,
    this.requests,
    this.tokens,
  });
  /// ActiveDays counts the days with any usage at all — the streak/consistency number. Compare it against len(days) for the share of days the subject showed up.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? activeDays;

  /// CostCents is the window's spend in whole US cents, the sum of Days[].CostCents.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? costCents;

  /// MaxRequests is the same ceiling for a request-based heatmap — the busiest single day's request count, 0 for an idle window.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? maxRequests;

  /// MaxTokens is the busiest single day's token count: the ceiling to normalize a token heatmap against, so the darkest cell is that day. 0 for an idle window, which a client must not divide by.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? maxTokens;

  /// Requests is the sum of Days[].Requests over the whole window.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? requests;

  /// Tokens is the sum of Days[].Tokens over the whole window.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? tokens;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ActivityTotals &&
    other.activeDays == activeDays &&
    other.costCents == costCents &&
    other.maxRequests == maxRequests &&
    other.maxTokens == maxTokens &&
    other.requests == requests &&
    other.tokens == tokens;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (activeDays == null ? 0 : activeDays!.hashCode) +
    (costCents == null ? 0 : costCents!.hashCode) +
    (maxRequests == null ? 0 : maxRequests!.hashCode) +
    (maxTokens == null ? 0 : maxTokens!.hashCode) +
    (requests == null ? 0 : requests!.hashCode) +
    (tokens == null ? 0 : tokens!.hashCode);

  @override
  String toString() => 'ActivityTotals[activeDays=$activeDays, costCents=$costCents, maxRequests=$maxRequests, maxTokens=$maxTokens, requests=$requests, tokens=$tokens]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.activeDays != null) {
      json[r'activeDays'] = this.activeDays;
    } else {
      json[r'activeDays'] = null;
    }
    if (this.costCents != null) {
      json[r'costCents'] = this.costCents;
    } else {
      json[r'costCents'] = null;
    }
    if (this.maxRequests != null) {
      json[r'maxRequests'] = this.maxRequests;
    } else {
      json[r'maxRequests'] = null;
    }
    if (this.maxTokens != null) {
      json[r'maxTokens'] = this.maxTokens;
    } else {
      json[r'maxTokens'] = null;
    }
    if (this.requests != null) {
      json[r'requests'] = this.requests;
    } else {
      json[r'requests'] = null;
    }
    if (this.tokens != null) {
      json[r'tokens'] = this.tokens;
    } else {
      json[r'tokens'] = null;
    }
    return json;
  }

  /// Returns a new [ActivityTotals] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ActivityTotals? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ActivityTotals[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ActivityTotals[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ActivityTotals(
        activeDays: mapValueOfType<int>(json, r'activeDays'),
        costCents: mapValueOfType<int>(json, r'costCents'),
        maxRequests: mapValueOfType<int>(json, r'maxRequests'),
        maxTokens: mapValueOfType<int>(json, r'maxTokens'),
        requests: mapValueOfType<int>(json, r'requests'),
        tokens: mapValueOfType<int>(json, r'tokens'),
      );
    }
    return null;
  }

  static List<ActivityTotals> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ActivityTotals>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ActivityTotals.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ActivityTotals> mapFromJson(dynamic json) {
    final map = <String, ActivityTotals>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ActivityTotals.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ActivityTotals-objects as value to a dart map
  static Map<String, List<ActivityTotals>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ActivityTotals>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ActivityTotals.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

