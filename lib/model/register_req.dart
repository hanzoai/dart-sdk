//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class RegisterReq {
  /// Returns a new [RegisterReq] instance.
  RegisterReq({
    this.account,
    this.actor,
    this.agent,
    this.cwd,
    this.host,
    this.parentSessionId,
    this.project,
    this.provider,
    this.published,
    this.repo,
    this.room,
    this.status,
    this.target,
    this.taskRunId,
    this.taskWorkflowId,
    this.terminal,
    this.title,
  });
  /// Account is which subscription or API account under that provider served the run, up to 256 characters. It is what lets a revoke of that login stop exactly the sessions it was paying for.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? account;

  /// Actor is the \"org/sub\" identity to record the session under, up to 256 characters. Omit it and the calling principal is used, which is almost always what you want: it is what a login revoke matches on to stop this session.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? actor;

  /// Agent is the label the surface opening this session calls itself by (\"hanzo-dev\"). REQUIRED, up to 128 characters, and free text — nothing resolves it against a defined agent.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? agent;

  /// Cwd is the directory the session starts in, up to 1024 characters. It can be moved later, because a linked shell walks around.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? cwd;

  /// Execution context — where this session runs (all optional).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? host;

  /// ParentSessionID makes this a subagent of that session: it inherits the parent's root, so one flow stays one tree. The parent must exist IN THE SAME ORG — a foreign or unknown id is a 400, never a tree across tenants. Empty opens a root session.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? parentSessionId;

  /// The readable build (provenance.go): which product this session builds, and whether its story may be read by the world.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? project;

  /// Account tag — the linked AI account this session ran under (login manager).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? provider;

  /// Published opens this session's story to the public build route. It is refused without a Project, because that route is keyed on (org, project) — a build with no product is not a story anyone can open. False keeps it org-only.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? published;

  /// Repo is the code being worked on, up to 512 characters. A label the surface states; nothing resolves it against the forge.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? repo;

  /// Room is the collaborative room this run was started in (HIP-0523), so a workspace view can list the sessions of one room. It is PROVENANCE and is set only here: there is deliberately no way to move a session to another room, so it is absent from the patch input and from UpdateSession's SET list.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? room;

  /// Status opens the session in one of running, paused, done or error. Empty means running. A TERMINAL status here (done, error) records a session that has already finished — its end time is stamped now — and nothing can move it afterwards.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  /// Target names a run-target the org has registered. Unlike Host and Repo it IS resolved: a target that does not exist in this org is a 400, so a session can never claim to run on another tenant's machine. Empty names no machine.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? target;

  /// TaskRunID is that workflow's particular run, same bound. Recorded, not resolved: this surface does not check the workflow exists.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? taskRunId;

  /// TaskWorkflowID links this session to the hanzoai/tasks workflow that executes it, up to 256 characters. Set it and control commands are forwarded to that engine; leave it and the running surface polls for them instead.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? taskWorkflowId;

  /// Terminal is the URL this session's live terminal is published at, so the console can watch it. Optional — a session that publishes nothing is still a session.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? terminal;

  /// Title is the human line a card shows, up to 512 characters. Optional, and changeable later.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? title;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RegisterReq &&
    other.account == account &&
    other.actor == actor &&
    other.agent == agent &&
    other.cwd == cwd &&
    other.host == host &&
    other.parentSessionId == parentSessionId &&
    other.project == project &&
    other.provider == provider &&
    other.published == published &&
    other.repo == repo &&
    other.room == room &&
    other.status == status &&
    other.target == target &&
    other.taskRunId == taskRunId &&
    other.taskWorkflowId == taskWorkflowId &&
    other.terminal == terminal &&
    other.title == title;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (account == null ? 0 : account!.hashCode) +
    (actor == null ? 0 : actor!.hashCode) +
    (agent == null ? 0 : agent!.hashCode) +
    (cwd == null ? 0 : cwd!.hashCode) +
    (host == null ? 0 : host!.hashCode) +
    (parentSessionId == null ? 0 : parentSessionId!.hashCode) +
    (project == null ? 0 : project!.hashCode) +
    (provider == null ? 0 : provider!.hashCode) +
    (published == null ? 0 : published!.hashCode) +
    (repo == null ? 0 : repo!.hashCode) +
    (room == null ? 0 : room!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (target == null ? 0 : target!.hashCode) +
    (taskRunId == null ? 0 : taskRunId!.hashCode) +
    (taskWorkflowId == null ? 0 : taskWorkflowId!.hashCode) +
    (terminal == null ? 0 : terminal!.hashCode) +
    (title == null ? 0 : title!.hashCode);

  @override
  String toString() => 'RegisterReq[account=$account, actor=$actor, agent=$agent, cwd=$cwd, host=$host, parentSessionId=$parentSessionId, project=$project, provider=$provider, published=$published, repo=$repo, room=$room, status=$status, target=$target, taskRunId=$taskRunId, taskWorkflowId=$taskWorkflowId, terminal=$terminal, title=$title]';

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
    if (this.cwd != null) {
      json[r'cwd'] = this.cwd;
    } else {
      json[r'cwd'] = null;
    }
    if (this.host != null) {
      json[r'host'] = this.host;
    } else {
      json[r'host'] = null;
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
    if (this.room != null) {
      json[r'room'] = this.room;
    } else {
      json[r'room'] = null;
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
    return json;
  }

  /// Returns a new [RegisterReq] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RegisterReq? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RegisterReq[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RegisterReq[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RegisterReq(
        account: mapValueOfType<String>(json, r'account'),
        actor: mapValueOfType<String>(json, r'actor'),
        agent: mapValueOfType<String>(json, r'agent'),
        cwd: mapValueOfType<String>(json, r'cwd'),
        host: mapValueOfType<String>(json, r'host'),
        parentSessionId: mapValueOfType<String>(json, r'parentSessionId'),
        project: mapValueOfType<String>(json, r'project'),
        provider: mapValueOfType<String>(json, r'provider'),
        published: mapValueOfType<bool>(json, r'published'),
        repo: mapValueOfType<String>(json, r'repo'),
        room: mapValueOfType<String>(json, r'room'),
        status: mapValueOfType<String>(json, r'status'),
        target: mapValueOfType<String>(json, r'target'),
        taskRunId: mapValueOfType<String>(json, r'taskRunId'),
        taskWorkflowId: mapValueOfType<String>(json, r'taskWorkflowId'),
        terminal: mapValueOfType<String>(json, r'terminal'),
        title: mapValueOfType<String>(json, r'title'),
      );
    }
    return null;
  }

  static List<RegisterReq> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RegisterReq>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RegisterReq.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RegisterReq> mapFromJson(dynamic json) {
    final map = <String, RegisterReq>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RegisterReq.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RegisterReq-objects as value to a dart map
  static Map<String, List<RegisterReq>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RegisterReq>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RegisterReq.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

