//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class JudgeSpec {
  /// Returns a new [JudgeSpec] instance.
  JudgeSpec({
    this.criteria,
    this.model,
    this.name,
  });

  /// Criteria is the standard the judge applies, defaulting to a correctness criterion.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? criteria;

  /// Model is the model that grades. It defaults to the model under test, so a run with no judge named has the model grade itself.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? model;

  /// Name is the score name the judge's grades are filed under, \"llm-judge\" by default. A name that is not a legal handle falls back to that default rather than being stored as sent.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  @override
  bool operator ==(Object other) => identical(this, other) || other is JudgeSpec &&
    other.criteria == criteria &&
    other.model == model &&
    other.name == name;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (criteria == null ? 0 : criteria!.hashCode) +
    (model == null ? 0 : model!.hashCode) +
    (name == null ? 0 : name!.hashCode);

  @override
  String toString() => 'JudgeSpec[criteria=$criteria, model=$model, name=$name]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.criteria != null) {
      json[r'criteria'] = this.criteria;
    } else {
      json[r'criteria'] = null;
    }
    if (this.model != null) {
      json[r'model'] = this.model;
    } else {
      json[r'model'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    return json;
  }

  /// Returns a new [JudgeSpec] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static JudgeSpec? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "JudgeSpec[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "JudgeSpec[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return JudgeSpec(
        criteria: mapValueOfType<String>(json, r'criteria'),
        model: mapValueOfType<String>(json, r'model'),
        name: mapValueOfType<String>(json, r'name'),
      );
    }
    return null;
  }

  static List<JudgeSpec> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <JudgeSpec>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = JudgeSpec.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, JudgeSpec> mapFromJson(dynamic json) {
    final map = <String, JudgeSpec>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = JudgeSpec.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of JudgeSpec-objects as value to a dart map
  static Map<String, List<JudgeSpec>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<JudgeSpec>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = JudgeSpec.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

