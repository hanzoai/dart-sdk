//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class AiResponsesInputDetails {
  /// Returns a new [AiResponsesInputDetails] instance.
  AiResponsesInputDetails({
    this.cachedTokens,
  });
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? cachedTokens;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AiResponsesInputDetails &&
    other.cachedTokens == cachedTokens;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (cachedTokens == null ? 0 : cachedTokens!.hashCode);

  @override
  String toString() => 'AiResponsesInputDetails[cachedTokens=$cachedTokens]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.cachedTokens != null) {
      json[r'cached_tokens'] = this.cachedTokens;
    } else {
      json[r'cached_tokens'] = null;
    }
    return json;
  }

  /// Returns a new [AiResponsesInputDetails] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AiResponsesInputDetails? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AiResponsesInputDetails[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AiResponsesInputDetails[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AiResponsesInputDetails(
        cachedTokens: mapValueOfType<int>(json, r'cached_tokens'),
      );
    }
    return null;
  }

  static List<AiResponsesInputDetails> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AiResponsesInputDetails>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AiResponsesInputDetails.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AiResponsesInputDetails> mapFromJson(dynamic json) {
    final map = <String, AiResponsesInputDetails>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AiResponsesInputDetails.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AiResponsesInputDetails-objects as value to a dart map
  static Map<String, List<AiResponsesInputDetails>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AiResponsesInputDetails>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AiResponsesInputDetails.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

