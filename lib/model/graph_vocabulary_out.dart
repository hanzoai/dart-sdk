//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class GraphVocabularyOut {
  /// Returns a new [GraphVocabularyOut] instance.
  GraphVocabularyOut({
    this.bound,
    this.relations = const [],
    this.rule = const [],
  });
  /// Bound is the ceiling on one walk.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? bound;

  /// Relations is what this organization has actually asserted, which is the only vocabulary there is: this plane declares none of its own.
  List<String> relations;

  /// Rule names the terms of the precedence order, in the order they apply. A reader who is told a winner without the rule cannot check it.
  List<String> rule;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GraphVocabularyOut &&
    other.bound == bound &&
    _deepEquality.equals(other.relations, relations) &&
    _deepEquality.equals(other.rule, rule);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (bound == null ? 0 : bound!.hashCode) +
    (relations.hashCode) +
    (rule.hashCode);

  @override
  String toString() => 'GraphVocabularyOut[bound=$bound, relations=$relations, rule=$rule]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.bound != null) {
      json[r'bound'] = this.bound;
    } else {
      json[r'bound'] = null;
    }
      json[r'relations'] = this.relations;
      json[r'rule'] = this.rule;
    return json;
  }

  /// Returns a new [GraphVocabularyOut] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GraphVocabularyOut? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GraphVocabularyOut[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GraphVocabularyOut[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GraphVocabularyOut(
        bound: mapValueOfType<int>(json, r'bound'),
        relations: json[r'relations'] is Iterable
            ? (json[r'relations'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        rule: json[r'rule'] is Iterable
            ? (json[r'rule'] as Iterable).cast<String>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<GraphVocabularyOut> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GraphVocabularyOut>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GraphVocabularyOut.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GraphVocabularyOut> mapFromJson(dynamic json) {
    final map = <String, GraphVocabularyOut>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GraphVocabularyOut.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GraphVocabularyOut-objects as value to a dart map
  static Map<String, List<GraphVocabularyOut>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GraphVocabularyOut>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GraphVocabularyOut.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

