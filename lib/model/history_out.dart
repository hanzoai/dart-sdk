//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class HistoryOut {
  /// Returns a new [HistoryOut] instance.
  HistoryOut({
    this.benchmark,
    this.data = const [],
    this.total,
  });
  /// Benchmark is the catalog id these histories are about.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? benchmark;

  /// Data is one entry per model, ordered by model name.
  List<ModelHistory> data;

  /// Total is how many models Data holds.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? total;

  @override
  bool operator ==(Object other) => identical(this, other) || other is HistoryOut &&
    other.benchmark == benchmark &&
    _deepEquality.equals(other.data, data) &&
    other.total == total;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (benchmark == null ? 0 : benchmark!.hashCode) +
    (data.hashCode) +
    (total == null ? 0 : total!.hashCode);

  @override
  String toString() => 'HistoryOut[benchmark=$benchmark, data=$data, total=$total]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.benchmark != null) {
      json[r'benchmark'] = this.benchmark;
    } else {
      json[r'benchmark'] = null;
    }
      json[r'data'] = this.data;
    if (this.total != null) {
      json[r'total'] = this.total;
    } else {
      json[r'total'] = null;
    }
    return json;
  }

  /// Returns a new [HistoryOut] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static HistoryOut? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "HistoryOut[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "HistoryOut[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return HistoryOut(
        benchmark: mapValueOfType<String>(json, r'benchmark'),
        data: ModelHistory.listFromJson(json[r'data']),
        total: mapValueOfType<int>(json, r'total'),
      );
    }
    return null;
  }

  static List<HistoryOut> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <HistoryOut>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = HistoryOut.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, HistoryOut> mapFromJson(dynamic json) {
    final map = <String, HistoryOut>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = HistoryOut.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of HistoryOut-objects as value to a dart map
  static Map<String, List<HistoryOut>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<HistoryOut>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = HistoryOut.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

