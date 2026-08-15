//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ProjectSummary {
  /// Returns a new [ProjectSummary] instance.
  ProjectSummary({
    this.attempts,
    this.attemptsRetained,
    this.benchmarks,
    this.costUsd,
    this.experiments,
    this.experimentsRetained,
    this.kinds = const [],
    this.models,
    this.project,
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

  List<String> kinds;

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

  @override
  bool operator ==(Object other) => identical(this, other) || other is ProjectSummary &&
    other.attempts == attempts &&
    other.attemptsRetained == attemptsRetained &&
    other.benchmarks == benchmarks &&
    other.costUsd == costUsd &&
    other.experiments == experiments &&
    other.experimentsRetained == experimentsRetained &&
    _deepEquality.equals(other.kinds, kinds) &&
    other.models == models &&
    other.project == project;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (attempts == null ? 0 : attempts!.hashCode) +
    (attemptsRetained == null ? 0 : attemptsRetained!.hashCode) +
    (benchmarks == null ? 0 : benchmarks!.hashCode) +
    (costUsd == null ? 0 : costUsd!.hashCode) +
    (experiments == null ? 0 : experiments!.hashCode) +
    (experimentsRetained == null ? 0 : experimentsRetained!.hashCode) +
    (kinds.hashCode) +
    (models == null ? 0 : models!.hashCode) +
    (project == null ? 0 : project!.hashCode);

  @override
  String toString() => 'ProjectSummary[attempts=$attempts, attemptsRetained=$attemptsRetained, benchmarks=$benchmarks, costUsd=$costUsd, experiments=$experiments, experimentsRetained=$experimentsRetained, kinds=$kinds, models=$models, project=$project]';

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
      json[r'kinds'] = this.kinds;
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
    return json;
  }

  /// Returns a new [ProjectSummary] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ProjectSummary? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ProjectSummary[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ProjectSummary[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ProjectSummary(
        attempts: mapValueOfType<int>(json, r'attempts'),
        attemptsRetained: mapValueOfType<int>(json, r'attempts_retained'),
        benchmarks: mapValueOfType<int>(json, r'benchmarks'),
        costUsd: num.parse('${json[r'cost_usd']}'),
        experiments: mapValueOfType<int>(json, r'experiments'),
        experimentsRetained: mapValueOfType<int>(json, r'experiments_retained'),
        kinds: json[r'kinds'] is Iterable
            ? (json[r'kinds'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        models: mapValueOfType<int>(json, r'models'),
        project: mapValueOfType<String>(json, r'project'),
      );
    }
    return null;
  }

  static List<ProjectSummary> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ProjectSummary>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ProjectSummary.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ProjectSummary> mapFromJson(dynamic json) {
    final map = <String, ProjectSummary>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ProjectSummary.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ProjectSummary-objects as value to a dart map
  static Map<String, List<ProjectSummary>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ProjectSummary>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ProjectSummary.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

