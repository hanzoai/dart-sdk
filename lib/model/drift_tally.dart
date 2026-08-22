//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class DriftTally {
  /// Returns a new [DriftTally] instance.
  DriftTally({
    this.ok,
    this.red,
    this.yellow,
  });
  /// OK is how many rows run what they declare.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? ok;

  /// Red is how many have drifted badly.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? red;

  /// Yellow is how many have drifted within tolerance.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? yellow;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DriftTally &&
    other.ok == ok &&
    other.red == red &&
    other.yellow == yellow;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (ok == null ? 0 : ok!.hashCode) +
    (red == null ? 0 : red!.hashCode) +
    (yellow == null ? 0 : yellow!.hashCode);

  @override
  String toString() => 'DriftTally[ok=$ok, red=$red, yellow=$yellow]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.ok != null) {
      json[r'ok'] = this.ok;
    } else {
      json[r'ok'] = null;
    }
    if (this.red != null) {
      json[r'red'] = this.red;
    } else {
      json[r'red'] = null;
    }
    if (this.yellow != null) {
      json[r'yellow'] = this.yellow;
    } else {
      json[r'yellow'] = null;
    }
    return json;
  }

  /// Returns a new [DriftTally] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DriftTally? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DriftTally[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DriftTally[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DriftTally(
        ok: mapValueOfType<int>(json, r'ok'),
        red: mapValueOfType<int>(json, r'red'),
        yellow: mapValueOfType<int>(json, r'yellow'),
      );
    }
    return null;
  }

  static List<DriftTally> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DriftTally>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DriftTally.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DriftTally> mapFromJson(dynamic json) {
    final map = <String, DriftTally>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DriftTally.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DriftTally-objects as value to a dart map
  static Map<String, List<DriftTally>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DriftTally>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DriftTally.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

