//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class AgentDetail {
  /// Returns a new [AgentDetail] instance.
  AgentDetail({
    this.avatar,
    this.computeRef,
    this.createdAt,
    this.description,
    this.emoji,
    this.executionMode,
    this.id,
    this.instructions,
    this.model,
    this.name,
    this.recentRuns = const [],
    this.runs,
    this.schedule,
    this.serviceAccountId,
    this.status,
    this.tools = const [],
    this.updatedAt,
  });
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? avatar;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? computeRef;

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
  String? description;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? emoji;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? executionMode;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// Instructions is the agent's system prompt, verbatim, up to 32 KiB. It is the one field the list read withholds, because it is the agent's whole behaviour and a page of them would be a page of prompts.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? instructions;

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
  String? name;

  /// RecentRuns is the agent's 20 most recent executions, newest first. It is a window on the history, not the history: the count beside it is `runs`.
  List<AgentRunView> recentRuns;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? runs;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? schedule;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? serviceAccountId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  List<String> tools;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AgentDetail &&
    other.avatar == avatar &&
    other.computeRef == computeRef &&
    other.createdAt == createdAt &&
    other.description == description &&
    other.emoji == emoji &&
    other.executionMode == executionMode &&
    other.id == id &&
    other.instructions == instructions &&
    other.model == model &&
    other.name == name &&
    _deepEquality.equals(other.recentRuns, recentRuns) &&
    other.runs == runs &&
    other.schedule == schedule &&
    other.serviceAccountId == serviceAccountId &&
    other.status == status &&
    _deepEquality.equals(other.tools, tools) &&
    other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (avatar == null ? 0 : avatar!.hashCode) +
    (computeRef == null ? 0 : computeRef!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (emoji == null ? 0 : emoji!.hashCode) +
    (executionMode == null ? 0 : executionMode!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (instructions == null ? 0 : instructions!.hashCode) +
    (model == null ? 0 : model!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (recentRuns.hashCode) +
    (runs == null ? 0 : runs!.hashCode) +
    (schedule == null ? 0 : schedule!.hashCode) +
    (serviceAccountId == null ? 0 : serviceAccountId!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (tools.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode);

  @override
  String toString() => 'AgentDetail[avatar=$avatar, computeRef=$computeRef, createdAt=$createdAt, description=$description, emoji=$emoji, executionMode=$executionMode, id=$id, instructions=$instructions, model=$model, name=$name, recentRuns=$recentRuns, runs=$runs, schedule=$schedule, serviceAccountId=$serviceAccountId, status=$status, tools=$tools, updatedAt=$updatedAt]';

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
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
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
      json[r'recentRuns'] = this.recentRuns;
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

  /// Returns a new [AgentDetail] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AgentDetail? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AgentDetail[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AgentDetail[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AgentDetail(
        avatar: mapValueOfType<String>(json, r'avatar'),
        computeRef: mapValueOfType<String>(json, r'computeRef'),
        createdAt: mapValueOfType<String>(json, r'createdAt'),
        description: mapValueOfType<String>(json, r'description'),
        emoji: mapValueOfType<String>(json, r'emoji'),
        executionMode: mapValueOfType<String>(json, r'executionMode'),
        id: mapValueOfType<String>(json, r'id'),
        instructions: mapValueOfType<String>(json, r'instructions'),
        model: mapValueOfType<String>(json, r'model'),
        name: mapValueOfType<String>(json, r'name'),
        recentRuns: AgentRunView.listFromJson(json[r'recentRuns']),
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

  static List<AgentDetail> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AgentDetail>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AgentDetail.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AgentDetail> mapFromJson(dynamic json) {
    final map = <String, AgentDetail>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AgentDetail.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AgentDetail-objects as value to a dart map
  static Map<String, List<AgentDetail>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AgentDetail>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AgentDetail.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

