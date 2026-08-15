//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class SubsystemBoard {
  /// Returns a new [SubsystemBoard] instance.
  SubsystemBoard({
    this.end,
    this.range,
    this.rows = const [],
    this.sources = const [],
    this.start,
    this.totals,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? end;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? range;

  List<SubsystemRow> rows;

  List<SourceStatus> sources;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? start;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  SubsystemTotals? totals;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SubsystemBoard &&
    other.end == end &&
    other.range == range &&
    _deepEquality.equals(other.rows, rows) &&
    _deepEquality.equals(other.sources, sources) &&
    other.start == start &&
    other.totals == totals;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (end == null ? 0 : end!.hashCode) +
    (range == null ? 0 : range!.hashCode) +
    (rows.hashCode) +
    (sources.hashCode) +
    (start == null ? 0 : start!.hashCode) +
    (totals == null ? 0 : totals!.hashCode);

  @override
  String toString() => 'SubsystemBoard[end=$end, range=$range, rows=$rows, sources=$sources, start=$start, totals=$totals]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.end != null) {
      json[r'end'] = this.end;
    } else {
      json[r'end'] = null;
    }
    if (this.range != null) {
      json[r'range'] = this.range;
    } else {
      json[r'range'] = null;
    }
      json[r'rows'] = this.rows;
      json[r'sources'] = this.sources;
    if (this.start != null) {
      json[r'start'] = this.start;
    } else {
      json[r'start'] = null;
    }
    if (this.totals != null) {
      json[r'totals'] = this.totals;
    } else {
      json[r'totals'] = null;
    }
    return json;
  }

  /// Returns a new [SubsystemBoard] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SubsystemBoard? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SubsystemBoard[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SubsystemBoard[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SubsystemBoard(
        end: mapValueOfType<String>(json, r'end'),
        range: mapValueOfType<String>(json, r'range'),
        rows: SubsystemRow.listFromJson(json[r'rows']),
        sources: SourceStatus.listFromJson(json[r'sources']),
        start: mapValueOfType<String>(json, r'start'),
        totals: SubsystemTotals.fromJson(json[r'totals']),
      );
    }
    return null;
  }

  static List<SubsystemBoard> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SubsystemBoard>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SubsystemBoard.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SubsystemBoard> mapFromJson(dynamic json) {
    final map = <String, SubsystemBoard>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SubsystemBoard.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SubsystemBoard-objects as value to a dart map
  static Map<String, List<SubsystemBoard>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SubsystemBoard>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SubsystemBoard.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

