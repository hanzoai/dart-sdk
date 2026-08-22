//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Spec {
  /// Returns a new [Spec] instance.
  Spec({
    this.arch,
    this.cpus,
    this.gpus = const [],
    this.memory,
    this.os,
  });
  /// amd64 | arm64 | ...
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? arch;

  /// logical cores
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? cpus;

  /// GPUs is every accelerator the machine advertises, one entry each, capped at 32 on write. Empty means the probe found none — and that is the answer a Need is checked against, so a machine with no entry here clears no accelerator floor. The list is not vendor-filtered: what satisfies a job is counts and VRAM, never a brand (see Need).
  List<GPU> gpus;

  /// total RAM, bytes
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? memory;

  /// linux | darwin | windows
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? os;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Spec &&
    other.arch == arch &&
    other.cpus == cpus &&
    _deepEquality.equals(other.gpus, gpus) &&
    other.memory == memory &&
    other.os == os;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (arch == null ? 0 : arch!.hashCode) +
    (cpus == null ? 0 : cpus!.hashCode) +
    (gpus.hashCode) +
    (memory == null ? 0 : memory!.hashCode) +
    (os == null ? 0 : os!.hashCode);

  @override
  String toString() => 'Spec[arch=$arch, cpus=$cpus, gpus=$gpus, memory=$memory, os=$os]';

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
      json[r'gpus'] = this.gpus;
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

  /// Returns a new [Spec] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Spec? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Spec[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Spec[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Spec(
        arch: mapValueOfType<String>(json, r'arch'),
        cpus: mapValueOfType<int>(json, r'cpus'),
        gpus: GPU.listFromJson(json[r'gpus']),
        memory: mapValueOfType<int>(json, r'memory'),
        os: mapValueOfType<String>(json, r'os'),
      );
    }
    return null;
  }

  static List<Spec> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Spec>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Spec.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Spec> mapFromJson(dynamic json) {
    final map = <String, Spec>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Spec.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Spec-objects as value to a dart map
  static Map<String, List<Spec>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Spec>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Spec.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

