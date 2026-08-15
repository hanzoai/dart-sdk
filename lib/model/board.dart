//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Board {
  /// Returns a new [Board] instance.
  Board({
    this.byModel = const [],
    this.latency,
    this.other,
    this.range,
    this.scope,
    this.series = const [],
    this.totals,
  });

  /// the top models by spend
  List<ModelStat> byModel;

  /// overall latency percentiles from the GenAI spans
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  LatencyStat? latency;

  /// the long tail beyond the top models, folded into one row
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ModelStat? other;

  /// the window they were computed over, echoed back
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  BoardRange? range;

  /// whose numbers these are
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  BoardScope? scope;

  /// one gap-filled bucket per interval, so a chart never breaks
  List<BoardPoint> series;

  /// the window's headline numbers
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  BoardTotals? totals;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Board &&
    _deepEquality.equals(other.byModel, byModel) &&
    other.latency == latency &&
    other.other == other &&
    other.range == range &&
    other.scope == scope &&
    _deepEquality.equals(other.series, series) &&
    other.totals == totals;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (byModel.hashCode) +
    (latency == null ? 0 : latency!.hashCode) +
    (other == null ? 0 : other!.hashCode) +
    (range == null ? 0 : range!.hashCode) +
    (scope == null ? 0 : scope!.hashCode) +
    (series.hashCode) +
    (totals == null ? 0 : totals!.hashCode);

  @override
  String toString() => 'Board[byModel=$byModel, latency=$latency, other=$other, range=$range, scope=$scope, series=$series, totals=$totals]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'byModel'] = this.byModel;
    if (this.latency != null) {
      json[r'latency'] = this.latency;
    } else {
      json[r'latency'] = null;
    }
    if (this.other != null) {
      json[r'other'] = this.other;
    } else {
      json[r'other'] = null;
    }
    if (this.range != null) {
      json[r'range'] = this.range;
    } else {
      json[r'range'] = null;
    }
    if (this.scope != null) {
      json[r'scope'] = this.scope;
    } else {
      json[r'scope'] = null;
    }
      json[r'series'] = this.series;
    if (this.totals != null) {
      json[r'totals'] = this.totals;
    } else {
      json[r'totals'] = null;
    }
    return json;
  }

  /// Returns a new [Board] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Board? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Board[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Board[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Board(
        byModel: ModelStat.listFromJson(json[r'byModel']),
        latency: LatencyStat.fromJson(json[r'latency']),
        other: ModelStat.fromJson(json[r'other']),
        range: BoardRange.fromJson(json[r'range']),
        scope: BoardScope.fromJson(json[r'scope']),
        series: BoardPoint.listFromJson(json[r'series']),
        totals: BoardTotals.fromJson(json[r'totals']),
      );
    }
    return null;
  }

  static List<Board> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Board>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Board.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Board> mapFromJson(dynamic json) {
    final map = <String, Board>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Board.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Board-objects as value to a dart map
  static Map<String, List<Board>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Board>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Board.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

