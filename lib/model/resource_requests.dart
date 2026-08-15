//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ResourceRequests {
  /// Returns a new [ResourceRequests] instance.
  ResourceRequests({
    this.cpu,
    this.memory,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? cpu;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? memory;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ResourceRequests &&
    other.cpu == cpu &&
    other.memory == memory;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (cpu == null ? 0 : cpu!.hashCode) +
    (memory == null ? 0 : memory!.hashCode);

  @override
  String toString() => 'ResourceRequests[cpu=$cpu, memory=$memory]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.cpu != null) {
      json[r'cpu'] = this.cpu;
    } else {
      json[r'cpu'] = null;
    }
    if (this.memory != null) {
      json[r'memory'] = this.memory;
    } else {
      json[r'memory'] = null;
    }
    return json;
  }

  /// Returns a new [ResourceRequests] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ResourceRequests? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ResourceRequests[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ResourceRequests[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ResourceRequests(
        cpu: mapValueOfType<String>(json, r'cpu'),
        memory: mapValueOfType<String>(json, r'memory'),
      );
    }
    return null;
  }

  static List<ResourceRequests> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ResourceRequests>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ResourceRequests.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ResourceRequests> mapFromJson(dynamic json) {
    final map = <String, ResourceRequests>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ResourceRequests.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ResourceRequests-objects as value to a dart map
  static Map<String, List<ResourceRequests>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ResourceRequests>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ResourceRequests.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

