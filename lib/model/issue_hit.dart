//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class IssueHit {
  /// Returns a new [IssueHit] instance.
  IssueHit({
    this.assignee,
    this.kind,
    this.number,
    this.priority,
    this.project,
    this.repo,
    this.room,
    this.source_,
    this.status,
    this.title,
    this.url,
  });
  /// Assignee is who holds the work. EMPTY MEANS UNHELD, which is what makes the issue claimable: claiming one already held by someone else is refused with 409 rather than quietly taken.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? assignee;

  /// Kind is what the row IS: issue, pr or epic.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? kind;

  /// Number is the issue's number on that board, from 1 and monotonic there. Unique per board, never across the org — so it addresses an issue only together with Project.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? number;

  /// Priority is urgent, high, medium, low or none. Never empty — an unset priority is the value \"none\".
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? priority;

  /// Project is the board key the issue is on. It and Number are the issue's address in every other route on this surface, which is why a hit carries it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? project;

  /// Repo is the git repository the issue is bound to, empty when it is not repo-bound.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? repo;

  /// Room is the collaboration room the issue belongs to, spelled \"<space>_<room>\" — empty when it is not room-bound, which is most of them. It is here so an org-wide search says which channel each item came from without a second read.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? room;

  /// Source is which surface opened it: team, git, crm, helpdesk, cms or agent. \"git\" is how the mirrored forge and GitHub rows are spelled.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? source_;

  /// Status is the board column: backlog, todo, in_progress, done or canceled. Claiming moves backlog and todo to in_progress and leaves the other three where they are.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  /// Title is the issue's one-line summary — what the q filter matched, along with the description.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? title;

  /// URL is the row's external anchor — its extRef — which is a link only when the feeder sent one. A mirrored GitHub issue carries \"github:owner/repo#123\" and an agent's PR row carries the pushed branch. Empty for a row opened here.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? url;

  @override
  bool operator ==(Object other) => identical(this, other) || other is IssueHit &&
    other.assignee == assignee &&
    other.kind == kind &&
    other.number == number &&
    other.priority == priority &&
    other.project == project &&
    other.repo == repo &&
    other.room == room &&
    other.source_ == source_ &&
    other.status == status &&
    other.title == title &&
    other.url == url;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (assignee == null ? 0 : assignee!.hashCode) +
    (kind == null ? 0 : kind!.hashCode) +
    (number == null ? 0 : number!.hashCode) +
    (priority == null ? 0 : priority!.hashCode) +
    (project == null ? 0 : project!.hashCode) +
    (repo == null ? 0 : repo!.hashCode) +
    (room == null ? 0 : room!.hashCode) +
    (source_ == null ? 0 : source_!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (title == null ? 0 : title!.hashCode) +
    (url == null ? 0 : url!.hashCode);

  @override
  String toString() => 'IssueHit[assignee=$assignee, kind=$kind, number=$number, priority=$priority, project=$project, repo=$repo, room=$room, source_=$source_, status=$status, title=$title, url=$url]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.assignee != null) {
      json[r'assignee'] = this.assignee;
    } else {
      json[r'assignee'] = null;
    }
    if (this.kind != null) {
      json[r'kind'] = this.kind;
    } else {
      json[r'kind'] = null;
    }
    if (this.number != null) {
      json[r'number'] = this.number;
    } else {
      json[r'number'] = null;
    }
    if (this.priority != null) {
      json[r'priority'] = this.priority;
    } else {
      json[r'priority'] = null;
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
    if (this.room != null) {
      json[r'room'] = this.room;
    } else {
      json[r'room'] = null;
    }
    if (this.source_ != null) {
      json[r'source'] = this.source_;
    } else {
      json[r'source'] = null;
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
    return json;
  }

  /// Returns a new [IssueHit] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IssueHit? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "IssueHit[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "IssueHit[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return IssueHit(
        assignee: mapValueOfType<String>(json, r'assignee'),
        kind: mapValueOfType<String>(json, r'kind'),
        number: mapValueOfType<int>(json, r'number'),
        priority: mapValueOfType<String>(json, r'priority'),
        project: mapValueOfType<String>(json, r'project'),
        repo: mapValueOfType<String>(json, r'repo'),
        room: mapValueOfType<String>(json, r'room'),
        source_: mapValueOfType<String>(json, r'source'),
        status: mapValueOfType<String>(json, r'status'),
        title: mapValueOfType<String>(json, r'title'),
        url: mapValueOfType<String>(json, r'url'),
      );
    }
    return null;
  }

  static List<IssueHit> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <IssueHit>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IssueHit.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IssueHit> mapFromJson(dynamic json) {
    final map = <String, IssueHit>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IssueHit.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IssueHit-objects as value to a dart map
  static Map<String, List<IssueHit>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<IssueHit>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = IssueHit.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

