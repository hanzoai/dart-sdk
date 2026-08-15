//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yGettableRuleStateTimeline {
  /// Returns a new [O11yGettableRuleStateTimeline] instance.
  O11yGettableRuleStateTimeline({
    this.items = const [],
    this.nextCursor,
    this.total,
  });

  List<O11yGettableRuleStateHistory> items;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? nextCursor;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? total;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yGettableRuleStateTimeline &&
    _deepEquality.equals(other.items, items) &&
    other.nextCursor == nextCursor &&
    other.total == total;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (items.hashCode) +
    (nextCursor == null ? 0 : nextCursor!.hashCode) +
    (total == null ? 0 : total!.hashCode);

  @override
  String toString() => 'O11yGettableRuleStateTimeline[items=$items, nextCursor=$nextCursor, total=$total]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'items'] = this.items;
    if (this.nextCursor != null) {
      json[r'nextCursor'] = this.nextCursor;
    } else {
      json[r'nextCursor'] = null;
    }
    if (this.total != null) {
      json[r'total'] = this.total;
    } else {
      json[r'total'] = null;
    }
    return json;
  }

  /// Returns a new [O11yGettableRuleStateTimeline] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yGettableRuleStateTimeline? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yGettableRuleStateTimeline[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yGettableRuleStateTimeline[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yGettableRuleStateTimeline(
        items: O11yGettableRuleStateHistory.listFromJson(json[r'items']),
        nextCursor: mapValueOfType<String>(json, r'nextCursor'),
        total: mapValueOfType<int>(json, r'total'),
      );
    }
    return null;
  }

  static List<O11yGettableRuleStateTimeline> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yGettableRuleStateTimeline>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yGettableRuleStateTimeline.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yGettableRuleStateTimeline> mapFromJson(dynamic json) {
    final map = <String, O11yGettableRuleStateTimeline>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yGettableRuleStateTimeline.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yGettableRuleStateTimeline-objects as value to a dart map
  static Map<String, List<O11yGettableRuleStateTimeline>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yGettableRuleStateTimeline>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yGettableRuleStateTimeline.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

