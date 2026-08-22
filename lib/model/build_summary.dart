//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class BuildSummary {
  /// Returns a new [BuildSummary] instance.
  BuildSummary({
    this.agent,
    this.endedAt,
    this.org,
    this.project,
    this.repo,
    this.session,
    this.startedAt,
    this.status,
    this.title,
    this.turns,
  });
  /// Agent is the label the surface that did the work calls itself by.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? agent;

  /// EndedAt is when it finished, same format. Empty means it is still going.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? endedAt;

  /// Org and Project are the build's public ADDRESS — the pair the full story is read at, and the pair a visitor sees in the URL bar. Not a tenant key: this index is anonymous and lists only what authors published.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? org;

  /// Project is the product's slug, the second half of that address.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? project;

  /// Repo is the repository the work was done in, as the session reported it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? repo;

  /// Session is the agent session behind the build, and the value its commits name in their `Hanzo-Session:` trailer.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? session;

  /// StartedAt is when the session opened, RFC 3339 in UTC.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? startedAt;

  /// Status is the session's own: running, paused, done or error — so a card can show a build still being written.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  /// Title is the human line for the card. Sent even when empty, like every field here, because that is what this route has always sent.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? title;

  /// Turns is HOW MANY turns the transcript holds — a COUNT, unlike the `turn` on each turn of the full story, which is that turn's position. The full read returns at most 1000 of them; this number is not capped.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? turns;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BuildSummary &&
    other.agent == agent &&
    other.endedAt == endedAt &&
    other.org == org &&
    other.project == project &&
    other.repo == repo &&
    other.session == session &&
    other.startedAt == startedAt &&
    other.status == status &&
    other.title == title &&
    other.turns == turns;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (agent == null ? 0 : agent!.hashCode) +
    (endedAt == null ? 0 : endedAt!.hashCode) +
    (org == null ? 0 : org!.hashCode) +
    (project == null ? 0 : project!.hashCode) +
    (repo == null ? 0 : repo!.hashCode) +
    (session == null ? 0 : session!.hashCode) +
    (startedAt == null ? 0 : startedAt!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (title == null ? 0 : title!.hashCode) +
    (turns == null ? 0 : turns!.hashCode);

  @override
  String toString() => 'BuildSummary[agent=$agent, endedAt=$endedAt, org=$org, project=$project, repo=$repo, session=$session, startedAt=$startedAt, status=$status, title=$title, turns=$turns]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.agent != null) {
      json[r'agent'] = this.agent;
    } else {
      json[r'agent'] = null;
    }
    if (this.endedAt != null) {
      json[r'endedAt'] = this.endedAt;
    } else {
      json[r'endedAt'] = null;
    }
    if (this.org != null) {
      json[r'org'] = this.org;
    } else {
      json[r'org'] = null;
    }
    if (this.project != null) {
      json[r'project'] = this.project;
    } else {
      json[r'project'] = null;
    }
    if (this.repo != null) {
      json[r'repo'] = this.repo;
    } else {
      json[r'repo'] = null;
    }
    if (this.session != null) {
      json[r'session'] = this.session;
    } else {
      json[r'session'] = null;
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
    if (this.title != null) {
      json[r'title'] = this.title;
    } else {
      json[r'title'] = null;
    }
    if (this.turns != null) {
      json[r'turns'] = this.turns;
    } else {
      json[r'turns'] = null;
    }
    return json;
  }

  /// Returns a new [BuildSummary] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BuildSummary? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "BuildSummary[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "BuildSummary[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return BuildSummary(
        agent: mapValueOfType<String>(json, r'agent'),
        endedAt: mapValueOfType<String>(json, r'endedAt'),
        org: mapValueOfType<String>(json, r'org'),
        project: mapValueOfType<String>(json, r'project'),
        repo: mapValueOfType<String>(json, r'repo'),
        session: mapValueOfType<String>(json, r'session'),
        startedAt: mapValueOfType<String>(json, r'startedAt'),
        status: mapValueOfType<String>(json, r'status'),
        title: mapValueOfType<String>(json, r'title'),
        turns: mapValueOfType<int>(json, r'turns'),
      );
    }
    return null;
  }

  static List<BuildSummary> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BuildSummary>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BuildSummary.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, BuildSummary> mapFromJson(dynamic json) {
    final map = <String, BuildSummary>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BuildSummary.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of BuildSummary-objects as value to a dart map
  static Map<String, List<BuildSummary>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<BuildSummary>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = BuildSummary.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

