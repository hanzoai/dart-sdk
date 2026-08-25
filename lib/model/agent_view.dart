//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class AgentView {
  /// Returns a new [AgentView] instance.
  AgentView({
    this.computeRef,
    this.createdAt,
    this.description,
    this.executionMode,
    this.id,
    this.model,
    this.name,
    this.runs,
    this.schedule,
    this.serviceAccountId,
    this.status,
    this.tools = const [],
    this.updatedAt,
  });
  /// ComputeRef is the visor machine this bot is bound to, opaque here: this package stores and echoes it, and the binding's lifecycle belongs elsewhere. Empty means unbound, which is what every one-shot agent is.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? computeRef;

  /// CreatedAt is when the agent was defined, RFC 3339 in UTC to the second.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? createdAt;

  /// Description is the one line another agent reads when deciding whether to call this one: the tool catalogue publishes it as the description of `agent_<name>`, falling back to \"agent <name>\" when it is empty. It is not part of the prompt — Instructions is — so writing the behaviour here reaches the caller and not the model.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  /// ExecutionMode is one-shot or long-running, and it decides who may start this agent. one-shot runs only when something POSTs to it; long-running is additionally invoked by the scheduler on Schedule, once a minute against the cron. An org's long-running agents are capped, so a switch INTO it can be refused with 409.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? executionMode;

  /// ID is the agent's stable handle, minted here as \"agent_\" + 32 hex characters of crypto/rand. A caller cannot choose it, and it never changes — unlike Name, which is the other way to address the same agent.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// Model is the Zen model this agent runs on, and it is always OUR name for it: writes normalize through cloud.ZenModel and the read normalizes again, so an upstream family name never leaves here even from a row written before that rule existed. A create that named none took the deployment's configured default, so this is where a caller learns which model it actually got.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? model;

  /// Name is the agent's org-unique handle, matching ^[A-Za-z0-9][A-Za-z0-9._-]{0,63}$. It addresses the agent everywhere ID does, it is what a run row records, and it is the suffix of the `agent_<name>` tool other agents call this one by. Set once at create; no update route moves it, because moving it would orphan that history.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// Runs is how many executions the org has recorded against this agent, counted at read time. The list and update reads count the WHOLE history; the detail read reports the size of the RecentRuns page it carries, which stops at 20 — so a detail row saying 20 means \"at least 20\", not \"exactly 20\".
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? runs;

  /// Schedule is the 5-field cron the scheduler fires a long-running agent on, evaluated once a minute. Required for long-running and DROPPED for one-shot — a one-shot agent's schedule is not stored, so absence here is the mode's answer rather than a value nobody set.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? schedule;

  /// ServiceAccountID is the IAM agent service account (<org>-<agent>) a scheduled run is billed AS. It is what makes an autonomous run attributable to a principal rather than only to the org; empty means the org itself wears the spend.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? serviceAccountId;

  /// Status is the agent's readiness, and today it is \"ready\" on every row: an agent is a definition rather than a provisioned thing, so nothing transitions it. Server-set at create; no route accepts it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  /// Tools are the tool names this agent may call, and the list IS the authority: an agent that declares none gets none. The single entry \"*\" means whatever the fleet's MCP server serves at the moment of the run, resolved per run rather than frozen here, which is how the default assistant reaches subsystems that shipped after it was defined. Empty array, never null.
  List<String> tools;

  /// UpdatedAt is the last time any field above was written, same format. It moves on an update to the DEFINITION and never on a run, so a busy agent nobody has edited keeps an old one.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AgentView &&
    other.computeRef == computeRef &&
    other.createdAt == createdAt &&
    other.description == description &&
    other.executionMode == executionMode &&
    other.id == id &&
    other.model == model &&
    other.name == name &&
    other.runs == runs &&
    other.schedule == schedule &&
    other.serviceAccountId == serviceAccountId &&
    other.status == status &&
    _deepEquality.equals(other.tools, tools) &&
    other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (computeRef == null ? 0 : computeRef!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (executionMode == null ? 0 : executionMode!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (model == null ? 0 : model!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (runs == null ? 0 : runs!.hashCode) +
    (schedule == null ? 0 : schedule!.hashCode) +
    (serviceAccountId == null ? 0 : serviceAccountId!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (tools.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode);

  @override
  String toString() => 'AgentView[computeRef=$computeRef, createdAt=$createdAt, description=$description, executionMode=$executionMode, id=$id, model=$model, name=$name, runs=$runs, schedule=$schedule, serviceAccountId=$serviceAccountId, status=$status, tools=$tools, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.computeRef != null) {
      json[r'computeRef'] = this.computeRef;
    } else {
      json[r'computeRef'] = null;
    }
    if (this.createdAt != null) {
      json[r'createdAt'] = this.createdAt;
    } else {
      json[r'createdAt'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.executionMode != null) {
      json[r'executionMode'] = this.executionMode;
    } else {
      json[r'executionMode'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.model != null) {
      json[r'model'] = this.model;
    } else {
      json[r'model'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.runs != null) {
      json[r'runs'] = this.runs;
    } else {
      json[r'runs'] = null;
    }
    if (this.schedule != null) {
      json[r'schedule'] = this.schedule;
    } else {
      json[r'schedule'] = null;
    }
    if (this.serviceAccountId != null) {
      json[r'serviceAccountId'] = this.serviceAccountId;
    } else {
      json[r'serviceAccountId'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
      json[r'tools'] = this.tools;
    if (this.updatedAt != null) {
      json[r'updatedAt'] = this.updatedAt;
    } else {
      json[r'updatedAt'] = null;
    }
    return json;
  }

  /// Returns a new [AgentView] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AgentView? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AgentView[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AgentView[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AgentView(
        computeRef: mapValueOfType<String>(json, r'computeRef'),
        createdAt: mapValueOfType<String>(json, r'createdAt'),
        description: mapValueOfType<String>(json, r'description'),
        executionMode: mapValueOfType<String>(json, r'executionMode'),
        id: mapValueOfType<String>(json, r'id'),
        model: mapValueOfType<String>(json, r'model'),
        name: mapValueOfType<String>(json, r'name'),
        runs: mapValueOfType<int>(json, r'runs'),
        schedule: mapValueOfType<String>(json, r'schedule'),
        serviceAccountId: mapValueOfType<String>(json, r'serviceAccountId'),
        status: mapValueOfType<String>(json, r'status'),
        tools: json[r'tools'] is Iterable
            ? (json[r'tools'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        updatedAt: mapValueOfType<String>(json, r'updatedAt'),
      );
    }
    return null;
  }

  static List<AgentView> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AgentView>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AgentView.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AgentView> mapFromJson(dynamic json) {
    final map = <String, AgentView>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AgentView.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AgentView-objects as value to a dart map
  static Map<String, List<AgentView>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AgentView>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AgentView.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

