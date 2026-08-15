//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class FleetSpec {
  /// Returns a new [FleetSpec] instance.
  FleetSpec({
    this.arch,
    this.cpus,
    this.gpuModel,
    this.gpus,
    this.memory,
    this.os,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? arch;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? cpus;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? gpuModel;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? gpus;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? memory;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? os;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FleetSpec &&
    other.arch == arch &&
    other.cpus == cpus &&
    other.gpuModel == gpuModel &&
    other.gpus == gpus &&
    other.memory == memory &&
    other.os == os;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (arch == null ? 0 : arch!.hashCode) +
    (cpus == null ? 0 : cpus!.hashCode) +
    (gpuModel == null ? 0 : gpuModel!.hashCode) +
    (gpus == null ? 0 : gpus!.hashCode) +
    (memory == null ? 0 : memory!.hashCode) +
    (os == null ? 0 : os!.hashCode);

  @override
  String toString() => 'FleetSpec[arch=$arch, cpus=$cpus, gpuModel=$gpuModel, gpus=$gpus, memory=$memory, os=$os]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.arch != null) {
      json[r'arch'] = this.arch;
    } else {
      json[r'arch'] = null;
    }
    if (this.cpus != null) {
      json[r'cpus'] = this.cpus;
    } else {
      json[r'cpus'] = null;
    }
    if (this.gpuModel != null) {
      json[r'gpuModel'] = this.gpuModel;
    } else {
      json[r'gpuModel'] = null;
    }
    if (this.gpus != null) {
      json[r'gpus'] = this.gpus;
    } else {
      json[r'gpus'] = null;
    }
    if (this.memory != null) {
      json[r'memory'] = this.memory;
    } else {
      json[r'memory'] = null;
    }
    if (this.os != null) {
      json[r'os'] = this.os;
    } else {
      json[r'os'] = null;
    }
    return json;
  }

  /// Returns a new [FleetSpec] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static FleetSpec? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "FleetSpec[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "FleetSpec[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return FleetSpec(
        arch: mapValueOfType<String>(json, r'arch'),
        cpus: mapValueOfType<int>(json, r'cpus'),
        gpuModel: mapValueOfType<String>(json, r'gpuModel'),
        gpus: mapValueOfType<int>(json, r'gpus'),
        memory: mapValueOfType<int>(json, r'memory'),
        os: mapValueOfType<String>(json, r'os'),
      );
    }
    return null;
  }

  static List<FleetSpec> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <FleetSpec>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FleetSpec.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, FleetSpec> mapFromJson(dynamic json) {
    final map = <String, FleetSpec>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = FleetSpec.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of FleetSpec-objects as value to a dart map
  static Map<String, List<FleetSpec>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<FleetSpec>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = FleetSpec.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

