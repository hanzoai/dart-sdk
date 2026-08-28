//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class OpenaiChatCompletionChoice {
  /// Returns a new [OpenaiChatCompletionChoice] instance.
  OpenaiChatCompletionChoice({
    this.contentFilterResults,
    this.finishReason,
    this.index,
    this.logprobs,
    this.message,
  });
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  OpenaiContentFilterResults? contentFilterResults;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? finishReason;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? index;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  OpenaiLogProbs? logprobs;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  OpenaiChatCompletionMessage? message;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OpenaiChatCompletionChoice &&
    other.contentFilterResults == contentFilterResults &&
    other.finishReason == finishReason &&
    other.index == index &&
    other.logprobs == logprobs &&
    other.message == message;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (contentFilterResults == null ? 0 : contentFilterResults!.hashCode) +
    (finishReason == null ? 0 : finishReason!.hashCode) +
    (index == null ? 0 : index!.hashCode) +
    (logprobs == null ? 0 : logprobs!.hashCode) +
    (message == null ? 0 : message!.hashCode);

  @override
  String toString() => 'OpenaiChatCompletionChoice[contentFilterResults=$contentFilterResults, finishReason=$finishReason, index=$index, logprobs=$logprobs, message=$message]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.contentFilterResults != null) {
      json[r'content_filter_results'] = this.contentFilterResults;
    } else {
      json[r'content_filter_results'] = null;
    }
    if (this.finishReason != null) {
      json[r'finish_reason'] = this.finishReason;
    } else {
      json[r'finish_reason'] = null;
    }
    if (this.index != null) {
      json[r'index'] = this.index;
    } else {
      json[r'index'] = null;
    }
    if (this.logprobs != null) {
      json[r'logprobs'] = this.logprobs;
    } else {
      json[r'logprobs'] = null;
    }
    if (this.message != null) {
      json[r'message'] = this.message;
    } else {
      json[r'message'] = null;
    }
    return json;
  }

  /// Returns a new [OpenaiChatCompletionChoice] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OpenaiChatCompletionChoice? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "OpenaiChatCompletionChoice[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "OpenaiChatCompletionChoice[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return OpenaiChatCompletionChoice(
        contentFilterResults: OpenaiContentFilterResults.fromJson(json[r'content_filter_results']),
        finishReason: mapValueOfType<String>(json, r'finish_reason'),
        index: mapValueOfType<int>(json, r'index'),
        logprobs: OpenaiLogProbs.fromJson(json[r'logprobs']),
        message: OpenaiChatCompletionMessage.fromJson(json[r'message']),
      );
    }
    return null;
  }

  static List<OpenaiChatCompletionChoice> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OpenaiChatCompletionChoice>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OpenaiChatCompletionChoice.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OpenaiChatCompletionChoice> mapFromJson(dynamic json) {
    final map = <String, OpenaiChatCompletionChoice>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OpenaiChatCompletionChoice.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OpenaiChatCompletionChoice-objects as value to a dart map
  static Map<String, List<OpenaiChatCompletionChoice>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<OpenaiChatCompletionChoice>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = OpenaiChatCompletionChoice.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

