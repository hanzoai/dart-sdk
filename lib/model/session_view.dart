//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class SessionView {
  /// Returns a new [SessionView] instance.
  SessionView({
    this.account,
    this.actor,
    this.agent,
    this.children,
    this.createdAt,
    this.cwd,
    this.endedAt,
    this.events,
    this.host,
    this.id,
    this.lastEvent,
    this.org,
    this.parentSessionId,
    this.project,
    this.provider,
    this.published,
    this.repo,
    this.rootSessionId,
    this.startedAt,
    this.status,
    this.target,
    this.taskRunId,
    this.taskWorkflowId,
    this.terminal,
    this.title,
    this.updatedAt,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? account;

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
  String? agent;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? children;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? createdAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? cwd;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? endedAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? events;

  /// Execution context (mission-control): the machine/repo/cwd a card shows and the run-target a session is dispatched to. Omitted when a surface didn't report it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? host;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// LastEvent is the compact latest-activity line for the list projection (nil in register/patch/tree responses; set by list + detail). It lets a swipe card show a live one-line preview without fetching full detail.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  LastEventView? lastEvent;

  /// Org is the caller's OWN tenant, echoed so a client can build the public build URL (/builds/:org/:project) without a second call or a guess. It is never another tenant's — every read is org-scoped before it gets here.
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
  String? parentSessionId;

  /// The readable build: the product this session built and whether its story is public (provenance.go).
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
  String? provider;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? published;

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
  String? rootSessionId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? startedAt;

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
  String? target;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? taskRunId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? taskWorkflowId;

  /// Terminal is where this session can be WATCHED — the URL the machine published for its live terminal. Omitted when it publishes none.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? terminal;

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
  String? updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SessionView &&
    other.account == account &&
    other.actor == actor &&
    other.agent == agent &&
    other.children == children &&
    other.createdAt == createdAt &&
    other.cwd == cwd &&
    other.endedAt == endedAt &&
    other.events == events &&
    other.host == host &&
    other.id == id &&
    other.lastEvent == lastEvent &&
    other.org == org &&
    other.parentSessionId == parentSessionId &&
    other.project == project &&
    other.provider == provider &&
    other.published == published &&
    other.repo == repo &&
    other.rootSessionId == rootSessionId &&
    other.startedAt == startedAt &&
    other.status == status &&
    other.target == target &&
    other.taskRunId == taskRunId &&
    other.taskWorkflowId == taskWorkflowId &&
    other.terminal == terminal &&
    other.title == title &&
    other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (account == null ? 0 : account!.hashCode) +
    (actor == null ? 0 : actor!.hashCode) +
    (agent == null ? 0 : agent!.hashCode) +
    (children == null ? 0 : children!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (cwd == null ? 0 : cwd!.hashCode) +
    (endedAt == null ? 0 : endedAt!.hashCode) +
    (events == null ? 0 : events!.hashCode) +
    (host == null ? 0 : host!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (lastEvent == null ? 0 : lastEvent!.hashCode) +
    (org == null ? 0 : org!.hashCode) +
    (parentSessionId == null ? 0 : parentSessionId!.hashCode) +
    (project == null ? 0 : project!.hashCode) +
    (provider == null ? 0 : provider!.hashCode) +
    (published == null ? 0 : published!.hashCode) +
    (repo == null ? 0 : repo!.hashCode) +
    (rootSessionId == null ? 0 : rootSessionId!.hashCode) +
    (startedAt == null ? 0 : startedAt!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (target == null ? 0 : target!.hashCode) +
    (taskRunId == null ? 0 : taskRunId!.hashCode) +
    (taskWorkflowId == null ? 0 : taskWorkflowId!.hashCode) +
    (terminal == null ? 0 : terminal!.hashCode) +
    (title == null ? 0 : title!.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode);

  @override
  String toString() => 'SessionView[account=$account, actor=$actor, agent=$agent, children=$children, createdAt=$createdAt, cwd=$cwd, endedAt=$endedAt, events=$events, host=$host, id=$id, lastEvent=$lastEvent, org=$org, parentSessionId=$parentSessionId, project=$project, provider=$provider, published=$published, repo=$repo, rootSessionId=$rootSessionId, startedAt=$startedAt, status=$status, target=$target, taskRunId=$taskRunId, taskWorkflowId=$taskWorkflowId, terminal=$terminal, title=$title, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.account != null) {
      json[r'account'] = this.account;
    } else {
      json[r'account'] = null;
    }
    if (this.actor != null) {
      json[r'actor'] = this.actor;
    } else {
      json[r'actor'] = null;
    }
    if (this.agent != null) {
      json[r'agent'] = this.agent;
    } else {
      json[r'agent'] = null;
    }
    if (this.children != null) {
      json[r'children'] = this.children;
    } else {
      json[r'children'] = null;
    }
    if (this.createdAt != null) {
      json[r'createdAt'] = this.createdAt;
    } else {
      json[r'createdAt'] = null;
    }
    if (this.cwd != null) {
      json[r'cwd'] = this.cwd;
    } else {
      json[r'cwd'] = null;
    }
    if (this.endedAt != null) {
      json[r'endedAt'] = this.endedAt;
    } else {
      json[r'endedAt'] = null;
    }
    if (this.events != null) {
      json[r'events'] = this.events;
    } else {
      json[r'events'] = null;
    }
    if (this.host != null) {
      json[r'host'] = this.host;
    } else {
      json[r'host'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.lastEvent != null) {
      json[r'lastEvent'] = this.lastEvent;
    } else {
      json[r'lastEvent'] = null;
    }
    if (this.org != null) {
      json[r'org'] = this.org;
    } else {
      json[r'org'] = null;
    }
    if (this.parentSessionId != null) {
      json[r'parentSessionId'] = this.parentSessionId;
    } else {
      json[r'parentSessionId'] = null;
    }
    if (this.project != null) {
      json[r'project'] = this.project;
    } else {
      json[r'project'] = null;
    }
    if (this.provider != null) {
      json[r'provider'] = this.provider;
    } else {
      json[r'provider'] = null;
    }
    if (this.published != null) {
      json[r'published'] = this.published;
    } else {
      json[r'published'] = null;
    }
    if (this.repo != null) {
      json[r'repo'] = this.repo;
    } else {
      json[r'repo'] = null;
    }
    if (this.rootSessionId != null) {
      json[r'rootSessionId'] = this.rootSessionId;
    } else {
      json[r'rootSessionId'] = null;
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
    if (this.target != null) {
      json[r'target'] = this.target;
    } else {
      json[r'target'] = null;
    }
    if (this.taskRunId != null) {
      json[r'taskRunId'] = this.taskRunId;
    } else {
      json[r'taskRunId'] = null;
    }
    if (this.taskWorkflowId != null) {
      json[r'taskWorkflowId'] = this.taskWorkflowId;
    } else {
      json[r'taskWorkflowId'] = null;
    }
    if (this.terminal != null) {
      json[r'terminal'] = this.terminal;
    } else {
      json[r'terminal'] = null;
    }
    if (this.title != null) {
      json[r'title'] = this.title;
    } else {
      json[r'title'] = null;
    }
    if (this.updatedAt != null) {
      json[r'updatedAt'] = this.updatedAt;
    } else {
      json[r'updatedAt'] = null;
    }
    return json;
  }

  /// Returns a new [SessionView] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SessionView? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SessionView[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SessionView[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SessionView(
        account: mapValueOfType<String>(json, r'account'),
        actor: mapValueOfType<String>(json, r'actor'),
        agent: mapValueOfType<String>(json, r'agent'),
        children: mapValueOfType<int>(json, r'children'),
        createdAt: mapValueOfType<String>(json, r'createdAt'),
        cwd: mapValueOfType<String>(json, r'cwd'),
        endedAt: mapValueOfType<String>(json, r'endedAt'),
        events: mapValueOfType<int>(json, r'events'),
        host: mapValueOfType<String>(json, r'host'),
        id: mapValueOfType<String>(json, r'id'),
        lastEvent: LastEventView.fromJson(json[r'lastEvent']),
        org: mapValueOfType<String>(json, r'org'),
        parentSessionId: mapValueOfType<String>(json, r'parentSessionId'),
        project: mapValueOfType<String>(json, r'project'),
        provider: mapValueOfType<String>(json, r'provider'),
        published: mapValueOfType<bool>(json, r'published'),
        repo: mapValueOfType<String>(json, r'repo'),
        rootSessionId: mapValueOfType<String>(json, r'rootSessionId'),
        startedAt: mapValueOfType<String>(json, r'startedAt'),
        status: mapValueOfType<String>(json, r'status'),
        target: mapValueOfType<String>(json, r'target'),
        taskRunId: mapValueOfType<String>(json, r'taskRunId'),
        taskWorkflowId: mapValueOfType<String>(json, r'taskWorkflowId'),
        terminal: mapValueOfType<String>(json, r'terminal'),
        title: mapValueOfType<String>(json, r'title'),
        updatedAt: mapValueOfType<String>(json, r'updatedAt'),
      );
    }
    return null;
  }

  static List<SessionView> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SessionView>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SessionView.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SessionView> mapFromJson(dynamic json) {
    final map = <String, SessionView>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SessionView.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SessionView-objects as value to a dart map
  static Map<String, List<SessionView>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SessionView>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SessionView.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

