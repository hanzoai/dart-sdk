//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class IngestOut {
  /// Returns a new [IngestOut] instance.
  IngestOut({
    this.attemptsIngested,
    this.attemptsRetained,
    this.canonicalAttempts,
    this.canonicalExperiments,
    this.experimentsIngested,
    this.experimentsRetained,
    this.project,
    this.rolledUp,
  });

  /// AttemptsIngested is how many attempt versions this call appended.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? attemptsIngested;

  /// AttemptsRetained is the full versioned attempt history the store now holds.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? attemptsRetained;

  /// CanonicalAttempts is the deduped attempt count the store now holds.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? canonicalAttempts;

  /// CanonicalExperiments is the deduped experiment count the store now holds.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? canonicalExperiments;

  /// ExperimentsIngested is how many experiment versions this call appended.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? experimentsIngested;

  /// ExperimentsRetained is the full versioned experiment history the store now holds.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? experimentsRetained;

  /// Project is the project the batch was filed under — the SERVER's value, never the body's.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? project;

  /// RolledUp is false when the OLAP roll-up was skipped; the SQLite write still stands.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? rolledUp;

  @override
  bool operator ==(Object other) => identical(this, other) || other is IngestOut &&
    other.attemptsIngested == attemptsIngested &&
    other.attemptsRetained == attemptsRetained &&
    other.canonicalAttempts == canonicalAttempts &&
    other.canonicalExperiments == canonicalExperiments &&
    other.experimentsIngested == experimentsIngested &&
    other.experimentsRetained == experimentsRetained &&
    other.project == project &&
    other.rolledUp == rolledUp;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (attemptsIngested == null ? 0 : attemptsIngested!.hashCode) +
    (attemptsRetained == null ? 0 : attemptsRetained!.hashCode) +
    (canonicalAttempts == null ? 0 : canonicalAttempts!.hashCode) +
    (canonicalExperiments == null ? 0 : canonicalExperiments!.hashCode) +
    (experimentsIngested == null ? 0 : experimentsIngested!.hashCode) +
    (experimentsRetained == null ? 0 : experimentsRetained!.hashCode) +
    (project == null ? 0 : project!.hashCode) +
    (rolledUp == null ? 0 : rolledUp!.hashCode);

  @override
  String toString() => 'IngestOut[attemptsIngested=$attemptsIngested, attemptsRetained=$attemptsRetained, canonicalAttempts=$canonicalAttempts, canonicalExperiments=$canonicalExperiments, experimentsIngested=$experimentsIngested, experimentsRetained=$experimentsRetained, project=$project, rolledUp=$rolledUp]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.attemptsIngested != null) {
      json[r'attempts_ingested'] = this.attemptsIngested;
    } else {
      json[r'attempts_ingested'] = null;
    }
    if (this.attemptsRetained != null) {
      json[r'attempts_retained'] = this.attemptsRetained;
    } else {
      json[r'attempts_retained'] = null;
    }
    if (this.canonicalAttempts != null) {
      json[r'canonical_attempts'] = this.canonicalAttempts;
    } else {
      json[r'canonical_attempts'] = null;
    }
    if (this.canonicalExperiments != null) {
      json[r'canonical_experiments'] = this.canonicalExperiments;
    } else {
      json[r'canonical_experiments'] = null;
    }
    if (this.experimentsIngested != null) {
      json[r'experiments_ingested'] = this.experimentsIngested;
    } else {
      json[r'experiments_ingested'] = null;
    }
    if (this.experimentsRetained != null) {
      json[r'experiments_retained'] = this.experimentsRetained;
    } else {
      json[r'experiments_retained'] = null;
    }
    if (this.project != null) {
      json[r'project'] = this.project;
    } else {
      json[r'project'] = null;
    }
    if (this.rolledUp != null) {
      json[r'rolled_up'] = this.rolledUp;
    } else {
      json[r'rolled_up'] = null;
    }
    return json;
  }

  /// Returns a new [IngestOut] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IngestOut? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "IngestOut[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "IngestOut[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return IngestOut(
        attemptsIngested: mapValueOfType<int>(json, r'attempts_ingested'),
        attemptsRetained: mapValueOfType<int>(json, r'attempts_retained'),
        canonicalAttempts: mapValueOfType<int>(json, r'canonical_attempts'),
        canonicalExperiments: mapValueOfType<int>(json, r'canonical_experiments'),
        experimentsIngested: mapValueOfType<int>(json, r'experiments_ingested'),
        experimentsRetained: mapValueOfType<int>(json, r'experiments_retained'),
        project: mapValueOfType<String>(json, r'project'),
        rolledUp: mapValueOfType<bool>(json, r'rolled_up'),
      );
    }
    return null;
  }

  static List<IngestOut> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <IngestOut>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IngestOut.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IngestOut> mapFromJson(dynamic json) {
    final map = <String, IngestOut>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IngestOut.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IngestOut-objects as value to a dart map
  static Map<String, List<IngestOut>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<IngestOut>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = IngestOut.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

