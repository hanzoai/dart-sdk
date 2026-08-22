//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class RiskLabelVocabulary {
  /// Returns a new [RiskLabelVocabulary] instance.
  RiskLabelVocabulary({
    this.dispositions = const [],
    this.kinds = const [],
    this.precedence = const [],
    this.retention,
    this.rule = const [],
  });
  /// Dispositions is the closed set a write's `disposition` must be drawn from, published in full so a caller can validate a batch before filing it instead of discovering a refusal per member: \"productive\", \"unproductive\", and \"\" — the EMPTY STRING is a member and means an explicit unjudged, so a client that filters empties out of this list drops a third of the vocabulary and can never file \"we looked and could not say\". They are the AML engine's own spelling, verbatim, which is what lets a replay there report against these values.
  List<String> dispositions;

  /// Kinds, Dispositions and Sources are the closed vocabularies. A value outside them is refused at the door.
  List<String> kinds;

  /// Precedence is the sources in the order that resolves a conflict, strongest first. It is DERIVED from the same declaration the resolver reads, so the published order is the enforced order and cannot drift from it.
  List<String> precedence;

  /// Retention is the platform floor in days: no tenant may dispose of a label younger than this, because a label can be the input to an adverse action.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? retention;

  /// Rule states the tie-breaks below rank, in order, so a caller reading a contested resolution can reproduce it.
  List<String> rule;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RiskLabelVocabulary &&
    _deepEquality.equals(other.dispositions, dispositions) &&
    _deepEquality.equals(other.kinds, kinds) &&
    _deepEquality.equals(other.precedence, precedence) &&
    other.retention == retention &&
    _deepEquality.equals(other.rule, rule);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (dispositions.hashCode) +
    (kinds.hashCode) +
    (precedence.hashCode) +
    (retention == null ? 0 : retention!.hashCode) +
    (rule.hashCode);

  @override
  String toString() => 'RiskLabelVocabulary[dispositions=$dispositions, kinds=$kinds, precedence=$precedence, retention=$retention, rule=$rule]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'dispositions'] = this.dispositions;
      json[r'kinds'] = this.kinds;
      json[r'precedence'] = this.precedence;
    if (this.retention != null) {
      json[r'retention'] = this.retention;
    } else {
      json[r'retention'] = null;
    }
      json[r'rule'] = this.rule;
    return json;
  }

  /// Returns a new [RiskLabelVocabulary] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RiskLabelVocabulary? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RiskLabelVocabulary[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RiskLabelVocabulary[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RiskLabelVocabulary(
        dispositions: json[r'dispositions'] is Iterable
            ? (json[r'dispositions'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        kinds: json[r'kinds'] is Iterable
            ? (json[r'kinds'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        precedence: json[r'precedence'] is Iterable
            ? (json[r'precedence'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        retention: mapValueOfType<int>(json, r'retention'),
        rule: json[r'rule'] is Iterable
            ? (json[r'rule'] as Iterable).cast<String>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<RiskLabelVocabulary> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RiskLabelVocabulary>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RiskLabelVocabulary.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RiskLabelVocabulary> mapFromJson(dynamic json) {
    final map = <String, RiskLabelVocabulary>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RiskLabelVocabulary.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RiskLabelVocabulary-objects as value to a dart map
  static Map<String, List<RiskLabelVocabulary>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RiskLabelVocabulary>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RiskLabelVocabulary.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

