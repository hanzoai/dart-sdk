//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ResearchTotals {
  /// Returns a new [ResearchTotals] instance.
  ResearchTotals({
    this.attempts,
    this.attemptsRetained,
    this.benchmarks,
    this.byKind = const [],
    this.costUsd,
    this.experiments,
    this.experimentsRetained,
    this.models,
    this.project,
    this.projects,
  });

  /// canonical
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? attempts;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? attemptsRetained;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? benchmarks;

  List<KindTotal> byKind;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? costUsd;

  /// canonical
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? experiments;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? experimentsRetained;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? models;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? project;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? projects;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ResearchTotals &&
    other.attempts == attempts &&
    other.attemptsRetained == attemptsRetained &&
    other.benchmarks == benchmarks &&
    _deepEquality.equals(other.byKind, byKind) &&
    other.costUsd == costUsd &&
    other.experiments == experiments &&
    other.experimentsRetained == experimentsRetained &&
    other.models == models &&
    other.project == project &&
    other.projects == projects;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (attempts == null ? 0 : attempts!.hashCode) +
    (attemptsRetained == null ? 0 : attemptsRetained!.hashCode) +
    (benchmarks == null ? 0 : benchmarks!.hashCode) +
    (byKind.hashCode) +
    (costUsd == null ? 0 : costUsd!.hashCode) +
    (experiments == null ? 0 : experiments!.hashCode) +
    (experimentsRetained == null ? 0 : experimentsRetained!.hashCode) +
    (models == null ? 0 : models!.hashCode) +
    (project == null ? 0 : project!.hashCode) +
    (projects == null ? 0 : projects!.hashCode);

  @override
  String toString() => 'ResearchTotals[attempts=$attempts, attemptsRetained=$attemptsRetained, benchmarks=$benchmarks, byKind=$byKind, costUsd=$costUsd, experiments=$experiments, experimentsRetained=$experimentsRetained, models=$models, project=$project, projects=$projects]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.attempts != null) {
      json[r'attempts'] = this.attempts;
    } else {
      json[r'attempts'] = null;
    }
    if (this.attemptsRetained != null) {
      json[r'attempts_retained'] = this.attemptsRetained;
    } else {
      json[r'attempts_retained'] = null;
    }
    if (this.benchmarks != null) {
      json[r'benchmarks'] = this.benchmarks;
    } else {
      json[r'benchmarks'] = null;
    }
      json[r'by_kind'] = this.byKind;
    if (this.costUsd != null) {
      json[r'cost_usd'] = this.costUsd;
    } else {
      json[r'cost_usd'] = null;
    }
    if (this.experiments != null) {
      json[r'experiments'] = this.experiments;
    } else {
      json[r'experiments'] = null;
    }
    if (this.experimentsRetained != null) {
      json[r'experiments_retained'] = this.experimentsRetained;
    } else {
      json[r'experiments_retained'] = null;
    }
    if (this.models != null) {
      json[r'models'] = this.models;
    } else {
      json[r'models'] = null;
    }
    if (this.project != null) {
      json[r'project'] = this.project;
    } else {
      json[r'project'] = null;
    }
    if (this.projects != null) {
      json[r'projects'] = this.projects;
    } else {
      json[r'projects'] = null;
    }
    return json;
  }

  /// Returns a new [ResearchTotals] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ResearchTotals? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ResearchTotals[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ResearchTotals[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ResearchTotals(
        attempts: mapValueOfType<int>(json, r'attempts'),
        attemptsRetained: mapValueOfType<int>(json, r'attempts_retained'),
        benchmarks: mapValueOfType<int>(json, r'benchmarks'),
        byKind: KindTotal.listFromJson(json[r'by_kind']),
        costUsd: num.parse('${json[r'cost_usd']}'),
        experiments: mapValueOfType<int>(json, r'experiments'),
        experimentsRetained: mapValueOfType<int>(json, r'experiments_retained'),
        models: mapValueOfType<int>(json, r'models'),
        project: mapValueOfType<String>(json, r'project'),
        projects: mapValueOfType<int>(json, r'projects'),
      );
    }
    return null;
  }

  static List<ResearchTotals> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ResearchTotals>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ResearchTotals.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ResearchTotals> mapFromJson(dynamic json) {
    final map = <String, ResearchTotals>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ResearchTotals.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ResearchTotals-objects as value to a dart map
  static Map<String, List<ResearchTotals>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ResearchTotals>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ResearchTotals.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

