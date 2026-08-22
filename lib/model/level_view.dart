//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class LevelView {
  /// Returns a new [LevelView] instance.
  LevelView({
    this.downlineCount,
    this.level,
    this.rateBps,
  });
  /// DownlineCount is how many orgs sit exactly this many hops below the caller. It is 0 in the schedule quoted to a caller that has not applied, which has no downline to count.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? downlineCount;

  /// Level is the upline distance from the org whose spend is being shared: 1 is the direct referrer, 2 and 3 the referrers above it. Nothing accrues past 3.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? level;

  /// RateBps is the commission paid at this level, in basis points OF Hanzo's margin (2000 = 20% of margin, never of the customer's bill). Level 1 is the affiliate's own negotiated rate; 2 and 3 are platform switches read live, so this is the schedule actually in force, not one compiled in.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? rateBps;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LevelView &&
    other.downlineCount == downlineCount &&
    other.level == level &&
    other.rateBps == rateBps;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (downlineCount == null ? 0 : downlineCount!.hashCode) +
    (level == null ? 0 : level!.hashCode) +
    (rateBps == null ? 0 : rateBps!.hashCode);

  @override
  String toString() => 'LevelView[downlineCount=$downlineCount, level=$level, rateBps=$rateBps]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.downlineCount != null) {
      json[r'downlineCount'] = this.downlineCount;
    } else {
      json[r'downlineCount'] = null;
    }
    if (this.level != null) {
      json[r'level'] = this.level;
    } else {
      json[r'level'] = null;
    }
    if (this.rateBps != null) {
      json[r'rateBps'] = this.rateBps;
    } else {
      json[r'rateBps'] = null;
    }
    return json;
  }

  /// Returns a new [LevelView] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LevelView? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "LevelView[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "LevelView[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return LevelView(
        downlineCount: mapValueOfType<int>(json, r'downlineCount'),
        level: mapValueOfType<int>(json, r'level'),
        rateBps: mapValueOfType<int>(json, r'rateBps'),
      );
    }
    return null;
  }

  static List<LevelView> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LevelView>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LevelView.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LevelView> mapFromJson(dynamic json) {
    final map = <String, LevelView>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LevelView.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LevelView-objects as value to a dart map
  static Map<String, List<LevelView>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<LevelView>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = LevelView.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

