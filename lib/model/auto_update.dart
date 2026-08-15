//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class AutoUpdate {
  /// Returns a new [AutoUpdate] instance.
  AutoUpdate({
    this.data,
    this.flow,
    this.name,
  });

  Object? data;

  /// Flow is the flow's id, taken from the path.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? flow;

  /// Name renames the flow when present.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AutoUpdate &&
    other.data == data &&
    other.flow == flow &&
    other.name == name;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (data == null ? 0 : data!.hashCode) +
    (flow == null ? 0 : flow!.hashCode) +
    (name == null ? 0 : name!.hashCode);

  @override
  String toString() => 'AutoUpdate[data=$data, flow=$flow, name=$name]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.data != null) {
      json[r'data'] = this.data;
    } else {
      json[r'data'] = null;
    }
    if (this.flow != null) {
      json[r'flow'] = this.flow;
    } else {
      json[r'flow'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    return json;
  }

  /// Returns a new [AutoUpdate] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AutoUpdate? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AutoUpdate[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AutoUpdate[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AutoUpdate(
        data: mapValueOfType<Object>(json, r'data'),
        flow: mapValueOfType<String>(json, r'flow'),
        name: mapValueOfType<String>(json, r'name'),
      );
    }
    return null;
  }

  static List<AutoUpdate> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AutoUpdate>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AutoUpdate.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AutoUpdate> mapFromJson(dynamic json) {
    final map = <String, AutoUpdate>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AutoUpdate.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AutoUpdate-objects as value to a dart map
  static Map<String, List<AutoUpdate>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AutoUpdate>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AutoUpdate.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

