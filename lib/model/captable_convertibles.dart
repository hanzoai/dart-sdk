//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class CaptableConvertibles {
  /// Returns a new [CaptableConvertibles] instance.
  CaptableConvertibles({
    this.notes,
    this.safes,
  });
  /// Notes is the convertible notes total.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  CaptableInstrumentTotal? notes;

  /// Safes is the SAFEs total.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  CaptableInstrumentTotal? safes;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CaptableConvertibles &&
    other.notes == notes &&
    other.safes == safes;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (notes == null ? 0 : notes!.hashCode) +
    (safes == null ? 0 : safes!.hashCode);

  @override
  String toString() => 'CaptableConvertibles[notes=$notes, safes=$safes]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.notes != null) {
      json[r'notes'] = this.notes;
    } else {
      json[r'notes'] = null;
    }
    if (this.safes != null) {
      json[r'safes'] = this.safes;
    } else {
      json[r'safes'] = null;
    }
    return json;
  }

  /// Returns a new [CaptableConvertibles] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CaptableConvertibles? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CaptableConvertibles[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CaptableConvertibles[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CaptableConvertibles(
        notes: CaptableInstrumentTotal.fromJson(json[r'notes']),
        safes: CaptableInstrumentTotal.fromJson(json[r'safes']),
      );
    }
    return null;
  }

  static List<CaptableConvertibles> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CaptableConvertibles>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CaptableConvertibles.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CaptableConvertibles> mapFromJson(dynamic json) {
    final map = <String, CaptableConvertibles>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CaptableConvertibles.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CaptableConvertibles-objects as value to a dart map
  static Map<String, List<CaptableConvertibles>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CaptableConvertibles>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CaptableConvertibles.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

