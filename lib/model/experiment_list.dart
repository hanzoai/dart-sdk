//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ExperimentList {
  /// Returns a new [ExperimentList] instance.
  ExperimentList({
    this.data = const [],
    this.total,
  });

  /// Data is the org's experiments, ordered by project then id.
  List<Trial> data;

  /// Total is how many rows Data holds.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? total;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ExperimentList &&
    _deepEquality.equals(other.data, data) &&
    other.total == total;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (data.hashCode) +
    (total == null ? 0 : total!.hashCode);

  @override
  String toString() => 'ExperimentList[data=$data, total=$total]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'data'] = this.data;
    if (this.total != null) {
      json[r'total'] = this.total;
    } else {
      json[r'total'] = null;
    }
    return json;
  }

  /// Returns a new [ExperimentList] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ExperimentList? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ExperimentList[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ExperimentList[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ExperimentList(
        data: Trial.listFromJson(json[r'data']),
        total: mapValueOfType<int>(json, r'total'),
      );
    }
    return null;
  }

  static List<ExperimentList> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ExperimentList>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ExperimentList.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ExperimentList> mapFromJson(dynamic json) {
    final map = <String, ExperimentList>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ExperimentList.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ExperimentList-objects as value to a dart map
  static Map<String, List<ExperimentList>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ExperimentList>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ExperimentList.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

