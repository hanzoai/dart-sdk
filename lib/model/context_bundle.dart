//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ContextBundle {
  /// Returns a new [ContextBundle] instance.
  ContextBundle({
    this.budgetTokens,
    this.query,
    this.repo,
    this.spans = const [],
    this.usedTokens,
  });
  /// BudgetTokens is the ceiling the caller asked for. Packing stops under it, so this is a bound and not a target.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? budgetTokens;

  /// Query is the ask this bundle was packed for, echoed back so a cached or forwarded bundle still says what it answers.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? query;

  /// Repo narrows the retrieval to one repository. Absent means every indexed repo was searched.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? repo;

  /// Spans are the packed chunks, most relevant first, each expanded with the definitions it calls and its notable callers. The top match is always present even if it had to be truncated to fit, so a matched query never comes back with nothing.
  List<Span> spans;

  /// UsedTokens is what the returned spans actually cost, by the same estimate the packer used (roughly one token per four characters — an estimate, not a tokenizer's count, so size a real window with headroom).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? usedTokens;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ContextBundle &&
    other.budgetTokens == budgetTokens &&
    other.query == query &&
    other.repo == repo &&
    _deepEquality.equals(other.spans, spans) &&
    other.usedTokens == usedTokens;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (budgetTokens == null ? 0 : budgetTokens!.hashCode) +
    (query == null ? 0 : query!.hashCode) +
    (repo == null ? 0 : repo!.hashCode) +
    (spans.hashCode) +
    (usedTokens == null ? 0 : usedTokens!.hashCode);

  @override
  String toString() => 'ContextBundle[budgetTokens=$budgetTokens, query=$query, repo=$repo, spans=$spans, usedTokens=$usedTokens]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.budgetTokens != null) {
      json[r'budgetTokens'] = this.budgetTokens;
    } else {
      json[r'budgetTokens'] = null;
    }
    if (this.query != null) {
      json[r'query'] = this.query;
    } else {
      json[r'query'] = null;
    }
    if (this.repo != null) {
      json[r'repo'] = this.repo;
    } else {
      json[r'repo'] = null;
    }
      json[r'spans'] = this.spans;
    if (this.usedTokens != null) {
      json[r'usedTokens'] = this.usedTokens;
    } else {
      json[r'usedTokens'] = null;
    }
    return json;
  }

  /// Returns a new [ContextBundle] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ContextBundle? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ContextBundle[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ContextBundle[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ContextBundle(
        budgetTokens: mapValueOfType<int>(json, r'budgetTokens'),
        query: mapValueOfType<String>(json, r'query'),
        repo: mapValueOfType<String>(json, r'repo'),
        spans: Span.listFromJson(json[r'spans']),
        usedTokens: mapValueOfType<int>(json, r'usedTokens'),
      );
    }
    return null;
  }

  static List<ContextBundle> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ContextBundle>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ContextBundle.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ContextBundle> mapFromJson(dynamic json) {
    final map = <String, ContextBundle>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ContextBundle.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ContextBundle-objects as value to a dart map
  static Map<String, List<ContextBundle>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ContextBundle>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ContextBundle.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

