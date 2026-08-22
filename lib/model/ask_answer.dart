//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class AskAnswer {
  /// Returns a new [AskAnswer] instance.
  AskAnswer({
    this.answer,
    this.citations = const [],
    this.degraded,
    this.question,
  });
  /// Answer is the synthesized prose. EMPTY is a real answer here: nothing in the index matched, or synthesis was unavailable — read `degraded` and `citations` to tell those apart. It is never written without grounding.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? answer;

  /// Citations are the exact regions the answer was grounded on, and they are the point: an answer is checkable only because every claim in it can be read back at a file and line. Present even when Answer is empty.
  List<Citation> citations;

  /// Degraded is true when retrieval worked but no synthesizer was reachable. The citations are still real code, so a caller can answer from them itself; a caller that treats this like an error throws away a usable result.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? degraded;

  /// Question is the ask, echoed back.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? question;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AskAnswer &&
    other.answer == answer &&
    _deepEquality.equals(other.citations, citations) &&
    other.degraded == degraded &&
    other.question == question;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (answer == null ? 0 : answer!.hashCode) +
    (citations.hashCode) +
    (degraded == null ? 0 : degraded!.hashCode) +
    (question == null ? 0 : question!.hashCode);

  @override
  String toString() => 'AskAnswer[answer=$answer, citations=$citations, degraded=$degraded, question=$question]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.answer != null) {
      json[r'answer'] = this.answer;
    } else {
      json[r'answer'] = null;
    }
      json[r'citations'] = this.citations;
    if (this.degraded != null) {
      json[r'degraded'] = this.degraded;
    } else {
      json[r'degraded'] = null;
    }
    if (this.question != null) {
      json[r'question'] = this.question;
    } else {
      json[r'question'] = null;
    }
    return json;
  }

  /// Returns a new [AskAnswer] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AskAnswer? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AskAnswer[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AskAnswer[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AskAnswer(
        answer: mapValueOfType<String>(json, r'answer'),
        citations: Citation.listFromJson(json[r'citations']),
        degraded: mapValueOfType<bool>(json, r'degraded'),
        question: mapValueOfType<String>(json, r'question'),
      );
    }
    return null;
  }

  static List<AskAnswer> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AskAnswer>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AskAnswer.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AskAnswer> mapFromJson(dynamic json) {
    final map = <String, AskAnswer>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AskAnswer.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AskAnswer-objects as value to a dart map
  static Map<String, List<AskAnswer>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AskAnswer>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AskAnswer.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

