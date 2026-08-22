//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class CaptableRoundTotals {
  /// Returns a new [CaptableRoundTotals] instance.
  CaptableRoundTotals({
    this.count,
    this.totalRaised,
  });
  /// Count is how many rounds the company has recorded.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? count;

  /// TotalRaised is the sum of every round's raised amount.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? totalRaised;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CaptableRoundTotals &&
    other.count == count &&
    other.totalRaised == totalRaised;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (count == null ? 0 : count!.hashCode) +
    (totalRaised == null ? 0 : totalRaised!.hashCode);

  @override
  String toString() => 'CaptableRoundTotals[count=$count, totalRaised=$totalRaised]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.count != null) {
      json[r'count'] = this.count;
    } else {
      json[r'count'] = null;
    }
    if (this.totalRaised != null) {
      json[r'totalRaised'] = this.totalRaised;
    } else {
      json[r'totalRaised'] = null;
    }
    return json;
  }

  /// Returns a new [CaptableRoundTotals] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CaptableRoundTotals? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CaptableRoundTotals[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CaptableRoundTotals[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CaptableRoundTotals(
        count: mapValueOfType<int>(json, r'count'),
        totalRaised: num.parse('${json[r'totalRaised']}'),
      );
    }
    return null;
  }

  static List<CaptableRoundTotals> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CaptableRoundTotals>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CaptableRoundTotals.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CaptableRoundTotals> mapFromJson(dynamic json) {
    final map = <String, CaptableRoundTotals>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CaptableRoundTotals.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CaptableRoundTotals-objects as value to a dart map
  static Map<String, List<CaptableRoundTotals>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CaptableRoundTotals>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CaptableRoundTotals.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

