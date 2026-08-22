//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class LLMOverview {
  /// Returns a new [LLMOverview] instance.
  LLMOverview({
    this.available,
    this.completionTokens,
    this.errorRate,
    this.errors,
    this.models,
    this.promptTokens,
    this.providers,
    this.requests,
    this.source_,
    this.spendCents,
    this.tokens,
  });
  /// Available is true whenever the ledger answered — including with no usage in the window, which is honest zeros rather than a missing lens.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? available;

  /// CompletionTokens is the output half of Tokens.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? completionTokens;

  /// ErrorRate is Errors/Requests, 0..1, rounded to three places. Zero when there were no requests.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? errorRate;

  /// Errors is how many of Requests failed.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? errors;

  /// Models is how many distinct models the org called.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? models;

  /// PromptTokens is the input half of Tokens.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? promptTokens;

  /// Providers is how many distinct providers served them.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? providers;

  /// Requests is how many LLM calls the org made in the window.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? requests;

  /// Source is the warehouse table the lens read.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? source_;

  /// SpendCents is what those calls cost, in cents.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? spendCents;

  /// Tokens is prompt plus completion tokens over those calls.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? tokens;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LLMOverview &&
    other.available == available &&
    other.completionTokens == completionTokens &&
    other.errorRate == errorRate &&
    other.errors == errors &&
    other.models == models &&
    other.promptTokens == promptTokens &&
    other.providers == providers &&
    other.requests == requests &&
    other.source_ == source_ &&
    other.spendCents == spendCents &&
    other.tokens == tokens;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (available == null ? 0 : available!.hashCode) +
    (completionTokens == null ? 0 : completionTokens!.hashCode) +
    (errorRate == null ? 0 : errorRate!.hashCode) +
    (errors == null ? 0 : errors!.hashCode) +
    (models == null ? 0 : models!.hashCode) +
    (promptTokens == null ? 0 : promptTokens!.hashCode) +
    (providers == null ? 0 : providers!.hashCode) +
    (requests == null ? 0 : requests!.hashCode) +
    (source_ == null ? 0 : source_!.hashCode) +
    (spendCents == null ? 0 : spendCents!.hashCode) +
    (tokens == null ? 0 : tokens!.hashCode);

  @override
  String toString() => 'LLMOverview[available=$available, completionTokens=$completionTokens, errorRate=$errorRate, errors=$errors, models=$models, promptTokens=$promptTokens, providers=$providers, requests=$requests, source_=$source_, spendCents=$spendCents, tokens=$tokens]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.available != null) {
      json[r'available'] = this.available;
    } else {
      json[r'available'] = null;
    }
    if (this.completionTokens != null) {
      json[r'completionTokens'] = this.completionTokens;
    } else {
      json[r'completionTokens'] = null;
    }
    if (this.errorRate != null) {
      json[r'errorRate'] = this.errorRate;
    } else {
      json[r'errorRate'] = null;
    }
    if (this.errors != null) {
      json[r'errors'] = this.errors;
    } else {
      json[r'errors'] = null;
    }
    if (this.models != null) {
      json[r'models'] = this.models;
    } else {
      json[r'models'] = null;
    }
    if (this.promptTokens != null) {
      json[r'promptTokens'] = this.promptTokens;
    } else {
      json[r'promptTokens'] = null;
    }
    if (this.providers != null) {
      json[r'providers'] = this.providers;
    } else {
      json[r'providers'] = null;
    }
    if (this.requests != null) {
      json[r'requests'] = this.requests;
    } else {
      json[r'requests'] = null;
    }
    if (this.source_ != null) {
      json[r'source'] = this.source_;
    } else {
      json[r'source'] = null;
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

  /// Returns a new [LLMOverview] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LLMOverview? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "LLMOverview[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "LLMOverview[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return LLMOverview(
        available: mapValueOfType<bool>(json, r'available'),
        completionTokens: mapValueOfType<int>(json, r'completionTokens'),
        errorRate: num.parse('${json[r'errorRate']}'),
        errors: mapValueOfType<int>(json, r'errors'),
        models: mapValueOfType<int>(json, r'models'),
        promptTokens: mapValueOfType<int>(json, r'promptTokens'),
        providers: mapValueOfType<int>(json, r'providers'),
        requests: mapValueOfType<int>(json, r'requests'),
        source_: mapValueOfType<String>(json, r'source'),
        spendCents: mapValueOfType<int>(json, r'spendCents'),
        tokens: mapValueOfType<int>(json, r'tokens'),
      );
    }
    return null;
  }

  static List<LLMOverview> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LLMOverview>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LLMOverview.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LLMOverview> mapFromJson(dynamic json) {
    final map = <String, LLMOverview>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LLMOverview.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LLMOverview-objects as value to a dart map
  static Map<String, List<LLMOverview>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<LLMOverview>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = LLMOverview.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

