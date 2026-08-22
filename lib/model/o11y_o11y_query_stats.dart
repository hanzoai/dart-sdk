//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yO11yQueryStats {
  /// Returns a new [O11yO11yQueryStats] instance.
  O11yO11yQueryStats({
    this.bytesScanned,
    this.durationMs,
    this.rowsScanned,
    this.stepIntervals = const {},
  });
  /// BytesScanned is how many bytes the query read.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? bytesScanned;

  /// DurationMS is how long the query took, in milliseconds.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? durationMs;

  /// RowsScanned is how many rows the query read.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? rowsScanned;

  /// StepIntervals is the step used per query, in seconds.
  Map<String, int> stepIntervals;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yO11yQueryStats &&
    other.bytesScanned == bytesScanned &&
    other.durationMs == durationMs &&
    other.rowsScanned == rowsScanned &&
    _deepEquality.equals(other.stepIntervals, stepIntervals);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (bytesScanned == null ? 0 : bytesScanned!.hashCode) +
    (durationMs == null ? 0 : durationMs!.hashCode) +
    (rowsScanned == null ? 0 : rowsScanned!.hashCode) +
    (stepIntervals.hashCode);

  @override
  String toString() => 'O11yO11yQueryStats[bytesScanned=$bytesScanned, durationMs=$durationMs, rowsScanned=$rowsScanned, stepIntervals=$stepIntervals]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.bytesScanned != null) {
      json[r'bytesScanned'] = this.bytesScanned;
    } else {
      json[r'bytesScanned'] = null;
    }
    if (this.durationMs != null) {
      json[r'durationMs'] = this.durationMs;
    } else {
      json[r'durationMs'] = null;
    }
    if (this.rowsScanned != null) {
      json[r'rowsScanned'] = this.rowsScanned;
    } else {
      json[r'rowsScanned'] = null;
    }
      json[r'stepIntervals'] = this.stepIntervals;
    return json;
  }

  /// Returns a new [O11yO11yQueryStats] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yO11yQueryStats? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yO11yQueryStats[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yO11yQueryStats[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yO11yQueryStats(
        bytesScanned: mapValueOfType<int>(json, r'bytesScanned'),
        durationMs: mapValueOfType<int>(json, r'durationMs'),
        rowsScanned: mapValueOfType<int>(json, r'rowsScanned'),
        stepIntervals: mapCastOfType<String, int>(json, r'stepIntervals') ?? const {},
      );
    }
    return null;
  }

  static List<O11yO11yQueryStats> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yO11yQueryStats>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yO11yQueryStats.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yO11yQueryStats> mapFromJson(dynamic json) {
    final map = <String, O11yO11yQueryStats>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yO11yQueryStats.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yO11yQueryStats-objects as value to a dart map
  static Map<String, List<O11yO11yQueryStats>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yO11yQueryStats>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yO11yQueryStats.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

