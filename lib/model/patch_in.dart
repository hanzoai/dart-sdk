//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class PatchIn {
  /// Returns a new [PatchIn] instance.
  PatchIn({
    this.name,
    this.public,
  });

  /// Name is the repo to update, from the :name path segment.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// Public flips anonymous read access. Omit it and the request is refused — there is nothing else to update yet.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? public;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PatchIn &&
    other.name == name &&
    other.public == public;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name == null ? 0 : name!.hashCode) +
    (public == null ? 0 : public!.hashCode);

  @override
  String toString() => 'PatchIn[name=$name, public=$public]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.public != null) {
      json[r'public'] = this.public;
    } else {
      json[r'public'] = null;
    }
    return json;
  }

  /// Returns a new [PatchIn] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PatchIn? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PatchIn[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PatchIn[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PatchIn(
        name: mapValueOfType<String>(json, r'name'),
        public: mapValueOfType<bool>(json, r'public'),
      );
    }
    return null;
  }

  static List<PatchIn> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PatchIn>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PatchIn.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PatchIn> mapFromJson(dynamic json) {
    final map = <String, PatchIn>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PatchIn.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PatchIn-objects as value to a dart map
  static Map<String, List<PatchIn>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PatchIn>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PatchIn.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

