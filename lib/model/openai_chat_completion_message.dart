//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class OpenaiChatCompletionMessage {
  /// Returns a new [OpenaiChatCompletionMessage] instance.
  OpenaiChatCompletionMessage({
    this.multiContent = const [],
    this.content,
    this.functionCall,
    this.name,
    this.reasoningContent,
    this.refusal,
    this.role,
    this.toolCallId,
    this.toolCalls = const [],
  });
  List<OpenaiChatMessagePart> multiContent;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? content;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  OpenaiFunctionCall? functionCall;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? reasoningContent;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? refusal;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? role;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? toolCallId;

  List<OpenaiToolCall> toolCalls;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OpenaiChatCompletionMessage &&
    _deepEquality.equals(other.multiContent, multiContent) &&
    other.content == content &&
    other.functionCall == functionCall &&
    other.name == name &&
    other.reasoningContent == reasoningContent &&
    other.refusal == refusal &&
    other.role == role &&
    other.toolCallId == toolCallId &&
    _deepEquality.equals(other.toolCalls, toolCalls);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (multiContent.hashCode) +
    (content == null ? 0 : content!.hashCode) +
    (functionCall == null ? 0 : functionCall!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (reasoningContent == null ? 0 : reasoningContent!.hashCode) +
    (refusal == null ? 0 : refusal!.hashCode) +
    (role == null ? 0 : role!.hashCode) +
    (toolCallId == null ? 0 : toolCallId!.hashCode) +
    (toolCalls.hashCode);

  @override
  String toString() => 'OpenaiChatCompletionMessage[multiContent=$multiContent, content=$content, functionCall=$functionCall, name=$name, reasoningContent=$reasoningContent, refusal=$refusal, role=$role, toolCallId=$toolCallId, toolCalls=$toolCalls]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'MultiContent'] = this.multiContent;
    if (this.content != null) {
      json[r'content'] = this.content;
    } else {
      json[r'content'] = null;
    }
    if (this.functionCall != null) {
      json[r'function_call'] = this.functionCall;
    } else {
      json[r'function_call'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.reasoningContent != null) {
      json[r'reasoning_content'] = this.reasoningContent;
    } else {
      json[r'reasoning_content'] = null;
    }
    if (this.refusal != null) {
      json[r'refusal'] = this.refusal;
    } else {
      json[r'refusal'] = null;
    }
    if (this.role != null) {
      json[r'role'] = this.role;
    } else {
      json[r'role'] = null;
    }
    if (this.toolCallId != null) {
      json[r'tool_call_id'] = this.toolCallId;
    } else {
      json[r'tool_call_id'] = null;
    }
      json[r'tool_calls'] = this.toolCalls;
    return json;
  }

  /// Returns a new [OpenaiChatCompletionMessage] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OpenaiChatCompletionMessage? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "OpenaiChatCompletionMessage[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "OpenaiChatCompletionMessage[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return OpenaiChatCompletionMessage(
        multiContent: OpenaiChatMessagePart.listFromJson(json[r'MultiContent']),
        content: mapValueOfType<String>(json, r'content'),
        functionCall: OpenaiFunctionCall.fromJson(json[r'function_call']),
        name: mapValueOfType<String>(json, r'name'),
        reasoningContent: mapValueOfType<String>(json, r'reasoning_content'),
        refusal: mapValueOfType<String>(json, r'refusal'),
        role: mapValueOfType<String>(json, r'role'),
        toolCallId: mapValueOfType<String>(json, r'tool_call_id'),
        toolCalls: OpenaiToolCall.listFromJson(json[r'tool_calls']),
      );
    }
    return null;
  }

  static List<OpenaiChatCompletionMessage> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OpenaiChatCompletionMessage>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OpenaiChatCompletionMessage.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OpenaiChatCompletionMessage> mapFromJson(dynamic json) {
    final map = <String, OpenaiChatCompletionMessage>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OpenaiChatCompletionMessage.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OpenaiChatCompletionMessage-objects as value to a dart map
  static Map<String, List<OpenaiChatCompletionMessage>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<OpenaiChatCompletionMessage>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = OpenaiChatCompletionMessage.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

