//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ReportRunIn {
  /// Returns a new [ReportRunIn] instance.
  ReportRunIn({
    this.branch,
    this.changed,
    this.commitSha,
    this.diffstat,
    this.error,
    this.id,
    this.ok,
    this.runId,
  });
  /// Branch, CommitSha and Diffstat describe what the run produced; Error is the failure when OK is false. Each is clamped, never rejected.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? branch;

  /// Changed says whether the run produced any commit. It is INDEPENDENT of OK: a run can succeed and change nothing (there was nothing to do), and a run can fail after committing some of its work. Two questions, two booleans.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? changed;

  /// CommitSha is the tip the run pushed, clamped to 128 characters. Empty when it pushed nothing, which is the same case Changed reports false for.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? commitSha;

  /// Diffstat is the run's own summary of what it changed, as text, clamped to 64 KiB. Free-form: it is shown, never parsed.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? diffstat;

  /// Error is why the run failed, clamped to 64 KiB. It is CLAMPED rather than refused — a truncated reason is worth more than a rejected report, because a rejected report leaves the durable workflow waiting forever.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? error;

  /// ID is the machine reporting, from the path.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// OK is whether the run succeeded; Changed whether it produced any commit.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? ok;

  /// RunID is the routed run being completed, from the path.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? runId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ReportRunIn &&
    other.branch == branch &&
    other.changed == changed &&
    other.commitSha == commitSha &&
    other.diffstat == diffstat &&
    other.error == error &&
    other.id == id &&
    other.ok == ok &&
    other.runId == runId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (branch == null ? 0 : branch!.hashCode) +
    (changed == null ? 0 : changed!.hashCode) +
    (commitSha == null ? 0 : commitSha!.hashCode) +
    (diffstat == null ? 0 : diffstat!.hashCode) +
    (error == null ? 0 : error!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (ok == null ? 0 : ok!.hashCode) +
    (runId == null ? 0 : runId!.hashCode);

  @override
  String toString() => 'ReportRunIn[branch=$branch, changed=$changed, commitSha=$commitSha, diffstat=$diffstat, error=$error, id=$id, ok=$ok, runId=$runId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.branch != null) {
      json[r'branch'] = this.branch;
    } else {
      json[r'branch'] = null;
    }
    if (this.changed != null) {
      json[r'changed'] = this.changed;
    } else {
      json[r'changed'] = null;
    }
    if (this.commitSha != null) {
      json[r'commitSha'] = this.commitSha;
    } else {
      json[r'commitSha'] = null;
    }
    if (this.diffstat != null) {
      json[r'diffstat'] = this.diffstat;
    } else {
      json[r'diffstat'] = null;
    }
    if (this.error != null) {
      json[r'error'] = this.error;
    } else {
      json[r'error'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.ok != null) {
      json[r'ok'] = this.ok;
    } else {
      json[r'ok'] = null;
    }
    if (this.runId != null) {
      json[r'runId'] = this.runId;
    } else {
      json[r'runId'] = null;
    }
    return json;
  }

  /// Returns a new [ReportRunIn] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ReportRunIn? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ReportRunIn[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ReportRunIn[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ReportRunIn(
        branch: mapValueOfType<String>(json, r'branch'),
        changed: mapValueOfType<bool>(json, r'changed'),
        commitSha: mapValueOfType<String>(json, r'commitSha'),
        diffstat: mapValueOfType<String>(json, r'diffstat'),
        error: mapValueOfType<String>(json, r'error'),
        id: mapValueOfType<String>(json, r'id'),
        ok: mapValueOfType<bool>(json, r'ok'),
        runId: mapValueOfType<String>(json, r'runId'),
      );
    }
    return null;
  }

  static List<ReportRunIn> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ReportRunIn>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ReportRunIn.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ReportRunIn> mapFromJson(dynamic json) {
    final map = <String, ReportRunIn>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ReportRunIn.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ReportRunIn-objects as value to a dart map
  static Map<String, List<ReportRunIn>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ReportRunIn>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ReportRunIn.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

