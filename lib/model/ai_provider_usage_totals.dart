//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class AiProviderUsageTotals {
  /// Returns a new [AiProviderUsageTotals] instance.
  AiProviderUsageTotals({
    this.inputTokens,
    this.outputTokens,
    this.requests,
    this.spendCents,
    this.tokens,
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
  int? outputTokens;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? requests;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? spendCents;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? tokens;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AiProviderUsageTotals &&
    other.inputTokens == inputTokens &&
    other.outputTokens == outputTokens &&
    other.requests == requests &&
    other.spendCents == spendCents &&
    other.tokens == tokens;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (inputTokens == null ? 0 : inputTokens!.hashCode) +
    (outputTokens == null ? 0 : outputTokens!.hashCode) +
    (requests == null ? 0 : requests!.hashCode) +
    (spendCents == null ? 0 : spendCents!.hashCode) +
    (tokens == null ? 0 : tokens!.hashCode);

  @override
  String toString() => 'AiProviderUsageTotals[inputTokens=$inputTokens, outputTokens=$outputTokens, requests=$requests, spendCents=$spendCents, tokens=$tokens]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.inputTokens != null) {
      json[r'inputTokens'] = this.inputTokens;
    } else {
      json[r'inputTokens'] = null;
    }
    if (this.outputTokens != null) {
      json[r'outputTokens'] = this.outputTokens;
    } else {
      json[r'outputTokens'] = null;
    }
    if (this.requests != null) {
      json[r'requests'] = this.requests;
    } else {
      json[r'requests'] = null;
    }
    if (this.spendCents != null) {
      json[r'spendCents'] = this.spendCents;
    } else {
      json[r'spendCents'] = null;
    }
    if (this.tokens != null) {
      json[r'tokens'] = this.tokens;
    } else {
      json[r'tokens'] = null;
    }
    return json;
  }

  /// Returns a new [AiProviderUsageTotals] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AiProviderUsageTotals? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AiProviderUsageTotals[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AiProviderUsageTotals[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AiProviderUsageTotals(
        inputTokens: mapValueOfType<int>(json, r'inputTokens'),
        outputTokens: mapValueOfType<int>(json, r'outputTokens'),
        requests: mapValueOfType<int>(json, r'requests'),
        spendCents: mapValueOfType<int>(json, r'spendCents'),
        tokens: mapValueOfType<int>(json, r'tokens'),
      );
    }
    return null;
  }

  static List<AiProviderUsageTotals> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AiProviderUsageTotals>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AiProviderUsageTotals.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AiProviderUsageTotals> mapFromJson(dynamic json) {
    final map = <String, AiProviderUsageTotals>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AiProviderUsageTotals.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AiProviderUsageTotals-objects as value to a dart map
  static Map<String, List<AiProviderUsageTotals>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AiProviderUsageTotals>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AiProviderUsageTotals.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

