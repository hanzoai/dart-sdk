//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class SetFlagIn {
  /// Returns a new [SetFlagIn] instance.
  SetFlagIn({
    this.active,
    this.filters,
    this.key,
  });

  /// Active is the switch itself: true enables the flag for every evaluation.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? active;

  Object? filters;

  /// Key is the switch to write, taken from the path (e.g. \"waitlist.chat\").
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? key;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SetFlagIn &&
    other.active == active &&
    other.filters == filters &&
    other.key == key;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (active == null ? 0 : active!.hashCode) +
    (filters == null ? 0 : filters!.hashCode) +
    (key == null ? 0 : key!.hashCode);

  @override
  String toString() => 'SetFlagIn[active=$active, filters=$filters, key=$key]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.active != null) {
      json[r'active'] = this.active;
    } else {
      json[r'active'] = null;
    }
    if (this.filters != null) {
      json[r'filters'] = this.filters;
    } else {
      json[r'filters'] = null;
    }
    if (this.key != null) {
      json[r'key'] = this.key;
    } else {
      json[r'key'] = null;
    }
    return json;
  }

  /// Returns a new [SetFlagIn] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SetFlagIn? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SetFlagIn[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SetFlagIn[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SetFlagIn(
        active: mapValueOfType<bool>(json, r'active'),
        filters: mapValueOfType<Object>(json, r'filters'),
        key: mapValueOfType<String>(json, r'key'),
      );
    }
    return null;
  }

  static List<SetFlagIn> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SetFlagIn>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SetFlagIn.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SetFlagIn> mapFromJson(dynamic json) {
    final map = <String, SetFlagIn>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SetFlagIn.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SetFlagIn-objects as value to a dart map
  static Map<String, List<SetFlagIn>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SetFlagIn>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SetFlagIn.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

