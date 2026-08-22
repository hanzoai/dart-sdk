//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class EvaluatorView {
  /// Returns a new [EvaluatorView] instance.
  EvaluatorView({
    this.createdAt,
    this.criteria,
    this.model,
    this.name,
    this.scoreName,
    this.updatedAt,
  });
  /// CreatedAt is when the judge was first defined.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? createdAt;

  /// Criteria is the written standard the judge applies.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? criteria;

  /// Model is the model that does the grading.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? model;

  /// Name is the judge's org-unique handle.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// ScoreName is the name the resulting scores are filed under.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? scoreName;

  /// UpdatedAt is when it last changed.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EvaluatorView &&
    other.createdAt == createdAt &&
    other.criteria == criteria &&
    other.model == model &&
    other.name == name &&
    other.scoreName == scoreName &&
    other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (criteria == null ? 0 : criteria!.hashCode) +
    (model == null ? 0 : model!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (scoreName == null ? 0 : scoreName!.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode);

  @override
  String toString() => 'EvaluatorView[createdAt=$createdAt, criteria=$criteria, model=$model, name=$name, scoreName=$scoreName, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.createdAt != null) {
      json[r'createdAt'] = this.createdAt;
    } else {
      json[r'createdAt'] = null;
    }
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
    if (this.scoreName != null) {
      json[r'scoreName'] = this.scoreName;
    } else {
      json[r'scoreName'] = null;
    }
    if (this.updatedAt != null) {
      json[r'updatedAt'] = this.updatedAt;
    } else {
      json[r'updatedAt'] = null;
    }
    return json;
  }

  /// Returns a new [EvaluatorView] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EvaluatorView? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EvaluatorView[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EvaluatorView[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EvaluatorView(
        createdAt: mapValueOfType<String>(json, r'createdAt'),
        criteria: mapValueOfType<String>(json, r'criteria'),
        model: mapValueOfType<String>(json, r'model'),
        name: mapValueOfType<String>(json, r'name'),
        scoreName: mapValueOfType<String>(json, r'scoreName'),
        updatedAt: mapValueOfType<String>(json, r'updatedAt'),
      );
    }
    return null;
  }

  static List<EvaluatorView> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EvaluatorView>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EvaluatorView.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EvaluatorView> mapFromJson(dynamic json) {
    final map = <String, EvaluatorView>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EvaluatorView.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EvaluatorView-objects as value to a dart map
  static Map<String, List<EvaluatorView>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EvaluatorView>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EvaluatorView.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

