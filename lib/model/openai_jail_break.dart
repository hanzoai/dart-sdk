//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class OpenaiJailBreak {
  /// Returns a new [OpenaiJailBreak] instance.
  OpenaiJailBreak({
    this.detected,
    this.filtered,
  });
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? detected;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? filtered;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OpenaiJailBreak &&
    other.detected == detected &&
    other.filtered == filtered;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (detected == null ? 0 : detected!.hashCode) +
    (filtered == null ? 0 : filtered!.hashCode);

  @override
  String toString() => 'OpenaiJailBreak[detected=$detected, filtered=$filtered]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.detected != null) {
      json[r'detected'] = this.detected;
    } else {
      json[r'detected'] = null;
    }
    if (this.filtered != null) {
      json[r'filtered'] = this.filtered;
    } else {
      json[r'filtered'] = null;
    }
    return json;
  }

  /// Returns a new [OpenaiJailBreak] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OpenaiJailBreak? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "OpenaiJailBreak[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "OpenaiJailBreak[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return OpenaiJailBreak(
        detected: mapValueOfType<bool>(json, r'detected'),
        filtered: mapValueOfType<bool>(json, r'filtered'),
      );
    }
    return null;
  }

  static List<OpenaiJailBreak> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OpenaiJailBreak>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OpenaiJailBreak.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OpenaiJailBreak> mapFromJson(dynamic json) {
    final map = <String, OpenaiJailBreak>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OpenaiJailBreak.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OpenaiJailBreak-objects as value to a dart map
  static Map<String, List<OpenaiJailBreak>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<OpenaiJailBreak>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = OpenaiJailBreak.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

