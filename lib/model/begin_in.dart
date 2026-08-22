//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class BeginIn {
  /// Returns a new [BeginIn] instance.
  BeginIn({
    this.alreadyIncorporated,
    this.jurisdiction,
    this.name,
    this.structure,
  });
  /// AlreadyIncorporated declares an org that already has an entity, which takes the import path (POST /v1/company/skip) instead of the formation path.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? alreadyIncorporated;

  /// Jurisdiction is the state of formation: DE or WY.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? jurisdiction;

  /// Name is the proposed company name.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// Structure is the legal entity to form: c-corp, llc or dao-llc.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? structure;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BeginIn &&
    other.alreadyIncorporated == alreadyIncorporated &&
    other.jurisdiction == jurisdiction &&
    other.name == name &&
    other.structure == structure;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (alreadyIncorporated == null ? 0 : alreadyIncorporated!.hashCode) +
    (jurisdiction == null ? 0 : jurisdiction!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (structure == null ? 0 : structure!.hashCode);

  @override
  String toString() => 'BeginIn[alreadyIncorporated=$alreadyIncorporated, jurisdiction=$jurisdiction, name=$name, structure=$structure]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.alreadyIncorporated != null) {
      json[r'alreadyIncorporated'] = this.alreadyIncorporated;
    } else {
      json[r'alreadyIncorporated'] = null;
    }
    if (this.jurisdiction != null) {
      json[r'jurisdiction'] = this.jurisdiction;
    } else {
      json[r'jurisdiction'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.structure != null) {
      json[r'structure'] = this.structure;
    } else {
      json[r'structure'] = null;
    }
    return json;
  }

  /// Returns a new [BeginIn] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BeginIn? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "BeginIn[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "BeginIn[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return BeginIn(
        alreadyIncorporated: mapValueOfType<bool>(json, r'alreadyIncorporated'),
        jurisdiction: mapValueOfType<String>(json, r'jurisdiction'),
        name: mapValueOfType<String>(json, r'name'),
        structure: mapValueOfType<String>(json, r'structure'),
      );
    }
    return null;
  }

  static List<BeginIn> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BeginIn>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BeginIn.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, BeginIn> mapFromJson(dynamic json) {
    final map = <String, BeginIn>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BeginIn.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of BeginIn-objects as value to a dart map
  static Map<String, List<BeginIn>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<BeginIn>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = BeginIn.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

