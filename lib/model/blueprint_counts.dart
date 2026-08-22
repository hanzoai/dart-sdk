//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class BlueprintCounts {
  /// Returns a new [BlueprintCounts] instance.
  BlueprintCounts({
    this.principles,
    this.sections,
    this.steps,
    this.strategies,
    this.templates,
  });
  /// Principles is how many spine archetypes the playbook carries (64 in the shipped corpus).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? principles;

  /// Sections is how many phases the journey has.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? sections;

  /// Steps is how many checklist items the playbook holds, DISABLED ONES INCLUDED — this counts the authored document, not the journey an org runs, so it is normally larger than the `total` on a progress view.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? steps;

  /// Strategies is how many tactics the corpus holds, again counting disabled ones.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? strategies;

  /// Templates is how many reusable prompts the playbook carries.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? templates;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BlueprintCounts &&
    other.principles == principles &&
    other.sections == sections &&
    other.steps == steps &&
    other.strategies == strategies &&
    other.templates == templates;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (principles == null ? 0 : principles!.hashCode) +
    (sections == null ? 0 : sections!.hashCode) +
    (steps == null ? 0 : steps!.hashCode) +
    (strategies == null ? 0 : strategies!.hashCode) +
    (templates == null ? 0 : templates!.hashCode);

  @override
  String toString() => 'BlueprintCounts[principles=$principles, sections=$sections, steps=$steps, strategies=$strategies, templates=$templates]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.principles != null) {
      json[r'principles'] = this.principles;
    } else {
      json[r'principles'] = null;
    }
    if (this.sections != null) {
      json[r'sections'] = this.sections;
    } else {
      json[r'sections'] = null;
    }
    if (this.steps != null) {
      json[r'steps'] = this.steps;
    } else {
      json[r'steps'] = null;
    }
    if (this.strategies != null) {
      json[r'strategies'] = this.strategies;
    } else {
      json[r'strategies'] = null;
    }
    if (this.templates != null) {
      json[r'templates'] = this.templates;
    } else {
      json[r'templates'] = null;
    }
    return json;
  }

  /// Returns a new [BlueprintCounts] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BlueprintCounts? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "BlueprintCounts[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "BlueprintCounts[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return BlueprintCounts(
        principles: mapValueOfType<int>(json, r'principles'),
        sections: mapValueOfType<int>(json, r'sections'),
        steps: mapValueOfType<int>(json, r'steps'),
        strategies: mapValueOfType<int>(json, r'strategies'),
        templates: mapValueOfType<int>(json, r'templates'),
      );
    }
    return null;
  }

  static List<BlueprintCounts> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BlueprintCounts>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BlueprintCounts.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, BlueprintCounts> mapFromJson(dynamic json) {
    final map = <String, BlueprintCounts>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BlueprintCounts.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of BlueprintCounts-objects as value to a dart map
  static Map<String, List<BlueprintCounts>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<BlueprintCounts>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = BlueprintCounts.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

