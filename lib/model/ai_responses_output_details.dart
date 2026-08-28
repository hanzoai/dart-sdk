//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class AiResponsesOutputDetails {
  /// Returns a new [AiResponsesOutputDetails] instance.
  AiResponsesOutputDetails({
    this.reasoningTokens,
  });
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? reasoningTokens;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AiResponsesOutputDetails &&
    other.reasoningTokens == reasoningTokens;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (reasoningTokens == null ? 0 : reasoningTokens!.hashCode);

  @override
  String toString() => 'AiResponsesOutputDetails[reasoningTokens=$reasoningTokens]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.reasoningTokens != null) {
      json[r'reasoning_tokens'] = this.reasoningTokens;
    } else {
      json[r'reasoning_tokens'] = null;
    }
    return json;
  }

  /// Returns a new [AiResponsesOutputDetails] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AiResponsesOutputDetails? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AiResponsesOutputDetails[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AiResponsesOutputDetails[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AiResponsesOutputDetails(
        reasoningTokens: mapValueOfType<int>(json, r'reasoning_tokens'),
      );
    }
    return null;
  }

  static List<AiResponsesOutputDetails> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AiResponsesOutputDetails>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AiResponsesOutputDetails.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AiResponsesOutputDetails> mapFromJson(dynamic json) {
    final map = <String, AiResponsesOutputDetails>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AiResponsesOutputDetails.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AiResponsesOutputDetails-objects as value to a dart map
  static Map<String, List<AiResponsesOutputDetails>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AiResponsesOutputDetails>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AiResponsesOutputDetails.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

