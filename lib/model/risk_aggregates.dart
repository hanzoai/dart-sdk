//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class RiskAggregates {
  /// Returns a new [RiskAggregates] instance.
  RiskAggregates({
    this.bound,
    this.forgotten,
    this.saturated,
    this.subjects,
  });

  /// Bound is the most they can hold. It is a per-organisation bound: at it, this organisation degrades and no other one notices.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? bound;

  /// Forgotten is how many of its own subjects have been dropped to stay inside that bound. Each one reads as inactive until it is active again.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? forgotten;

  /// Saturated is whether the bound is binding right now. The two counts are its evidence; this is the state to act on.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? saturated;

  /// Subjects is how many of this organisation's subjects the aggregates hold.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? subjects;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RiskAggregates &&
    other.bound == bound &&
    other.forgotten == forgotten &&
    other.saturated == saturated &&
    other.subjects == subjects;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (bound == null ? 0 : bound!.hashCode) +
    (forgotten == null ? 0 : forgotten!.hashCode) +
    (saturated == null ? 0 : saturated!.hashCode) +
    (subjects == null ? 0 : subjects!.hashCode);

  @override
  String toString() => 'RiskAggregates[bound=$bound, forgotten=$forgotten, saturated=$saturated, subjects=$subjects]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.bound != null) {
      json[r'bound'] = this.bound;
    } else {
      json[r'bound'] = null;
    }
    if (this.forgotten != null) {
      json[r'forgotten'] = this.forgotten;
    } else {
      json[r'forgotten'] = null;
    }
    if (this.saturated != null) {
      json[r'saturated'] = this.saturated;
    } else {
      json[r'saturated'] = null;
    }
    if (this.subjects != null) {
      json[r'subjects'] = this.subjects;
    } else {
      json[r'subjects'] = null;
    }
    return json;
  }

  /// Returns a new [RiskAggregates] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RiskAggregates? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RiskAggregates[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RiskAggregates[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RiskAggregates(
        bound: mapValueOfType<int>(json, r'bound'),
        forgotten: mapValueOfType<int>(json, r'forgotten'),
        saturated: mapValueOfType<bool>(json, r'saturated'),
        subjects: mapValueOfType<int>(json, r'subjects'),
      );
    }
    return null;
  }

  static List<RiskAggregates> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RiskAggregates>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RiskAggregates.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RiskAggregates> mapFromJson(dynamic json) {
    final map = <String, RiskAggregates>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RiskAggregates.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RiskAggregates-objects as value to a dart map
  static Map<String, List<RiskAggregates>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RiskAggregates>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RiskAggregates.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

