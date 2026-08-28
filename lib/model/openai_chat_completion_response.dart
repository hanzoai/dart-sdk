//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class OpenaiChatCompletionResponse {
  /// Returns a new [OpenaiChatCompletionResponse] instance.
  OpenaiChatCompletionResponse({
    this.choices = const [],
    this.created,
    this.id,
    this.model,
    this.object,
    this.promptFilterResults = const [],
    this.systemFingerprint,
    this.usage,
  });
  List<OpenaiChatCompletionChoice> choices;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? created;

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
  String? model;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? object;

  List<OpenaiPromptFilterResult> promptFilterResults;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? systemFingerprint;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  OpenaiUsage? usage;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OpenaiChatCompletionResponse &&
    _deepEquality.equals(other.choices, choices) &&
    other.created == created &&
    other.id == id &&
    other.model == model &&
    other.object == object &&
    _deepEquality.equals(other.promptFilterResults, promptFilterResults) &&
    other.systemFingerprint == systemFingerprint &&
    other.usage == usage;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (choices.hashCode) +
    (created == null ? 0 : created!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (model == null ? 0 : model!.hashCode) +
    (object == null ? 0 : object!.hashCode) +
    (promptFilterResults.hashCode) +
    (systemFingerprint == null ? 0 : systemFingerprint!.hashCode) +
    (usage == null ? 0 : usage!.hashCode);

  @override
  String toString() => 'OpenaiChatCompletionResponse[choices=$choices, created=$created, id=$id, model=$model, object=$object, promptFilterResults=$promptFilterResults, systemFingerprint=$systemFingerprint, usage=$usage]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'choices'] = this.choices;
    if (this.created != null) {
      json[r'created'] = this.created;
    } else {
      json[r'created'] = null;
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
    if (this.object != null) {
      json[r'object'] = this.object;
    } else {
      json[r'object'] = null;
    }
      json[r'prompt_filter_results'] = this.promptFilterResults;
    if (this.systemFingerprint != null) {
      json[r'system_fingerprint'] = this.systemFingerprint;
    } else {
      json[r'system_fingerprint'] = null;
    }
    if (this.usage != null) {
      json[r'usage'] = this.usage;
    } else {
      json[r'usage'] = null;
    }
    return json;
  }

  /// Returns a new [OpenaiChatCompletionResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OpenaiChatCompletionResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "OpenaiChatCompletionResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "OpenaiChatCompletionResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return OpenaiChatCompletionResponse(
        choices: OpenaiChatCompletionChoice.listFromJson(json[r'choices']),
        created: mapValueOfType<int>(json, r'created'),
        id: mapValueOfType<String>(json, r'id'),
        model: mapValueOfType<String>(json, r'model'),
        object: mapValueOfType<String>(json, r'object'),
        promptFilterResults: OpenaiPromptFilterResult.listFromJson(json[r'prompt_filter_results']),
        systemFingerprint: mapValueOfType<String>(json, r'system_fingerprint'),
        usage: OpenaiUsage.fromJson(json[r'usage']),
      );
    }
    return null;
  }

  static List<OpenaiChatCompletionResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OpenaiChatCompletionResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OpenaiChatCompletionResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OpenaiChatCompletionResponse> mapFromJson(dynamic json) {
    final map = <String, OpenaiChatCompletionResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OpenaiChatCompletionResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OpenaiChatCompletionResponse-objects as value to a dart map
  static Map<String, List<OpenaiChatCompletionResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<OpenaiChatCompletionResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = OpenaiChatCompletionResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

