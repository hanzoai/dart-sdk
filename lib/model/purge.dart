//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Purge {
  /// Returns a new [Purge] instance.
  Purge({
    this.filter,
    this.keep,
    this.name,
  });

  /// Filter purges only messages on this org-relative subject (wildcards supported).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? filter;

  /// Keep retains that many newest messages.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? keep;

  /// Name is the stream name, from the path.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Purge &&
    other.filter == filter &&
    other.keep == keep &&
    other.name == name;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (filter == null ? 0 : filter!.hashCode) +
    (keep == null ? 0 : keep!.hashCode) +
    (name == null ? 0 : name!.hashCode);

  @override
  String toString() => 'Purge[filter=$filter, keep=$keep, name=$name]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.filter != null) {
      json[r'filter'] = this.filter;
    } else {
      json[r'filter'] = null;
    }
    if (this.keep != null) {
      json[r'keep'] = this.keep;
    } else {
      json[r'keep'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    return json;
  }

  /// Returns a new [Purge] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Purge? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Purge[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Purge[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Purge(
        filter: mapValueOfType<String>(json, r'filter'),
        keep: mapValueOfType<int>(json, r'keep'),
        name: mapValueOfType<String>(json, r'name'),
      );
    }
    return null;
  }

  static List<Purge> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Purge>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Purge.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Purge> mapFromJson(dynamic json) {
    final map = <String, Purge>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Purge.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Purge-objects as value to a dart map
  static Map<String, List<Purge>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Purge>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Purge.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

