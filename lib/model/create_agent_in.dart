//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class CreateAgentIn {
  /// Returns a new [CreateAgentIn] instance.
  CreateAgentIn({
    this.avatar,
    this.computeRef,
    this.description,
    this.emoji,
    this.executionMode,
    this.instructions,
    this.model,
    this.name,
    this.schedule,
    this.serviceAccountId,
    this.tools = const [],
  });
  /// Avatar and Emoji are how the agent APPEARS. An image wins when both are given — it is the thing somebody made — and both empty leaves the agent drawn as its initial. Validated by iam/pkg/schema, the same rule a person's avatar passes, so the 96 KiB bound and the accepted URL forms are stated once for every subject that has a face.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? avatar;

  /// ComputeRef optionally binds this bot to a visor machine. Opaque here, bounded at 256 characters, and not resolved — this package stores the reference and the binding's lifecycle belongs elsewhere.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? computeRef;

  /// Description is the one line published as the description of the `agent_<name>` tool, which is how another agent decides whether to call this one. Optional, and worth writing for exactly that reason.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  /// Emoji is the single glyph shown when there is no image. An image WINS when both are given — it is the thing somebody made — and both empty leaves the agent drawn as its initial.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? emoji;

  /// ExecutionMode is one-shot or long-running. Empty takes one-shot, which runs only when something POSTs to it. long-running additionally requires Schedule, and counts against a per-org cap that answers 409 when it is full.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? executionMode;

  /// Instructions is the system prompt, up to 32 KiB, stored verbatim. This is what the model reads; Description is what other CALLERS read.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? instructions;

  /// Model names the model to run on. Omit it to take the deployment's configured default; name one and it is checked against the gateway's served catalogue here, so a model this deployment cannot serve is refused now rather than at the first run. Stored under our own name for it, whatever spelling arrives.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? model;

  /// Name is the agent's org-unique handle and the only required field. It must match ^[A-Za-z0-9][A-Za-z0-9._-]{0,63}$, and a name already taken in this org is a 409 rather than an overwrite. It is permanent: no update route moves it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// Schedule is the 5-field cron a long-running agent fires on, parsed here so a bad expression is a 400 and not an agent that silently never runs. Required with long-running; DISCARDED for one-shot rather than stored unused.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? schedule;

  /// ServiceAccountID optionally names the IAM agent service account (<org>-<agent>) a scheduled run should be billed AS, so an autonomous run is attributable to a principal rather than only to the org. Same 256-character bound, also unresolved here.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? serviceAccountId;

  /// Tools are the tool names this agent may call. Omitted or empty grants NONE — that default is the agent's authority and is not widened anywhere. The single entry \"*\" means whatever the fleet's MCP server serves at the time of each run.
  List<String> tools;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateAgentIn &&
    other.avatar == avatar &&
    other.computeRef == computeRef &&
    other.description == description &&
    other.emoji == emoji &&
    other.executionMode == executionMode &&
    other.instructions == instructions &&
    other.model == model &&
    other.name == name &&
    other.schedule == schedule &&
    other.serviceAccountId == serviceAccountId &&
    _deepEquality.equals(other.tools, tools);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (avatar == null ? 0 : avatar!.hashCode) +
    (computeRef == null ? 0 : computeRef!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (emoji == null ? 0 : emoji!.hashCode) +
    (executionMode == null ? 0 : executionMode!.hashCode) +
    (instructions == null ? 0 : instructions!.hashCode) +
    (model == null ? 0 : model!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (schedule == null ? 0 : schedule!.hashCode) +
    (serviceAccountId == null ? 0 : serviceAccountId!.hashCode) +
    (tools.hashCode);

  @override
  String toString() => 'CreateAgentIn[avatar=$avatar, computeRef=$computeRef, description=$description, emoji=$emoji, executionMode=$executionMode, instructions=$instructions, model=$model, name=$name, schedule=$schedule, serviceAccountId=$serviceAccountId, tools=$tools]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.avatar != null) {
      json[r'avatar'] = this.avatar;
    } else {
      json[r'avatar'] = null;
    }
    if (this.computeRef != null) {
      json[r'computeRef'] = this.computeRef;
    } else {
      json[r'computeRef'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.emoji != null) {
      json[r'emoji'] = this.emoji;
    } else {
      json[r'emoji'] = null;
    }
    if (this.executionMode != null) {
      json[r'executionMode'] = this.executionMode;
    } else {
      json[r'executionMode'] = null;
    }
    if (this.instructions != null) {
      json[r'instructions'] = this.instructions;
    } else {
      json[r'instructions'] = null;
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
      json[r'tools'] = this.tools;
    return json;
  }

  /// Returns a new [CreateAgentIn] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateAgentIn? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateAgentIn[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateAgentIn[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateAgentIn(
        avatar: mapValueOfType<String>(json, r'avatar'),
        computeRef: mapValueOfType<String>(json, r'computeRef'),
        description: mapValueOfType<String>(json, r'description'),
        emoji: mapValueOfType<String>(json, r'emoji'),
        executionMode: mapValueOfType<String>(json, r'executionMode'),
        instructions: mapValueOfType<String>(json, r'instructions'),
        model: mapValueOfType<String>(json, r'model'),
        name: mapValueOfType<String>(json, r'name'),
        schedule: mapValueOfType<String>(json, r'schedule'),
        serviceAccountId: mapValueOfType<String>(json, r'serviceAccountId'),
        tools: json[r'tools'] is Iterable
            ? (json[r'tools'] as Iterable).cast<String>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<CreateAgentIn> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateAgentIn>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateAgentIn.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateAgentIn> mapFromJson(dynamic json) {
    final map = <String, CreateAgentIn>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateAgentIn.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateAgentIn-objects as value to a dart map
  static Map<String, List<CreateAgentIn>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateAgentIn>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateAgentIn.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

