//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Detachment {
  /// Returns a new [Detachment] instance.
  Detachment({
    this.deleted,
    this.id,
  });
  /// Deleted is whether the method was actually removed. False with no error means it was already gone, which is a successful detach rather than a failure — a retry must not be an error.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? deleted;

  /// ID is the method that was detached, echoed so a caller batching several can tell the answers apart.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Detachment &&
    other.deleted == deleted &&
    other.id == id;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (deleted == null ? 0 : deleted!.hashCode) +
    (id == null ? 0 : id!.hashCode);

  @override
  String toString() => 'Detachment[deleted=$deleted, id=$id]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.deleted != null) {
      json[r'deleted'] = this.deleted;
    } else {
      json[r'deleted'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    return json;
  }

  /// Returns a new [Detachment] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Detachment? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Detachment[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Detachment[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Detachment(
        deleted: mapValueOfType<bool>(json, r'deleted'),
        id: mapValueOfType<String>(json, r'id'),
      );
    }
    return null;
  }

  static List<Detachment> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Detachment>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Detachment.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Detachment> mapFromJson(dynamic json) {
    final map = <String, Detachment>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Detachment.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Detachment-objects as value to a dart map
  static Map<String, List<Detachment>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Detachment>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Detachment.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

