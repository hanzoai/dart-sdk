//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class CordonIn {
  /// Returns a new [CordonIn] instance.
  CordonIn({
    this.cordon,
    this.drain,
    this.id,
  });

  /// Cordon true marks the node unschedulable; false restores it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? cordon;

  /// Drain additionally evicts the pods already running there.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? drain;

  /// ID is the node's droplet id, from the path.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CordonIn &&
    other.cordon == cordon &&
    other.drain == drain &&
    other.id == id;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (cordon == null ? 0 : cordon!.hashCode) +
    (drain == null ? 0 : drain!.hashCode) +
    (id == null ? 0 : id!.hashCode);

  @override
  String toString() => 'CordonIn[cordon=$cordon, drain=$drain, id=$id]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.cordon != null) {
      json[r'cordon'] = this.cordon;
    } else {
      json[r'cordon'] = null;
    }
    if (this.drain != null) {
      json[r'drain'] = this.drain;
    } else {
      json[r'drain'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    return json;
  }

  /// Returns a new [CordonIn] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CordonIn? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CordonIn[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CordonIn[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CordonIn(
        cordon: mapValueOfType<bool>(json, r'cordon'),
        drain: mapValueOfType<bool>(json, r'drain'),
        id: mapValueOfType<String>(json, r'id'),
      );
    }
    return null;
  }

  static List<CordonIn> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CordonIn>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CordonIn.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CordonIn> mapFromJson(dynamic json) {
    final map = <String, CordonIn>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CordonIn.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CordonIn-objects as value to a dart map
  static Map<String, List<CordonIn>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CordonIn>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CordonIn.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

