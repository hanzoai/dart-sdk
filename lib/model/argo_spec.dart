//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ArgoSpec {
  /// Returns a new [ArgoSpec] instance.
  ArgoSpec({
    this.destination,
    this.project,
    this.source_,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ArgoDestination? destination;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? project;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ArgoSource? source_;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ArgoSpec &&
    other.destination == destination &&
    other.project == project &&
    other.source_ == source_;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (destination == null ? 0 : destination!.hashCode) +
    (project == null ? 0 : project!.hashCode) +
    (source_ == null ? 0 : source_!.hashCode);

  @override
  String toString() => 'ArgoSpec[destination=$destination, project=$project, source_=$source_]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.destination != null) {
      json[r'destination'] = this.destination;
    } else {
      json[r'destination'] = null;
    }
    if (this.project != null) {
      json[r'project'] = this.project;
    } else {
      json[r'project'] = null;
    }
    if (this.source_ != null) {
      json[r'source'] = this.source_;
    } else {
      json[r'source'] = null;
    }
    return json;
  }

  /// Returns a new [ArgoSpec] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ArgoSpec? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ArgoSpec[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ArgoSpec[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ArgoSpec(
        destination: ArgoDestination.fromJson(json[r'destination']),
        project: mapValueOfType<String>(json, r'project'),
        source_: ArgoSource.fromJson(json[r'source']),
      );
    }
    return null;
  }

  static List<ArgoSpec> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ArgoSpec>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ArgoSpec.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ArgoSpec> mapFromJson(dynamic json) {
    final map = <String, ArgoSpec>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ArgoSpec.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ArgoSpec-objects as value to a dart map
  static Map<String, List<ArgoSpec>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ArgoSpec>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ArgoSpec.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

