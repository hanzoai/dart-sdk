//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class BuildRow {
  /// Returns a new [BuildRow] instance.
  BuildRow({
    this.commit,
    this.duration,
    this.id,
    this.repo,
    this.startedAt,
    this.status,
  });

  /// Commit is the short git ref the build pinned.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? commit;

  /// Duration is the wall time of a TERMINAL build; empty while it still runs.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? duration;

  /// ID is the build record's id.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// Repo is the repo the build built, or the image it produced.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? repo;

  /// StartedAt is when the build was recorded, RFC3339 UTC.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? startedAt;

  /// Status is the build's real state: queued, building, succeeded or failed.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BuildRow &&
    other.commit == commit &&
    other.duration == duration &&
    other.id == id &&
    other.repo == repo &&
    other.startedAt == startedAt &&
    other.status == status;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (commit == null ? 0 : commit!.hashCode) +
    (duration == null ? 0 : duration!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (repo == null ? 0 : repo!.hashCode) +
    (startedAt == null ? 0 : startedAt!.hashCode) +
    (status == null ? 0 : status!.hashCode);

  @override
  String toString() => 'BuildRow[commit=$commit, duration=$duration, id=$id, repo=$repo, startedAt=$startedAt, status=$status]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.commit != null) {
      json[r'commit'] = this.commit;
    } else {
      json[r'commit'] = null;
    }
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
    if (this.repo != null) {
      json[r'repo'] = this.repo;
    } else {
      json[r'repo'] = null;
    }
    if (this.startedAt != null) {
      json[r'startedAt'] = this.startedAt;
    } else {
      json[r'startedAt'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    return json;
  }

  /// Returns a new [BuildRow] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BuildRow? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "BuildRow[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "BuildRow[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return BuildRow(
        commit: mapValueOfType<String>(json, r'commit'),
        duration: mapValueOfType<String>(json, r'duration'),
        id: mapValueOfType<String>(json, r'id'),
        repo: mapValueOfType<String>(json, r'repo'),
        startedAt: mapValueOfType<String>(json, r'startedAt'),
        status: mapValueOfType<String>(json, r'status'),
      );
    }
    return null;
  }

  static List<BuildRow> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BuildRow>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BuildRow.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, BuildRow> mapFromJson(dynamic json) {
    final map = <String, BuildRow>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BuildRow.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of BuildRow-objects as value to a dart map
  static Map<String, List<BuildRow>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<BuildRow>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = BuildRow.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

