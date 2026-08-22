//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class WebQuestion {
  /// Returns a new [WebQuestion] instance.
  WebQuestion({
    this.language,
    this.maxSources,
    this.mode,
    this.q,
    this.sources = const [],
  });
  /// Language narrows the search to a locale, BCP-47-ish (\"en\", \"ja\"). Empty means no narrowing.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? language;

  /// MaxSources caps how many pages are read. Empty means the mode's own budget.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? maxSources;

  /// Mode is how much work to do: `search` (fast, one pass), `news` (recency biased), `research` (a plan and several rounds) or `deep` (the widest survey). Empty means research.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? mode;

  /// Q is the question, in plain language. Required.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? q;

  /// Sources narrows where the evidence comes from: any of `web`, `news`, `academic`, `github`, `reddit`, `x`. Each becomes a site-scoped search, so `[\"x\"]` researches X/Twitter posts rather than the open web.
  List<String> sources;

  @override
  bool operator ==(Object other) => identical(this, other) || other is WebQuestion &&
    other.language == language &&
    other.maxSources == maxSources &&
    other.mode == mode &&
    other.q == q &&
    _deepEquality.equals(other.sources, sources);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (language == null ? 0 : language!.hashCode) +
    (maxSources == null ? 0 : maxSources!.hashCode) +
    (mode == null ? 0 : mode!.hashCode) +
    (q == null ? 0 : q!.hashCode) +
    (sources.hashCode);

  @override
  String toString() => 'WebQuestion[language=$language, maxSources=$maxSources, mode=$mode, q=$q, sources=$sources]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.language != null) {
      json[r'language'] = this.language;
    } else {
      json[r'language'] = null;
    }
    if (this.maxSources != null) {
      json[r'max_sources'] = this.maxSources;
    } else {
      json[r'max_sources'] = null;
    }
    if (this.mode != null) {
      json[r'mode'] = this.mode;
    } else {
      json[r'mode'] = null;
    }
    if (this.q != null) {
      json[r'q'] = this.q;
    } else {
      json[r'q'] = null;
    }
      json[r'sources'] = this.sources;
    return json;
  }

  /// Returns a new [WebQuestion] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static WebQuestion? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "WebQuestion[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "WebQuestion[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return WebQuestion(
        language: mapValueOfType<String>(json, r'language'),
        maxSources: mapValueOfType<int>(json, r'max_sources'),
        mode: mapValueOfType<String>(json, r'mode'),
        q: mapValueOfType<String>(json, r'q'),
        sources: json[r'sources'] is Iterable
            ? (json[r'sources'] as Iterable).cast<String>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<WebQuestion> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WebQuestion>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WebQuestion.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, WebQuestion> mapFromJson(dynamic json) {
    final map = <String, WebQuestion>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = WebQuestion.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of WebQuestion-objects as value to a dart map
  static Map<String, List<WebQuestion>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<WebQuestion>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = WebQuestion.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

