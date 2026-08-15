//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class AgentRunView {
  /// Returns a new [AgentRunView] instance.
  AgentRunView({
    this.actor,
    this.agent,
    this.completionTokens,
    this.createdAt,
    this.durationMs,
    this.error,
    this.id,
    this.input,
    this.model,
    this.output,
    this.promptTokens,
    this.status,
    this.toolCalls,
    this.traceId,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? actor;

  /// What an operator needs to answer \"what ran, for whom, and what did it do\" — and, through traceId, to leave this record for the waterfall of the very same run rather than a search that hopefully lands near it.  Agent is on the row because the org-wide feed lists runs across agents, and a run that cannot name its agent is an orphan in exactly the view built to make sense of many of them. Every field is omitempty: a run recorded before these columns existed reports absence rather than a zero it never measured.
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
  int? completionTokens;

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
  int? durationMs;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? error;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? input;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? model;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? output;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? promptTokens;

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
  int? toolCalls;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? traceId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AgentRunView &&
    other.actor == actor &&
    other.agent == agent &&
    other.completionTokens == completionTokens &&
    other.createdAt == createdAt &&
    other.durationMs == durationMs &&
    other.error == error &&
    other.id == id &&
    other.input == input &&
    other.model == model &&
    other.output == output &&
    other.promptTokens == promptTokens &&
    other.status == status &&
    other.toolCalls == toolCalls &&
    other.traceId == traceId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (actor == null ? 0 : actor!.hashCode) +
    (agent == null ? 0 : agent!.hashCode) +
    (completionTokens == null ? 0 : completionTokens!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (durationMs == null ? 0 : durationMs!.hashCode) +
    (error == null ? 0 : error!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (input == null ? 0 : input!.hashCode) +
    (model == null ? 0 : model!.hashCode) +
    (output == null ? 0 : output!.hashCode) +
    (promptTokens == null ? 0 : promptTokens!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (toolCalls == null ? 0 : toolCalls!.hashCode) +
    (traceId == null ? 0 : traceId!.hashCode);

  @override
  String toString() => 'AgentRunView[actor=$actor, agent=$agent, completionTokens=$completionTokens, createdAt=$createdAt, durationMs=$durationMs, error=$error, id=$id, input=$input, model=$model, output=$output, promptTokens=$promptTokens, status=$status, toolCalls=$toolCalls, traceId=$traceId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
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
    if (this.completionTokens != null) {
      json[r'completionTokens'] = this.completionTokens;
    } else {
      json[r'completionTokens'] = null;
    }
    if (this.createdAt != null) {
      json[r'createdAt'] = this.createdAt;
    } else {
      json[r'createdAt'] = null;
    }
    if (this.durationMs != null) {
      json[r'durationMs'] = this.durationMs;
    } else {
      json[r'durationMs'] = null;
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
    if (this.input != null) {
      json[r'input'] = this.input;
    } else {
      json[r'input'] = null;
    }
    if (this.model != null) {
      json[r'model'] = this.model;
    } else {
      json[r'model'] = null;
    }
    if (this.output != null) {
      json[r'output'] = this.output;
    } else {
      json[r'output'] = null;
    }
    if (this.promptTokens != null) {
      json[r'promptTokens'] = this.promptTokens;
    } else {
      json[r'promptTokens'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.toolCalls != null) {
      json[r'toolCalls'] = this.toolCalls;
    } else {
      json[r'toolCalls'] = null;
    }
    if (this.traceId != null) {
      json[r'traceId'] = this.traceId;
    } else {
      json[r'traceId'] = null;
    }
    return json;
  }

  /// Returns a new [AgentRunView] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AgentRunView? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AgentRunView[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AgentRunView[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AgentRunView(
        actor: mapValueOfType<String>(json, r'actor'),
        agent: mapValueOfType<String>(json, r'agent'),
        completionTokens: mapValueOfType<int>(json, r'completionTokens'),
        createdAt: mapValueOfType<String>(json, r'createdAt'),
        durationMs: mapValueOfType<int>(json, r'durationMs'),
        error: mapValueOfType<String>(json, r'error'),
        id: mapValueOfType<String>(json, r'id'),
        input: mapValueOfType<String>(json, r'input'),
        model: mapValueOfType<String>(json, r'model'),
        output: mapValueOfType<String>(json, r'output'),
        promptTokens: mapValueOfType<int>(json, r'promptTokens'),
        status: mapValueOfType<String>(json, r'status'),
        toolCalls: mapValueOfType<int>(json, r'toolCalls'),
        traceId: mapValueOfType<String>(json, r'traceId'),
      );
    }
    return null;
  }

  static List<AgentRunView> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AgentRunView>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AgentRunView.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AgentRunView> mapFromJson(dynamic json) {
    final map = <String, AgentRunView>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AgentRunView.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AgentRunView-objects as value to a dart map
  static Map<String, List<AgentRunView>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AgentRunView>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AgentRunView.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

