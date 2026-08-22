//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class UpdateAgentIn {
  /// Returns a new [UpdateAgentIn] instance.
  UpdateAgentIn({
    this.computeRef,
    this.description,
    this.executionMode,
    this.instructions,
    this.model,
    this.ref,
    this.schedule,
    this.serviceAccountId,
    this.tools = const [],
  });
  /// ComputeRef re-binds (or, with \"\", unbinds) the visor machine. Opaque here.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? computeRef;

  /// Description replaces the line other agents read in the tool catalogue.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  /// ExecutionMode switches between one-shot and long-running. The RESULTING mode+schedule are validated together, so switching to long-running without a stored or supplied cron is refused rather than accepted into an agent the scheduler would skip forever. A switch INTO long-running counts against the per-org cap and can be a 409.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? executionMode;

  /// Instructions replaces the system prompt whole, up to 32 KiB. There is no append: a prompt is one text, and sending \"\" clears it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? instructions;

  /// Model re-points the agent at another model, checked against the gateway's served catalogue exactly as create checks it. Empty STRING is refused — say nothing to keep the current one. Past runs keep the model that served them.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? model;

  /// Ref is the agent to update — its public id or org-unique name, from the path.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? ref;

  /// Schedule replaces the cron. It is validated against the mode this update leaves behind, and dropped if that mode is one-shot.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? schedule;

  /// ServiceAccountID re-points (or, with \"\", clears) the IAM service account a scheduled run is billed as. Clearing it puts that spend back on the org.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? serviceAccountId;

  /// Tools replaces the whole allow-list, it does not add to it. Sending [] takes every tool away, which is the only way to say that.
  List<String> tools;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UpdateAgentIn &&
    other.computeRef == computeRef &&
    other.description == description &&
    other.executionMode == executionMode &&
    other.instructions == instructions &&
    other.model == model &&
    other.ref == ref &&
    other.schedule == schedule &&
    other.serviceAccountId == serviceAccountId &&
    _deepEquality.equals(other.tools, tools);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (computeRef == null ? 0 : computeRef!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (executionMode == null ? 0 : executionMode!.hashCode) +
    (instructions == null ? 0 : instructions!.hashCode) +
    (model == null ? 0 : model!.hashCode) +
    (ref == null ? 0 : ref!.hashCode) +
    (schedule == null ? 0 : schedule!.hashCode) +
    (serviceAccountId == null ? 0 : serviceAccountId!.hashCode) +
    (tools.hashCode);

  @override
  String toString() => 'UpdateAgentIn[computeRef=$computeRef, description=$description, executionMode=$executionMode, instructions=$instructions, model=$model, ref=$ref, schedule=$schedule, serviceAccountId=$serviceAccountId, tools=$tools]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
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
    if (this.ref != null) {
      json[r'ref'] = this.ref;
    } else {
      json[r'ref'] = null;
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

  /// Returns a new [UpdateAgentIn] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UpdateAgentIn? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UpdateAgentIn[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UpdateAgentIn[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UpdateAgentIn(
        computeRef: mapValueOfType<String>(json, r'computeRef'),
        description: mapValueOfType<String>(json, r'description'),
        executionMode: mapValueOfType<String>(json, r'executionMode'),
        instructions: mapValueOfType<String>(json, r'instructions'),
        model: mapValueOfType<String>(json, r'model'),
        ref: mapValueOfType<String>(json, r'ref'),
        schedule: mapValueOfType<String>(json, r'schedule'),
        serviceAccountId: mapValueOfType<String>(json, r'serviceAccountId'),
        tools: json[r'tools'] is Iterable
            ? (json[r'tools'] as Iterable).cast<String>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<UpdateAgentIn> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UpdateAgentIn>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UpdateAgentIn.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UpdateAgentIn> mapFromJson(dynamic json) {
    final map = <String, UpdateAgentIn>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UpdateAgentIn.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UpdateAgentIn-objects as value to a dart map
  static Map<String, List<UpdateAgentIn>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UpdateAgentIn>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UpdateAgentIn.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

