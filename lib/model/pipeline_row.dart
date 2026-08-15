//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class PipelineRow {
  /// Returns a new [PipelineRow] instance.
  PipelineRow({
    this.duration,
    this.id,
    this.lastRun,
    this.name,
    this.repo,
    this.status,
  });

  /// Duration is how long that run took; empty while it is still queued or building.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? duration;

  /// ID is the application id — one pipeline is one application.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// LastRun is when the most recent deployment started, RFC3339 UTC.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? lastRun;

  /// Name is the application's name.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// Repo is the git repo or image the pipeline builds from.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? repo;

  /// Status is the latest deployment's status, or the app's when it has none.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PipelineRow &&
    other.duration == duration &&
    other.id == id &&
    other.lastRun == lastRun &&
    other.name == name &&
    other.repo == repo &&
    other.status == status;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (duration == null ? 0 : duration!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (lastRun == null ? 0 : lastRun!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (repo == null ? 0 : repo!.hashCode) +
    (status == null ? 0 : status!.hashCode);

  @override
  String toString() => 'PipelineRow[duration=$duration, id=$id, lastRun=$lastRun, name=$name, repo=$repo, status=$status]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.duration != null) {
      json[r'duration'] = this.duration;
    } else {
      json[r'duration'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.lastRun != null) {
      json[r'lastRun'] = this.lastRun;
    } else {
      json[r'lastRun'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.repo != null) {
      json[r'repo'] = this.repo;
    } else {
      json[r'repo'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    return json;
  }

  /// Returns a new [PipelineRow] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PipelineRow? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PipelineRow[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PipelineRow[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PipelineRow(
        duration: mapValueOfType<String>(json, r'duration'),
        id: mapValueOfType<String>(json, r'id'),
        lastRun: mapValueOfType<String>(json, r'lastRun'),
        name: mapValueOfType<String>(json, r'name'),
        repo: mapValueOfType<String>(json, r'repo'),
        status: mapValueOfType<String>(json, r'status'),
      );
    }
    return null;
  }

  static List<PipelineRow> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PipelineRow>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PipelineRow.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PipelineRow> mapFromJson(dynamic json) {
    final map = <String, PipelineRow>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PipelineRow.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PipelineRow-objects as value to a dart map
  static Map<String, List<PipelineRow>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PipelineRow>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PipelineRow.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

