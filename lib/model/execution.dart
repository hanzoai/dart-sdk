//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Execution {
  /// Returns a new [Execution] instance.
  Execution({
    this.actor,
    this.branch,
    this.conclusion,
    this.endedAt,
    this.event,
    this.id,
    this.number,
    this.org,
    this.repo,
    this.sha,
    this.startedAt,
    this.status,
    this.title,
    this.url,
    this.workflow,
  });
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? actor;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? branch;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? conclusion;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? endedAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? event;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? number;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? org;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? repo;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? sha;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? startedAt;

  /// Status and Conclusion are BOTH required to know how a run went, and reading only one is wrong in a way that looks fine. Status answers \"is it over\" (queued | in_progress | completed); Conclusion answers \"how did it end\" and is empty until it is over. A view that buckets on Status alone sees `completed` and cannot tell a pass from a failure, so it draws every finished run — successes and cancellations included — the same way.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? title;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? url;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? workflow;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Execution &&
    other.actor == actor &&
    other.branch == branch &&
    other.conclusion == conclusion &&
    other.endedAt == endedAt &&
    other.event == event &&
    other.id == id &&
    other.number == number &&
    other.org == org &&
    other.repo == repo &&
    other.sha == sha &&
    other.startedAt == startedAt &&
    other.status == status &&
    other.title == title &&
    other.url == url &&
    other.workflow == workflow;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (actor == null ? 0 : actor!.hashCode) +
    (branch == null ? 0 : branch!.hashCode) +
    (conclusion == null ? 0 : conclusion!.hashCode) +
    (endedAt == null ? 0 : endedAt!.hashCode) +
    (event == null ? 0 : event!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (number == null ? 0 : number!.hashCode) +
    (org == null ? 0 : org!.hashCode) +
    (repo == null ? 0 : repo!.hashCode) +
    (sha == null ? 0 : sha!.hashCode) +
    (startedAt == null ? 0 : startedAt!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (title == null ? 0 : title!.hashCode) +
    (url == null ? 0 : url!.hashCode) +
    (workflow == null ? 0 : workflow!.hashCode);

  @override
  String toString() => 'Execution[actor=$actor, branch=$branch, conclusion=$conclusion, endedAt=$endedAt, event=$event, id=$id, number=$number, org=$org, repo=$repo, sha=$sha, startedAt=$startedAt, status=$status, title=$title, url=$url, workflow=$workflow]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.actor != null) {
      json[r'actor'] = this.actor;
    } else {
      json[r'actor'] = null;
    }
    if (this.branch != null) {
      json[r'branch'] = this.branch;
    } else {
      json[r'branch'] = null;
    }
    if (this.conclusion != null) {
      json[r'conclusion'] = this.conclusion;
    } else {
      json[r'conclusion'] = null;
    }
    if (this.endedAt != null) {
      json[r'endedAt'] = this.endedAt!.toUtc().toIso8601String();
    } else {
      json[r'endedAt'] = null;
    }
    if (this.event != null) {
      json[r'event'] = this.event;
    } else {
      json[r'event'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.number != null) {
      json[r'number'] = this.number;
    } else {
      json[r'number'] = null;
    }
    if (this.org != null) {
      json[r'org'] = this.org;
    } else {
      json[r'org'] = null;
    }
    if (this.repo != null) {
      json[r'repo'] = this.repo;
    } else {
      json[r'repo'] = null;
    }
    if (this.sha != null) {
      json[r'sha'] = this.sha;
    } else {
      json[r'sha'] = null;
    }
    if (this.startedAt != null) {
      json[r'startedAt'] = this.startedAt!.toUtc().toIso8601String();
    } else {
      json[r'startedAt'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.title != null) {
      json[r'title'] = this.title;
    } else {
      json[r'title'] = null;
    }
    if (this.url != null) {
      json[r'url'] = this.url;
    } else {
      json[r'url'] = null;
    }
    if (this.workflow != null) {
      json[r'workflow'] = this.workflow;
    } else {
      json[r'workflow'] = null;
    }
    return json;
  }

  /// Returns a new [Execution] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Execution? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Execution[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Execution[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Execution(
        actor: mapValueOfType<String>(json, r'actor'),
        branch: mapValueOfType<String>(json, r'branch'),
        conclusion: mapValueOfType<String>(json, r'conclusion'),
        endedAt: mapDateTime(json, r'endedAt', r''),
        event: mapValueOfType<String>(json, r'event'),
        id: mapValueOfType<int>(json, r'id'),
        number: mapValueOfType<int>(json, r'number'),
        org: mapValueOfType<String>(json, r'org'),
        repo: mapValueOfType<String>(json, r'repo'),
        sha: mapValueOfType<String>(json, r'sha'),
        startedAt: mapDateTime(json, r'startedAt', r''),
        status: mapValueOfType<String>(json, r'status'),
        title: mapValueOfType<String>(json, r'title'),
        url: mapValueOfType<String>(json, r'url'),
        workflow: mapValueOfType<String>(json, r'workflow'),
      );
    }
    return null;
  }

  static List<Execution> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Execution>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Execution.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Execution> mapFromJson(dynamic json) {
    final map = <String, Execution>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Execution.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Execution-objects as value to a dart map
  static Map<String, List<Execution>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Execution>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Execution.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

