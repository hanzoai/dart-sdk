//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class AutoStart {
  /// Returns a new [AutoStart] instance.
  AutoStart({
    this.flow,
    this.input,
  });

  /// Flow is the id of the flow to run.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? flow;

  Object? input;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AutoStart &&
    other.flow == flow &&
    other.input == input;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (flow == null ? 0 : flow!.hashCode) +
    (input == null ? 0 : input!.hashCode);

  @override
  String toString() => 'AutoStart[flow=$flow, input=$input]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.flow != null) {
      json[r'flow'] = this.flow;
    } else {
      json[r'flow'] = null;
    }
    if (this.input != null) {
      json[r'input'] = this.input;
    } else {
      json[r'input'] = null;
    }
    return json;
  }

  /// Returns a new [AutoStart] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AutoStart? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AutoStart[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AutoStart[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AutoStart(
        flow: mapValueOfType<String>(json, r'flow'),
        input: mapValueOfType<Object>(json, r'input'),
      );
    }
    return null;
  }

  static List<AutoStart> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AutoStart>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AutoStart.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AutoStart> mapFromJson(dynamic json) {
    final map = <String, AutoStart>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AutoStart.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AutoStart-objects as value to a dart map
  static Map<String, List<AutoStart>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AutoStart>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AutoStart.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

