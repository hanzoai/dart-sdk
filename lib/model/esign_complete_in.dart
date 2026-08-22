//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class EsignCompleteIn {
  /// Returns a new [EsignCompleteIn] instance.
  EsignCompleteIn({
    this.signed,
  });
  /// Signed, when present, overrides what the provider reports — the manual path for a provider whose webhook is not wired. Omit it to take the provider's answer.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? signed;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EsignCompleteIn &&
    other.signed == signed;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (signed == null ? 0 : signed!.hashCode);

  @override
  String toString() => 'EsignCompleteIn[signed=$signed]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.signed != null) {
      json[r'signed'] = this.signed;
    } else {
      json[r'signed'] = null;
    }
    return json;
  }

  /// Returns a new [EsignCompleteIn] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EsignCompleteIn? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EsignCompleteIn[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EsignCompleteIn[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EsignCompleteIn(
        signed: mapValueOfType<bool>(json, r'signed'),
      );
    }
    return null;
  }

  static List<EsignCompleteIn> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EsignCompleteIn>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EsignCompleteIn.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EsignCompleteIn> mapFromJson(dynamic json) {
    final map = <String, EsignCompleteIn>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EsignCompleteIn.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EsignCompleteIn-objects as value to a dart map
  static Map<String, List<EsignCompleteIn>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EsignCompleteIn>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EsignCompleteIn.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

