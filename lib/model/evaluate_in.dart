//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class EvaluateIn {
  /// Returns a new [EvaluateIn] instance.
  EvaluateIn({
    this.distinctIdLegacy,
    this.groups,
    this.personProperties,
  });

  /// DistinctID is the identity the flags are evaluated for. Required.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? distinctIdLegacy;

  Object? groups;

  Object? personProperties;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EvaluateIn &&
    other.distinctIdLegacy == distinctIdLegacy &&
    other.groups == groups &&
    other.personProperties == personProperties;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (distinctIdLegacy == null ? 0 : distinctIdLegacy!.hashCode) +
    (groups == null ? 0 : groups!.hashCode) +
    (personProperties == null ? 0 : personProperties!.hashCode);

  @override
  String toString() => 'EvaluateIn[distinctIdLegacy=$distinctIdLegacy, groups=$groups, personProperties=$personProperties]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.distinctIdLegacy != null) {
      json[r'distinct_id'] = this.distinctIdLegacy;
    } else {
      json[r'distinct_id'] = null;
    }
    if (this.groups != null) {
      json[r'groups'] = this.groups;
    } else {
      json[r'groups'] = null;
    }
    if (this.personProperties != null) {
      json[r'person_properties'] = this.personProperties;
    } else {
      json[r'person_properties'] = null;
    }
    return json;
  }

  /// Returns a new [EvaluateIn] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EvaluateIn? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EvaluateIn[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EvaluateIn[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EvaluateIn(
        distinctIdLegacy: mapValueOfType<String>(json, r'distinct_id'),
        groups: mapValueOfType<Object>(json, r'groups'),
        personProperties: mapValueOfType<Object>(json, r'person_properties'),
      );
    }
    return null;
  }

  static List<EvaluateIn> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EvaluateIn>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EvaluateIn.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EvaluateIn> mapFromJson(dynamic json) {
    final map = <String, EvaluateIn>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EvaluateIn.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EvaluateIn-objects as value to a dart map
  static Map<String, List<EvaluateIn>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EvaluateIn>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EvaluateIn.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

