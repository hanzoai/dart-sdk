//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yO11yDashboardPostable {
  /// Returns a new [O11yO11yDashboardPostable] instance.
  O11yO11yDashboardPostable({
    this.generateName,
    this.image,
    this.name,
    this.schemaVersion,
    this.spec,
    this.tags = const [],
  });

  /// GenerateName derives a fresh unique name from spec.display.name instead of taking Name.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? generateName;

  /// Image is an optional cover image reference.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? image;

  /// Name is the dashboard's unique internal name (a DNS-1123 label). Omit it with generateName to derive one from the display name.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// SchemaVersion is the dashboard schema version; must be the current v6.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? schemaVersion;

  Object? spec;

  /// Tags are the dashboard's tags; at most ten, and none may use a reserved DSL key.
  List<O11yO11yDashboardPostableTag> tags;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yO11yDashboardPostable &&
    other.generateName == generateName &&
    other.image == image &&
    other.name == name &&
    other.schemaVersion == schemaVersion &&
    other.spec == spec &&
    _deepEquality.equals(other.tags, tags);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (generateName == null ? 0 : generateName!.hashCode) +
    (image == null ? 0 : image!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (schemaVersion == null ? 0 : schemaVersion!.hashCode) +
    (spec == null ? 0 : spec!.hashCode) +
    (tags.hashCode);

  @override
  String toString() => 'O11yO11yDashboardPostable[generateName=$generateName, image=$image, name=$name, schemaVersion=$schemaVersion, spec=$spec, tags=$tags]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.generateName != null) {
      json[r'generateName'] = this.generateName;
    } else {
      json[r'generateName'] = null;
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

  /// Returns a new [O11yO11yDashboardPostable] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yO11yDashboardPostable? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yO11yDashboardPostable[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yO11yDashboardPostable[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yO11yDashboardPostable(
        generateName: mapValueOfType<bool>(json, r'generateName'),
        image: mapValueOfType<String>(json, r'image'),
        name: mapValueOfType<String>(json, r'name'),
        schemaVersion: mapValueOfType<String>(json, r'schemaVersion'),
        spec: mapValueOfType<Object>(json, r'spec'),
        tags: O11yO11yDashboardPostableTag.listFromJson(json[r'tags']),
      );
    }
    return null;
  }

  static List<O11yO11yDashboardPostable> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yO11yDashboardPostable>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yO11yDashboardPostable.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yO11yDashboardPostable> mapFromJson(dynamic json) {
    final map = <String, O11yO11yDashboardPostable>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yO11yDashboardPostable.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yO11yDashboardPostable-objects as value to a dart map
  static Map<String, List<O11yO11yDashboardPostable>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yO11yDashboardPostable>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yO11yDashboardPostable.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

