//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Location {
  /// Returns a new [Location] instance.
  Location({
    this.external_,
    this.path,
    this.range,
  });
  /// External is true when the answer left the repository — the case a static index cannot answer, and the reason this service resolves through dependencies.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? external_;

  /// Path is repo-relative while External is false, and the module coordinate (\"golang.org/x/mod@v0.14.0/semver/semver.go\") once it is true.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? path;

  /// Range is the span inside that file, in LSP positions.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Range? range;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Location &&
    other.external_ == external_ &&
    other.path == path &&
    other.range == range;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (external_ == null ? 0 : external_!.hashCode) +
    (path == null ? 0 : path!.hashCode) +
    (range == null ? 0 : range!.hashCode);

  @override
  String toString() => 'Location[external_=$external_, path=$path, range=$range]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.external_ != null) {
      json[r'external'] = this.external_;
    } else {
      json[r'external'] = null;
    }
    if (this.path != null) {
      json[r'path'] = this.path;
    } else {
      json[r'path'] = null;
    }
    if (this.range != null) {
      json[r'range'] = this.range;
    } else {
      json[r'range'] = null;
    }
    return json;
  }

  /// Returns a new [Location] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Location? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Location[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Location[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Location(
        external_: mapValueOfType<bool>(json, r'external'),
        path: mapValueOfType<String>(json, r'path'),
        range: Range.fromJson(json[r'range']),
      );
    }
    return null;
  }

  static List<Location> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Location>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Location.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Location> mapFromJson(dynamic json) {
    final map = <String, Location>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Location.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Location-objects as value to a dart map
  static Map<String, List<Location>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Location>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Location.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

