//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class CodingStartIn {
  /// Returns a new [CodingStartIn] instance.
  CodingStartIn({
    this.after,
    this.agentRef,
    this.base_,
    this.desktop,
    this.project,
    this.prompt,
    this.replyChannel,
    this.replyThread,
    this.repo,
    this.targetId,
    this.timeoutSeconds,
    this.tool,
  });

  /// After names a previous run's session, and starts this one from where that one stopped instead of from the repository's default. It is how a follow-up instruction — \"now add tests for it\" — builds on work already done rather than beginning again on a fresh clone.  It sets the base and nothing else, so this run still writes its OWN branch. One run, one branch: a run that wrote back onto an earlier run's branch would break the rule the forge's ref policy is built on, and would leave two turns of work with one name to review.  A caller who already knows the branch may pass Base directly; this exists because the branch is derived from a session id and nobody should have to know how. Base wins if both are given.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? after;

  /// AgentRef names a configured agent to run as, which is how an org pins a harness, a model and a prompt to a name. Empty runs the default agent.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? agentRef;

  /// Base is the branch to start from. Empty takes the repository's default. The run never writes here — it writes the agent branch it answers with.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? base_;

  /// Desktop asks for a run with a SCREEN — an image carrying an X server — for a task that has to drive a browser or another windowed program. False, the default, is a headless checkout, which is what writing code needs.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? desktop;

  /// Project scopes the run to one board's work when the org keeps more than one. Empty is the org's default.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? project;

  /// Prompt is the task, in the words you would use with a colleague who has the checkout open. It is the whole instruction: there is no second field for context, and a prompt that names files and the outcome it wants gets a run that does not have to guess either.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? prompt;

  /// ReplyChannel / ReplyThread are WHERE THE RUN NARRATES ITSELF, when the door that started it has somewhere for it to talk. Empty means nobody is listening and the run simply does not narrate — which is the app door's case, because /v1/coding hands back a session id and the session stream is a better progress feed than any message could be.  It is an ADDRESS and not a token: the engine says \"put this text there\", and the process that owns the workspace's bot credential is the one that actually posts. So a run reports into a Slack thread without the engine ever holding the token that could post anywhere else in that workspace.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? replyChannel;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? replyThread;

  /// Repo is what to work on, as `owner/name` in the caller's own org. The engine resolves the clone URL and the push credential from the org itself, so this says WHICH repository and never how to reach it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? repo;

  /// TargetID routes the run to a registered machine the org has claimed instead of to a sandbox in our cluster. Empty runs it here, which is the usual case.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? targetId;

  /// TimeoutSeconds bounds the whole run. Unset takes the default budget; a run that hits the bound is stopped and reports what it had done by then.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? timeoutSeconds;

  /// Tool is which harness runs the prompt — dev | claude | codex | python | node — and Desktop is whether the run needs a screen. Both are empty by default, which is `dev` with no screen, and that default is what every caller gets until it says otherwise.  They are two fields because they are two questions. The harness decides what argv starts; the screen decides which image carries an X server. A caller may want claude WITH a browser it can see, and a single enum would have made that combination unsayable.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? tool;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CodingStartIn &&
    other.after == after &&
    other.agentRef == agentRef &&
    other.base_ == base_ &&
    other.desktop == desktop &&
    other.project == project &&
    other.prompt == prompt &&
    other.replyChannel == replyChannel &&
    other.replyThread == replyThread &&
    other.repo == repo &&
    other.targetId == targetId &&
    other.timeoutSeconds == timeoutSeconds &&
    other.tool == tool;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (after == null ? 0 : after!.hashCode) +
    (agentRef == null ? 0 : agentRef!.hashCode) +
    (base_ == null ? 0 : base_!.hashCode) +
    (desktop == null ? 0 : desktop!.hashCode) +
    (project == null ? 0 : project!.hashCode) +
    (prompt == null ? 0 : prompt!.hashCode) +
    (replyChannel == null ? 0 : replyChannel!.hashCode) +
    (replyThread == null ? 0 : replyThread!.hashCode) +
    (repo == null ? 0 : repo!.hashCode) +
    (targetId == null ? 0 : targetId!.hashCode) +
    (timeoutSeconds == null ? 0 : timeoutSeconds!.hashCode) +
    (tool == null ? 0 : tool!.hashCode);

  @override
  String toString() => 'CodingStartIn[after=$after, agentRef=$agentRef, base_=$base_, desktop=$desktop, project=$project, prompt=$prompt, replyChannel=$replyChannel, replyThread=$replyThread, repo=$repo, targetId=$targetId, timeoutSeconds=$timeoutSeconds, tool=$tool]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.after != null) {
      json[r'after'] = this.after;
    } else {
      json[r'after'] = null;
    }
    if (this.agentRef != null) {
      json[r'agentRef'] = this.agentRef;
    } else {
      json[r'agentRef'] = null;
    }
    if (this.base_ != null) {
      json[r'base'] = this.base_;
    } else {
      json[r'base'] = null;
    }
    if (this.desktop != null) {
      json[r'desktop'] = this.desktop;
    } else {
      json[r'desktop'] = null;
    }
    if (this.project != null) {
      json[r'project'] = this.project;
    } else {
      json[r'project'] = null;
    }
    if (this.prompt != null) {
      json[r'prompt'] = this.prompt;
    } else {
      json[r'prompt'] = null;
    }
    if (this.replyChannel != null) {
      json[r'replyChannel'] = this.replyChannel;
    } else {
      json[r'replyChannel'] = null;
    }
    if (this.replyThread != null) {
      json[r'replyThread'] = this.replyThread;
    } else {
      json[r'replyThread'] = null;
    }
    if (this.repo != null) {
      json[r'repo'] = this.repo;
    } else {
      json[r'repo'] = null;
    }
    if (this.targetId != null) {
      json[r'targetId'] = this.targetId;
    } else {
      json[r'targetId'] = null;
    }
    if (this.timeoutSeconds != null) {
      json[r'timeoutSeconds'] = this.timeoutSeconds;
    } else {
      json[r'timeoutSeconds'] = null;
    }
    if (this.tool != null) {
      json[r'tool'] = this.tool;
    } else {
      json[r'tool'] = null;
    }
    return json;
  }

  /// Returns a new [CodingStartIn] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CodingStartIn? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CodingStartIn[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CodingStartIn[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CodingStartIn(
        after: mapValueOfType<String>(json, r'after'),
        agentRef: mapValueOfType<String>(json, r'agentRef'),
        base_: mapValueOfType<String>(json, r'base'),
        desktop: mapValueOfType<bool>(json, r'desktop'),
        project: mapValueOfType<String>(json, r'project'),
        prompt: mapValueOfType<String>(json, r'prompt'),
        replyChannel: mapValueOfType<String>(json, r'replyChannel'),
        replyThread: mapValueOfType<String>(json, r'replyThread'),
        repo: mapValueOfType<String>(json, r'repo'),
        targetId: mapValueOfType<String>(json, r'targetId'),
        timeoutSeconds: mapValueOfType<int>(json, r'timeoutSeconds'),
        tool: mapValueOfType<String>(json, r'tool'),
      );
    }
    return null;
  }

  static List<CodingStartIn> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CodingStartIn>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CodingStartIn.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CodingStartIn> mapFromJson(dynamic json) {
    final map = <String, CodingStartIn>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CodingStartIn.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CodingStartIn-objects as value to a dart map
  static Map<String, List<CodingStartIn>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CodingStartIn>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CodingStartIn.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

