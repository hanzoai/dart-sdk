//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class RiskLabelsOut {
  /// Returns a new [RiskLabelsOut] instance.
  RiskLabelsOut({
    this.count,
    this.labels = const [],
  });

  /// Count is how many this page holds. It is not a total: a total over an unbounded append-only log is a full scan of a single-writer file.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? count;

  /// Labels is the page, newest event first.
  List<RiskLabelRecord> labels;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RiskLabelsOut &&
    other.count == count &&
    _deepEquality.equals(other.labels, labels);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (count == null ? 0 : count!.hashCode) +
    (labels.hashCode);

  @override
  String toString() => 'RiskLabelsOut[count=$count, labels=$labels]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.count != null) {
      json[r'count'] = this.count;
    } else {
      json[r'count'] = null;
    }
      json[r'labels'] = this.labels;
    return json;
  }

  /// Returns a new [RiskLabelsOut] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RiskLabelsOut? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RiskLabelsOut[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RiskLabelsOut[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RiskLabelsOut(
        count: mapValueOfType<int>(json, r'count'),
        labels: RiskLabelRecord.listFromJson(json[r'labels']),
      );
    }
    return null;
  }

  static List<RiskLabelsOut> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RiskLabelsOut>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RiskLabelsOut.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RiskLabelsOut> mapFromJson(dynamic json) {
    final map = <String, RiskLabelsOut>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RiskLabelsOut.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RiskLabelsOut-objects as value to a dart map
  static Map<String, List<RiskLabelsOut>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RiskLabelsOut>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RiskLabelsOut.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

