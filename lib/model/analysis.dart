//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Analysis {
  /// Returns a new [Analysis] instance.
  Analysis({
    this.alpha,
    this.experiment,
    this.exposedTotal,
    this.metric,
    this.results = const [],
    this.winner,
  });

  /// the two-tailed threshold significance was judged at
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? alpha;

  /// the experiment that was analysed
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? experiment;

  /// subjects enrolled across every arm
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? exposedTotal;

  /// the event a conversion is counted from
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? metric;

  /// one row per declared arm, control first
  List<Outcome> results;

  /// ADVISORY: the significant, control-beating arm with the highest rate, else empty
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? winner;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Analysis &&
    other.alpha == alpha &&
    other.experiment == experiment &&
    other.exposedTotal == exposedTotal &&
    other.metric == metric &&
    _deepEquality.equals(other.results, results) &&
    other.winner == winner;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (alpha == null ? 0 : alpha!.hashCode) +
    (experiment == null ? 0 : experiment!.hashCode) +
    (exposedTotal == null ? 0 : exposedTotal!.hashCode) +
    (metric == null ? 0 : metric!.hashCode) +
    (results.hashCode) +
    (winner == null ? 0 : winner!.hashCode);

  @override
  String toString() => 'Analysis[alpha=$alpha, experiment=$experiment, exposedTotal=$exposedTotal, metric=$metric, results=$results, winner=$winner]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.alpha != null) {
      json[r'alpha'] = this.alpha;
    } else {
      json[r'alpha'] = null;
    }
    if (this.experiment != null) {
      json[r'experiment'] = this.experiment;
    } else {
      json[r'experiment'] = null;
    }
    if (this.exposedTotal != null) {
      json[r'exposedTotal'] = this.exposedTotal;
    } else {
      json[r'exposedTotal'] = null;
    }
    if (this.metric != null) {
      json[r'metric'] = this.metric;
    } else {
      json[r'metric'] = null;
    }
      json[r'results'] = this.results;
    if (this.winner != null) {
      json[r'winner'] = this.winner;
    } else {
      json[r'winner'] = null;
    }
    return json;
  }

  /// Returns a new [Analysis] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Analysis? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Analysis[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Analysis[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Analysis(
        alpha: num.parse('${json[r'alpha']}'),
        experiment: mapValueOfType<String>(json, r'experiment'),
        exposedTotal: mapValueOfType<int>(json, r'exposedTotal'),
        metric: mapValueOfType<String>(json, r'metric'),
        results: Outcome.listFromJson(json[r'results']),
        winner: mapValueOfType<String>(json, r'winner'),
      );
    }
    return null;
  }

  static List<Analysis> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Analysis>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Analysis.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Analysis> mapFromJson(dynamic json) {
    final map = <String, Analysis>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Analysis.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Analysis-objects as value to a dart map
  static Map<String, List<Analysis>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Analysis>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Analysis.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

