//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Health {
  /// Returns a new [Health] instance.
  Health({
    this.ok,
    this.subsystem,
  });
  /// OK is true whenever this route answers at all: reaching the handler IS the proof that the routes are registered and dispatching.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? ok;

  /// Subsystem names what answered, so a health response read out of context still says which surface it came from.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? subsystem;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Health &&
    other.ok == ok &&
    other.subsystem == subsystem;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (ok == null ? 0 : ok!.hashCode) +
    (subsystem == null ? 0 : subsystem!.hashCode);

  @override
  String toString() => 'Health[ok=$ok, subsystem=$subsystem]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.ok != null) {
      json[r'ok'] = this.ok;
    } else {
      json[r'ok'] = null;
    }
    if (this.subsystem != null) {
      json[r'subsystem'] = this.subsystem;
    } else {
      json[r'subsystem'] = null;
    }
    return json;
  }

  /// Returns a new [Health] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Health? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Health[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Health[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Health(
        ok: mapValueOfType<bool>(json, r'ok'),
        subsystem: mapValueOfType<String>(json, r'subsystem'),
      );
    }
    return null;
  }

  static List<Health> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Health>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Health.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Health> mapFromJson(dynamic json) {
    final map = <String, Health>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Health.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Health-objects as value to a dart map
  static Map<String, List<Health>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Health>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Health.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

