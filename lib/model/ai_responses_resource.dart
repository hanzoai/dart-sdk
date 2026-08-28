//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class AiResponsesResource {
  /// Returns a new [AiResponsesResource] instance.
  AiResponsesResource({
    this.createdAt,
    this.error,
    this.id,
    this.incompleteDetails,
    this.instructions,
    this.maxOutputTokens,
    this.metadata = const {},
    this.model,
    this.object,
    this.output = const [],
    this.parallelToolCalls,
    this.previousResponseId,
    this.reasoning,
    this.status,
    this.store,
    this.temperature,
    this.text,
    this.toolChoice,
    this.tools = const [],
    this.topP,
    this.usage,
  });
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? createdAt;

  Object? error;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  Object? incompleteDetails;

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
  int? maxOutputTokens;

  Map<String, String> metadata;

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
  String? object;

  List<Object> output;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? parallelToolCalls;

  Object? previousResponseId;

  Object? reasoning;

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
  bool? store;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? temperature;

  Object? text;

  Object? toolChoice;

  List<AiResponsesTool> tools;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? topP;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  AiResponsesUsage? usage;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AiResponsesResource &&
    other.createdAt == createdAt &&
    other.error == error &&
    other.id == id &&
    other.incompleteDetails == incompleteDetails &&
    other.instructions == instructions &&
    other.maxOutputTokens == maxOutputTokens &&
    _deepEquality.equals(other.metadata, metadata) &&
    other.model == model &&
    other.object == object &&
    _deepEquality.equals(other.output, output) &&
    other.parallelToolCalls == parallelToolCalls &&
    other.previousResponseId == previousResponseId &&
    other.reasoning == reasoning &&
    other.status == status &&
    other.store == store &&
    other.temperature == temperature &&
    other.text == text &&
    other.toolChoice == toolChoice &&
    _deepEquality.equals(other.tools, tools) &&
    other.topP == topP &&
    other.usage == usage;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (error == null ? 0 : error!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (incompleteDetails == null ? 0 : incompleteDetails!.hashCode) +
    (instructions == null ? 0 : instructions!.hashCode) +
    (maxOutputTokens == null ? 0 : maxOutputTokens!.hashCode) +
    (metadata.hashCode) +
    (model == null ? 0 : model!.hashCode) +
    (object == null ? 0 : object!.hashCode) +
    (output.hashCode) +
    (parallelToolCalls == null ? 0 : parallelToolCalls!.hashCode) +
    (previousResponseId == null ? 0 : previousResponseId!.hashCode) +
    (reasoning == null ? 0 : reasoning!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (store == null ? 0 : store!.hashCode) +
    (temperature == null ? 0 : temperature!.hashCode) +
    (text == null ? 0 : text!.hashCode) +
    (toolChoice == null ? 0 : toolChoice!.hashCode) +
    (tools.hashCode) +
    (topP == null ? 0 : topP!.hashCode) +
    (usage == null ? 0 : usage!.hashCode);

  @override
  String toString() => 'AiResponsesResource[createdAt=$createdAt, error=$error, id=$id, incompleteDetails=$incompleteDetails, instructions=$instructions, maxOutputTokens=$maxOutputTokens, metadata=$metadata, model=$model, object=$object, output=$output, parallelToolCalls=$parallelToolCalls, previousResponseId=$previousResponseId, reasoning=$reasoning, status=$status, store=$store, temperature=$temperature, text=$text, toolChoice=$toolChoice, tools=$tools, topP=$topP, usage=$usage]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.createdAt != null) {
      json[r'created_at'] = this.createdAt;
    } else {
      json[r'created_at'] = null;
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
    if (this.incompleteDetails != null) {
      json[r'incomplete_details'] = this.incompleteDetails;
    } else {
      json[r'incomplete_details'] = null;
    }
    if (this.instructions != null) {
      json[r'instructions'] = this.instructions;
    } else {
      json[r'instructions'] = null;
    }
    if (this.maxOutputTokens != null) {
      json[r'max_output_tokens'] = this.maxOutputTokens;
    } else {
      json[r'max_output_tokens'] = null;
    }
      json[r'metadata'] = this.metadata;
    if (this.model != null) {
      json[r'model'] = this.model;
    } else {
      json[r'model'] = null;
    }
    if (this.object != null) {
      json[r'object'] = this.object;
    } else {
      json[r'object'] = null;
    }
      json[r'output'] = this.output;
    if (this.parallelToolCalls != null) {
      json[r'parallel_tool_calls'] = this.parallelToolCalls;
    } else {
      json[r'parallel_tool_calls'] = null;
    }
    if (this.previousResponseId != null) {
      json[r'previous_response_id'] = this.previousResponseId;
    } else {
      json[r'previous_response_id'] = null;
    }
    if (this.reasoning != null) {
      json[r'reasoning'] = this.reasoning;
    } else {
      json[r'reasoning'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.store != null) {
      json[r'store'] = this.store;
    } else {
      json[r'store'] = null;
    }
    if (this.temperature != null) {
      json[r'temperature'] = this.temperature;
    } else {
      json[r'temperature'] = null;
    }
    if (this.text != null) {
      json[r'text'] = this.text;
    } else {
      json[r'text'] = null;
    }
    if (this.toolChoice != null) {
      json[r'tool_choice'] = this.toolChoice;
    } else {
      json[r'tool_choice'] = null;
    }
      json[r'tools'] = this.tools;
    if (this.topP != null) {
      json[r'top_p'] = this.topP;
    } else {
      json[r'top_p'] = null;
    }
    if (this.usage != null) {
      json[r'usage'] = this.usage;
    } else {
      json[r'usage'] = null;
    }
    return json;
  }

  /// Returns a new [AiResponsesResource] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AiResponsesResource? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AiResponsesResource[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AiResponsesResource[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AiResponsesResource(
        createdAt: mapValueOfType<int>(json, r'created_at'),
        error: mapValueOfType<Object>(json, r'error'),
        id: mapValueOfType<String>(json, r'id'),
        incompleteDetails: mapValueOfType<Object>(json, r'incomplete_details'),
        instructions: mapValueOfType<String>(json, r'instructions'),
        maxOutputTokens: mapValueOfType<int>(json, r'max_output_tokens'),
        metadata: mapCastOfType<String, String>(json, r'metadata') ?? const {},
        model: mapValueOfType<String>(json, r'model'),
        object: mapValueOfType<String>(json, r'object'),
        output: json[r'output'] is Iterable
            ? (json[r'output'] as Iterable).cast<Object>().toList(growable: false)
            : const [],
        parallelToolCalls: mapValueOfType<bool>(json, r'parallel_tool_calls'),
        previousResponseId: mapValueOfType<Object>(json, r'previous_response_id'),
        reasoning: mapValueOfType<Object>(json, r'reasoning'),
        status: mapValueOfType<String>(json, r'status'),
        store: mapValueOfType<bool>(json, r'store'),
        temperature: num.parse('${json[r'temperature']}'),
        text: mapValueOfType<Object>(json, r'text'),
        toolChoice: mapValueOfType<Object>(json, r'tool_choice'),
        tools: AiResponsesTool.listFromJson(json[r'tools']),
        topP: num.parse('${json[r'top_p']}'),
        usage: AiResponsesUsage.fromJson(json[r'usage']),
      );
    }
    return null;
  }

  static List<AiResponsesResource> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AiResponsesResource>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AiResponsesResource.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AiResponsesResource> mapFromJson(dynamic json) {
    final map = <String, AiResponsesResource>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AiResponsesResource.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AiResponsesResource-objects as value to a dart map
  static Map<String, List<AiResponsesResource>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AiResponsesResource>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AiResponsesResource.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

