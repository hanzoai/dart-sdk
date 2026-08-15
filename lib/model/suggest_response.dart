//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class SuggestResponse {
  /// Returns a new [SuggestResponse] instance.
  SuggestResponse({
    this.funnel,
    this.narrative,
    this.next,
    this.recommendations = const [],
    this.suggestions = const [],
  });

  /// Funnel is the org's trailing-window traffic → signups → orders.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Funnel? funnel;

  /// Narrative is the AI's grounded prose over those quests and numbers. Absent when no AI plane is wired or the completion failed — never fabricated.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? narrative;

  /// Next is the id of the single next step the static journey names — the linear answer the ranked Suggestions refine.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? next;

  /// Recommendations are the next-best GTM actions derived from that funnel.
  List<String> recommendations;

  /// Suggestions are the available, non-terminal quests ranked best-first by how much downstream work each unblocks.
  List<Suggestion> suggestions;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SuggestResponse &&
    other.funnel == funnel &&
    other.narrative == narrative &&
    other.next == next &&
    _deepEquality.equals(other.recommendations, recommendations) &&
    _deepEquality.equals(other.suggestions, suggestions);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (funnel == null ? 0 : funnel!.hashCode) +
    (narrative == null ? 0 : narrative!.hashCode) +
    (next == null ? 0 : next!.hashCode) +
    (recommendations.hashCode) +
    (suggestions.hashCode);

  @override
  String toString() => 'SuggestResponse[funnel=$funnel, narrative=$narrative, next=$next, recommendations=$recommendations, suggestions=$suggestions]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.funnel != null) {
      json[r'funnel'] = this.funnel;
    } else {
      json[r'funnel'] = null;
    }
    if (this.narrative != null) {
      json[r'narrative'] = this.narrative;
    } else {
      json[r'narrative'] = null;
    }
    if (this.next != null) {
      json[r'next'] = this.next;
    } else {
      json[r'next'] = null;
    }
      json[r'recommendations'] = this.recommendations;
      json[r'suggestions'] = this.suggestions;
    return json;
  }

  /// Returns a new [SuggestResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SuggestResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SuggestResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SuggestResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SuggestResponse(
        funnel: Funnel.fromJson(json[r'funnel']),
        narrative: mapValueOfType<String>(json, r'narrative'),
        next: mapValueOfType<String>(json, r'next'),
        recommendations: json[r'recommendations'] is Iterable
            ? (json[r'recommendations'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        suggestions: Suggestion.listFromJson(json[r'suggestions']),
      );
    }
    return null;
  }

  static List<SuggestResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SuggestResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SuggestResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SuggestResponse> mapFromJson(dynamic json) {
    final map = <String, SuggestResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SuggestResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SuggestResponse-objects as value to a dart map
  static Map<String, List<SuggestResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SuggestResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SuggestResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

