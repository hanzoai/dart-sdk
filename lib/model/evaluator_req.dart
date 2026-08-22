//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class EvaluatorReq {
  /// Returns a new [EvaluatorReq] instance.
  EvaluatorReq({
    this.criteria,
    this.model,
    required this.name,
    this.scoreName,
  });
  /// Criteria is the written standard the judge applies; over 64 KiB is refused.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? criteria;

  /// Model is the model that will do the grading.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? model;

  /// Name is the judge's org-unique handle, matching ^[A-Za-z0-9][A-Za-z0-9._-]{0,63}$. Re-posting a name edits that judge rather than adding a second one.
  String name;

  /// ScoreName is the name the resulting scores are filed under. It defaults to the judge's own name and must match the same pattern.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? scoreName;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EvaluatorReq &&
    other.criteria == criteria &&
    other.model == model &&
    other.name == name &&
    other.scoreName == scoreName;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (criteria == null ? 0 : criteria!.hashCode) +
    (model == null ? 0 : model!.hashCode) +
    (name.hashCode) +
    (scoreName == null ? 0 : scoreName!.hashCode);

  @override
  String toString() => 'EvaluatorReq[criteria=$criteria, model=$model, name=$name, scoreName=$scoreName]';

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
      json[r'name'] = this.name;
    if (this.scoreName != null) {
      json[r'scoreName'] = this.scoreName;
    } else {
      json[r'scoreName'] = null;
    }
    return json;
  }

  /// Returns a new [EvaluatorReq] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EvaluatorReq? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EvaluatorReq[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EvaluatorReq[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EvaluatorReq(
        criteria: mapValueOfType<String>(json, r'criteria'),
        model: mapValueOfType<String>(json, r'model'),
        name: mapValueOfType<String>(json, r'name')!,
        scoreName: mapValueOfType<String>(json, r'scoreName'),
      );
    }
    return null;
  }

  static List<EvaluatorReq> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EvaluatorReq>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EvaluatorReq.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EvaluatorReq> mapFromJson(dynamic json) {
    final map = <String, EvaluatorReq>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EvaluatorReq.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EvaluatorReq-objects as value to a dart map
  static Map<String, List<EvaluatorReq>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EvaluatorReq>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EvaluatorReq.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'name',
  };
}

