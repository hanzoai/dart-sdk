//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class AiResponsesUsage {
  /// Returns a new [AiResponsesUsage] instance.
  AiResponsesUsage({
    this.inputTokens,
    this.inputTokensDetails,
    this.outputTokens,
    this.outputTokensDetails,
    this.totalTokens,
  });
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? inputTokens;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  AiResponsesInputDetails? inputTokensDetails;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? outputTokens;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  AiResponsesOutputDetails? outputTokensDetails;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? totalTokens;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AiResponsesUsage &&
    other.inputTokens == inputTokens &&
    other.inputTokensDetails == inputTokensDetails &&
    other.outputTokens == outputTokens &&
    other.outputTokensDetails == outputTokensDetails &&
    other.totalTokens == totalTokens;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (inputTokens == null ? 0 : inputTokens!.hashCode) +
    (inputTokensDetails == null ? 0 : inputTokensDetails!.hashCode) +
    (outputTokens == null ? 0 : outputTokens!.hashCode) +
    (outputTokensDetails == null ? 0 : outputTokensDetails!.hashCode) +
    (totalTokens == null ? 0 : totalTokens!.hashCode);

  @override
  String toString() => 'AiResponsesUsage[inputTokens=$inputTokens, inputTokensDetails=$inputTokensDetails, outputTokens=$outputTokens, outputTokensDetails=$outputTokensDetails, totalTokens=$totalTokens]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.inputTokens != null) {
      json[r'input_tokens'] = this.inputTokens;
    } else {
      json[r'input_tokens'] = null;
    }
    if (this.inputTokensDetails != null) {
      json[r'input_tokens_details'] = this.inputTokensDetails;
    } else {
      json[r'input_tokens_details'] = null;
    }
    if (this.outputTokens != null) {
      json[r'output_tokens'] = this.outputTokens;
    } else {
      json[r'output_tokens'] = null;
    }
    if (this.outputTokensDetails != null) {
      json[r'output_tokens_details'] = this.outputTokensDetails;
    } else {
      json[r'output_tokens_details'] = null;
    }
    if (this.totalTokens != null) {
      json[r'total_tokens'] = this.totalTokens;
    } else {
      json[r'total_tokens'] = null;
    }
    return json;
  }

  /// Returns a new [AiResponsesUsage] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AiResponsesUsage? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AiResponsesUsage[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AiResponsesUsage[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AiResponsesUsage(
        inputTokens: mapValueOfType<int>(json, r'input_tokens'),
        inputTokensDetails: AiResponsesInputDetails.fromJson(json[r'input_tokens_details']),
        outputTokens: mapValueOfType<int>(json, r'output_tokens'),
        outputTokensDetails: AiResponsesOutputDetails.fromJson(json[r'output_tokens_details']),
        totalTokens: mapValueOfType<int>(json, r'total_tokens'),
      );
    }
    return null;
  }

  static List<AiResponsesUsage> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AiResponsesUsage>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AiResponsesUsage.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AiResponsesUsage> mapFromJson(dynamic json) {
    final map = <String, AiResponsesUsage>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AiResponsesUsage.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AiResponsesUsage-objects as value to a dart map
  static Map<String, List<AiResponsesUsage>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AiResponsesUsage>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AiResponsesUsage.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

