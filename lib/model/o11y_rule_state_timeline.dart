//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yRuleStateTimeline {
  /// Returns a new [O11yRuleStateTimeline] instance.
  O11yRuleStateTimeline({
    this.items = const [],
    this.labels = const {},
    this.total,
  });

  List<O11yRuleStateHistory> items;

  Map<String, List<String>> labels;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? total;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yRuleStateTimeline &&
    _deepEquality.equals(other.items, items) &&
    _deepEquality.equals(other.labels, labels) &&
    other.total == total;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (items.hashCode) +
    (labels.hashCode) +
    (total == null ? 0 : total!.hashCode);

  @override
  String toString() => 'O11yRuleStateTimeline[items=$items, labels=$labels, total=$total]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'items'] = this.items;
      json[r'labels'] = this.labels;
    if (this.total != null) {
      json[r'total'] = this.total;
    } else {
      json[r'total'] = null;
    }
    return json;
  }

  /// Returns a new [O11yRuleStateTimeline] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yRuleStateTimeline? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yRuleStateTimeline[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yRuleStateTimeline[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yRuleStateTimeline(
        items: O11yRuleStateHistory.listFromJson(json[r'items']),
        labels: json[r'labels'] == null
          ? const {}
            : (json[r'labels'] as Map).map((k, v) => MapEntry(k as String, v == null ? const <String>[] : (v as List).cast<String>().toList(growable: false))),
        total: mapValueOfType<int>(json, r'total'),
      );
    }
    return null;
  }

  static List<O11yRuleStateTimeline> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yRuleStateTimeline>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yRuleStateTimeline.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yRuleStateTimeline> mapFromJson(dynamic json) {
    final map = <String, O11yRuleStateTimeline>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yRuleStateTimeline.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yRuleStateTimeline-objects as value to a dart map
  static Map<String, List<O11yRuleStateTimeline>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yRuleStateTimeline>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yRuleStateTimeline.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

