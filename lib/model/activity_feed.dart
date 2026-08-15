//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ActivityFeed {
  /// Returns a new [ActivityFeed] instance.
  ActivityFeed({
    this.activity = const [],
  });

  /// Activity is the merged run/create/update events, newest first, capped at 50.
  List<ActivityView> activity;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ActivityFeed &&
    _deepEquality.equals(other.activity, activity);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (activity.hashCode);

  @override
  String toString() => 'ActivityFeed[activity=$activity]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'activity'] = this.activity;
    return json;
  }

  /// Returns a new [ActivityFeed] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ActivityFeed? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ActivityFeed[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ActivityFeed[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ActivityFeed(
        activity: ActivityView.listFromJson(json[r'activity']),
      );
    }
    return null;
  }

  static List<ActivityFeed> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ActivityFeed>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ActivityFeed.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ActivityFeed> mapFromJson(dynamic json) {
    final map = <String, ActivityFeed>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ActivityFeed.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ActivityFeed-objects as value to a dart map
  static Map<String, List<ActivityFeed>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ActivityFeed>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ActivityFeed.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

