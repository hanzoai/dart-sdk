//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class EinIn {
  /// Returns a new [EinIn] instance.
  EinIn({
    this.expedited,
    this.naics,
    this.responsible,
  });
  /// Expedited asks for prioritised handling. Only meaningful when the responsible party cannot file online.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? expedited;

  /// NAICS is the six-digit code for what the business does.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? naics;

  /// Responsible is the person the IRS holds answerable for the entity.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Responsible? responsible;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EinIn &&
    other.expedited == expedited &&
    other.naics == naics &&
    other.responsible == responsible;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (expedited == null ? 0 : expedited!.hashCode) +
    (naics == null ? 0 : naics!.hashCode) +
    (responsible == null ? 0 : responsible!.hashCode);

  @override
  String toString() => 'EinIn[expedited=$expedited, naics=$naics, responsible=$responsible]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.expedited != null) {
      json[r'expedited'] = this.expedited;
    } else {
      json[r'expedited'] = null;
    }
    if (this.naics != null) {
      json[r'naics'] = this.naics;
    } else {
      json[r'naics'] = null;
    }
    if (this.responsible != null) {
      json[r'responsible'] = this.responsible;
    } else {
      json[r'responsible'] = null;
    }
    return json;
  }

  /// Returns a new [EinIn] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EinIn? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EinIn[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EinIn[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EinIn(
        expedited: mapValueOfType<bool>(json, r'expedited'),
        naics: mapValueOfType<String>(json, r'naics'),
        responsible: Responsible.fromJson(json[r'responsible']),
      );
    }
    return null;
  }

  static List<EinIn> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EinIn>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EinIn.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EinIn> mapFromJson(dynamic json) {
    final map = <String, EinIn>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EinIn.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EinIn-objects as value to a dart map
  static Map<String, List<EinIn>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EinIn>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EinIn.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

