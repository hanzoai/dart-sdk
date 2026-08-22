//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yO11yDashboardUpdateIn {
  /// Returns a new [O11yO11yDashboardUpdateIn] instance.
  O11yO11yDashboardUpdateIn({
    this.id,
    this.image,
    this.name,
    this.schemaVersion,
    this.spec,
    this.tags = const [],
  });
  /// ID is the dashboard id from the path.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? image;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? schemaVersion;

  Object? spec;

  List<O11yO11yDashboardPostableTag> tags;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yO11yDashboardUpdateIn &&
    other.id == id &&
    other.image == image &&
    other.name == name &&
    other.schemaVersion == schemaVersion &&
    other.spec == spec &&
    _deepEquality.equals(other.tags, tags);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (image == null ? 0 : image!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (schemaVersion == null ? 0 : schemaVersion!.hashCode) +
    (spec == null ? 0 : spec!.hashCode) +
    (tags.hashCode);

  @override
  String toString() => 'O11yO11yDashboardUpdateIn[id=$id, image=$image, name=$name, schemaVersion=$schemaVersion, spec=$spec, tags=$tags]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.image != null) {
      json[r'image'] = this.image;
    } else {
      json[r'image'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.schemaVersion != null) {
      json[r'schemaVersion'] = this.schemaVersion;
    } else {
      json[r'schemaVersion'] = null;
    }
    if (this.spec != null) {
      json[r'spec'] = this.spec;
    } else {
      json[r'spec'] = null;
    }
      json[r'tags'] = this.tags;
    return json;
  }

  /// Returns a new [O11yO11yDashboardUpdateIn] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yO11yDashboardUpdateIn? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yO11yDashboardUpdateIn[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yO11yDashboardUpdateIn[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yO11yDashboardUpdateIn(
        id: mapValueOfType<String>(json, r'id'),
        image: mapValueOfType<String>(json, r'image'),
        name: mapValueOfType<String>(json, r'name'),
        schemaVersion: mapValueOfType<String>(json, r'schemaVersion'),
        spec: mapValueOfType<Object>(json, r'spec'),
        tags: O11yO11yDashboardPostableTag.listFromJson(json[r'tags']),
      );
    }
    return null;
  }

  static List<O11yO11yDashboardUpdateIn> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yO11yDashboardUpdateIn>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yO11yDashboardUpdateIn.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yO11yDashboardUpdateIn> mapFromJson(dynamic json) {
    final map = <String, O11yO11yDashboardUpdateIn>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yO11yDashboardUpdateIn.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yO11yDashboardUpdateIn-objects as value to a dart map
  static Map<String, List<O11yO11yDashboardUpdateIn>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yO11yDashboardUpdateIn>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yO11yDashboardUpdateIn.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

