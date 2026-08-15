//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Stopped {
  /// Returns a new [Stopped] instance.
  Stopped({
    this.stopped,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? stopped;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Stopped &&
    other.stopped == stopped;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (stopped == null ? 0 : stopped!.hashCode);

  @override
  String toString() => 'Stopped[stopped=$stopped]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.stopped != null) {
      json[r'stopped'] = this.stopped;
    } else {
      json[r'stopped'] = null;
    }
    return json;
  }

  /// Returns a new [Stopped] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Stopped? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Stopped[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Stopped[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Stopped(
        stopped: mapValueOfType<int>(json, r'stopped'),
      );
    }
    return null;
  }

  static List<Stopped> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Stopped>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Stopped.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Stopped> mapFromJson(dynamic json) {
    final map = <String, Stopped>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Stopped.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Stopped-objects as value to a dart map
  static Map<String, List<Stopped>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Stopped>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Stopped.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

