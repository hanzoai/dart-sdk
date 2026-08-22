//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yO11yReductionRuleSaveIn {
  /// Returns a new [O11yO11yReductionRuleSaveIn] instance.
  O11yO11yReductionRuleSaveIn({
    required this.id,
    this.labels = const [],
    required this.matchType,
  });
  /// ID is the rule's id.
  String id;

  /// Labels are the label names the rule matches. Required, at least one.
  List<String> labels;

  /// MatchType is drop or keep. Required.
  String matchType;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yO11yReductionRuleSaveIn &&
    other.id == id &&
    _deepEquality.equals(other.labels, labels) &&
    other.matchType == matchType;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (labels.hashCode) +
    (matchType.hashCode);

  @override
  String toString() => 'O11yO11yReductionRuleSaveIn[id=$id, labels=$labels, matchType=$matchType]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'labels'] = this.labels;
      json[r'matchType'] = this.matchType;
    return json;
  }

  /// Returns a new [O11yO11yReductionRuleSaveIn] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yO11yReductionRuleSaveIn? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yO11yReductionRuleSaveIn[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yO11yReductionRuleSaveIn[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yO11yReductionRuleSaveIn(
        id: mapValueOfType<String>(json, r'id')!,
        labels: json[r'labels'] is Iterable
            ? (json[r'labels'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        matchType: mapValueOfType<String>(json, r'matchType')!,
      );
    }
    return null;
  }

  static List<O11yO11yReductionRuleSaveIn> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yO11yReductionRuleSaveIn>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yO11yReductionRuleSaveIn.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yO11yReductionRuleSaveIn> mapFromJson(dynamic json) {
    final map = <String, O11yO11yReductionRuleSaveIn>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yO11yReductionRuleSaveIn.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yO11yReductionRuleSaveIn-objects as value to a dart map
  static Map<String, List<O11yO11yReductionRuleSaveIn>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yO11yReductionRuleSaveIn>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yO11yReductionRuleSaveIn.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'labels',
    'matchType',
  };
}

