//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Suggestion {
  /// Returns a new [Suggestion] instance.
  Suggestion({
    this.automatable,
    this.detail,
    this.rationale,
    this.stepId,
    this.title,
    this.unlocks,
  });
  /// Automatable is true when the step names a tool, so the Business AI can do it rather than only describe it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? automatable;

  /// Detail is the step's own prose — what it asks for.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? detail;

  /// Rationale is why this step is being suggested NOW, written for the person reading it. It explains the ranking, not the step.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? rationale;

  /// StepID is the checklist step being recommended — the id every step route takes, so a caller can act on the suggestion directly.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? stepId;

  /// Title is the step's own one-line quest.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? title;

  /// Unlocks is how many downstream steps completing this one immediately makes available (its leverage) — the primary ranking key.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? unlocks;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Suggestion &&
    other.automatable == automatable &&
    other.detail == detail &&
    other.rationale == rationale &&
    other.stepId == stepId &&
    other.title == title &&
    other.unlocks == unlocks;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (automatable == null ? 0 : automatable!.hashCode) +
    (detail == null ? 0 : detail!.hashCode) +
    (rationale == null ? 0 : rationale!.hashCode) +
    (stepId == null ? 0 : stepId!.hashCode) +
    (title == null ? 0 : title!.hashCode) +
    (unlocks == null ? 0 : unlocks!.hashCode);

  @override
  String toString() => 'Suggestion[automatable=$automatable, detail=$detail, rationale=$rationale, stepId=$stepId, title=$title, unlocks=$unlocks]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.automatable != null) {
      json[r'automatable'] = this.automatable;
    } else {
      json[r'automatable'] = null;
    }
    if (this.detail != null) {
      json[r'detail'] = this.detail;
    } else {
      json[r'detail'] = null;
    }
    if (this.rationale != null) {
      json[r'rationale'] = this.rationale;
    } else {
      json[r'rationale'] = null;
    }
    if (this.stepId != null) {
      json[r'stepId'] = this.stepId;
    } else {
      json[r'stepId'] = null;
    }
    if (this.title != null) {
      json[r'title'] = this.title;
    } else {
      json[r'title'] = null;
    }
    if (this.unlocks != null) {
      json[r'unlocks'] = this.unlocks;
    } else {
      json[r'unlocks'] = null;
    }
    return json;
  }

  /// Returns a new [Suggestion] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Suggestion? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Suggestion[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Suggestion[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Suggestion(
        automatable: mapValueOfType<bool>(json, r'automatable'),
        detail: mapValueOfType<String>(json, r'detail'),
        rationale: mapValueOfType<String>(json, r'rationale'),
        stepId: mapValueOfType<String>(json, r'stepId'),
        title: mapValueOfType<String>(json, r'title'),
        unlocks: mapValueOfType<int>(json, r'unlocks'),
      );
    }
    return null;
  }

  static List<Suggestion> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Suggestion>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Suggestion.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Suggestion> mapFromJson(dynamic json) {
    final map = <String, Suggestion>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Suggestion.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Suggestion-objects as value to a dart map
  static Map<String, List<Suggestion>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Suggestion>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Suggestion.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

