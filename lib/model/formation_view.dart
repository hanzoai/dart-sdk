//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class FormationView {
  /// Returns a new [FormationView] instance.
  FormationView({
    this.formation,
    this.nextStages = const [],
  });
  /// Formation is the org's one incorporation record.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Formation? formation;

  /// NextStages are the stages reachable from the formation's current stage, whether or not their guards are satisfied yet.
  List<String> nextStages;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FormationView &&
    other.formation == formation &&
    _deepEquality.equals(other.nextStages, nextStages);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (formation == null ? 0 : formation!.hashCode) +
    (nextStages.hashCode);

  @override
  String toString() => 'FormationView[formation=$formation, nextStages=$nextStages]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.formation != null) {
      json[r'formation'] = this.formation;
    } else {
      json[r'formation'] = null;
    }
      json[r'nextStages'] = this.nextStages;
    return json;
  }

  /// Returns a new [FormationView] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static FormationView? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "FormationView[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "FormationView[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return FormationView(
        formation: Formation.fromJson(json[r'formation']),
        nextStages: json[r'nextStages'] is Iterable
            ? (json[r'nextStages'] as Iterable).cast<String>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<FormationView> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <FormationView>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FormationView.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, FormationView> mapFromJson(dynamic json) {
    final map = <String, FormationView>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = FormationView.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of FormationView-objects as value to a dart map
  static Map<String, List<FormationView>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<FormationView>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = FormationView.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

