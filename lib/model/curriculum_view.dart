//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class CurriculumView {
  /// Returns a new [CurriculumView] instance.
  CurriculumView({
    this.curriculum,
    this.custom,
  });
  /// Curriculum is the enabled journey: its version, title and ordered steps.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Curriculum? curriculum;

  /// Custom is true when the org's OWN curriculum override is active; false when the journey comes from the brand blueprint or the embedded fixture.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? custom;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CurriculumView &&
    other.curriculum == curriculum &&
    other.custom == custom;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (curriculum == null ? 0 : curriculum!.hashCode) +
    (custom == null ? 0 : custom!.hashCode);

  @override
  String toString() => 'CurriculumView[curriculum=$curriculum, custom=$custom]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.curriculum != null) {
      json[r'curriculum'] = this.curriculum;
    } else {
      json[r'curriculum'] = null;
    }
    if (this.custom != null) {
      json[r'custom'] = this.custom;
    } else {
      json[r'custom'] = null;
    }
    return json;
  }

  /// Returns a new [CurriculumView] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CurriculumView? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CurriculumView[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CurriculumView[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CurriculumView(
        curriculum: Curriculum.fromJson(json[r'curriculum']),
        custom: mapValueOfType<bool>(json, r'custom'),
      );
    }
    return null;
  }

  static List<CurriculumView> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CurriculumView>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CurriculumView.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CurriculumView> mapFromJson(dynamic json) {
    final map = <String, CurriculumView>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CurriculumView.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CurriculumView-objects as value to a dart map
  static Map<String, List<CurriculumView>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CurriculumView>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CurriculumView.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

