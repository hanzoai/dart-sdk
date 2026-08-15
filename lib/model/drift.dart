//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Drift {
  /// Returns a new [Drift] instance.
  Drift({
    this.disabled,
    this.down,
    this.drifted,
    this.name,
    this.running,
    this.versions = const [],
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? disabled;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? down;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? drifted;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? running;

  List<String> versions;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Drift &&
    other.disabled == disabled &&
    other.down == down &&
    other.drifted == drifted &&
    other.name == name &&
    other.running == running &&
    _deepEquality.equals(other.versions, versions);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (disabled == null ? 0 : disabled!.hashCode) +
    (down == null ? 0 : down!.hashCode) +
    (drifted == null ? 0 : drifted!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (running == null ? 0 : running!.hashCode) +
    (versions.hashCode);

  @override
  String toString() => 'Drift[disabled=$disabled, down=$down, drifted=$drifted, name=$name, running=$running, versions=$versions]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.disabled != null) {
      json[r'disabled'] = this.disabled;
    } else {
      json[r'disabled'] = null;
    }
    if (this.down != null) {
      json[r'down'] = this.down;
    } else {
      json[r'down'] = null;
    }
    if (this.drifted != null) {
      json[r'drifted'] = this.drifted;
    } else {
      json[r'drifted'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.running != null) {
      json[r'running'] = this.running;
    } else {
      json[r'running'] = null;
    }
      json[r'versions'] = this.versions;
    return json;
  }

  /// Returns a new [Drift] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Drift? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Drift[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Drift[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Drift(
        disabled: mapValueOfType<int>(json, r'disabled'),
        down: mapValueOfType<int>(json, r'down'),
        drifted: mapValueOfType<bool>(json, r'drifted'),
        name: mapValueOfType<String>(json, r'name'),
        running: mapValueOfType<int>(json, r'running'),
        versions: json[r'versions'] is Iterable
            ? (json[r'versions'] as Iterable).cast<String>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<Drift> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Drift>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Drift.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Drift> mapFromJson(dynamic json) {
    final map = <String, Drift>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Drift.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Drift-objects as value to a dart map
  static Map<String, List<Drift>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Drift>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Drift.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

