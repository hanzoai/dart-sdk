//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Appearance {
  /// Returns a new [Appearance] instance.
  Appearance({
    this.accent,
    this.density,
    this.type,
  });
  /// Accent is the one hue — a CSS colour token (a hex, or a bounded functional colour like rgb()/oklch()). Anything else is dropped rather than stored.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? accent;

  /// Density is the spacing step: \"compact\", \"default\" or \"comfortable\".
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? density;

  /// Type is the text-size multiplier, clamped to the ramp window [0.85, 1.4]. Absent (0) leaves the published default.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? type;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Appearance &&
    other.accent == accent &&
    other.density == density &&
    other.type == type;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (accent == null ? 0 : accent!.hashCode) +
    (density == null ? 0 : density!.hashCode) +
    (type == null ? 0 : type!.hashCode);

  @override
  String toString() => 'Appearance[accent=$accent, density=$density, type=$type]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.accent != null) {
      json[r'accent'] = this.accent;
    } else {
      json[r'accent'] = null;
    }
    if (this.density != null) {
      json[r'density'] = this.density;
    } else {
      json[r'density'] = null;
    }
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
    return json;
  }

  /// Returns a new [Appearance] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Appearance? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Appearance[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Appearance[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Appearance(
        accent: mapValueOfType<String>(json, r'accent'),
        density: mapValueOfType<String>(json, r'density'),
        type: num.parse('${json[r'type']}'),
      );
    }
    return null;
  }

  static List<Appearance> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Appearance>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Appearance.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Appearance> mapFromJson(dynamic json) {
    final map = <String, Appearance>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Appearance.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Appearance-objects as value to a dart map
  static Map<String, List<Appearance>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Appearance>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Appearance.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

