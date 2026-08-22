//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Index {
  /// Returns a new [Index] instance.
  Index({
    this.links = const {},
    this.description,
    this.name,
    this.operations = const [],
    this.stage,
  });
  Map<String, Link> links;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  List<Op> operations;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? stage;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Index &&
    _deepEquality.equals(other.links, links) &&
    other.description == description &&
    other.name == name &&
    _deepEquality.equals(other.operations, operations) &&
    other.stage == stage;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (links.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (operations.hashCode) +
    (stage == null ? 0 : stage!.hashCode);

  @override
  String toString() => 'Index[links=$links, description=$description, name=$name, operations=$operations, stage=$stage]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'_links'] = this.links;
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
      json[r'operations'] = this.operations;
    if (this.stage != null) {
      json[r'stage'] = this.stage;
    } else {
      json[r'stage'] = null;
    }
    return json;
  }

  /// Returns a new [Index] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Index? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Index[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Index[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Index(
        links: Link.mapFromJson(json[r'_links']),
        description: mapValueOfType<String>(json, r'description'),
        name: mapValueOfType<String>(json, r'name'),
        operations: Op.listFromJson(json[r'operations']),
        stage: mapValueOfType<String>(json, r'stage'),
      );
    }
    return null;
  }

  static List<Index> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Index>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Index.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Index> mapFromJson(dynamic json) {
    final map = <String, Index>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Index.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Index-objects as value to a dart map
  static Map<String, List<Index>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Index>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Index.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

