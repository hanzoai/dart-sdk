//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ByoGPU {
  /// Returns a new [ByoGPU] instance.
  ByoGPU({
    this.arch,
    this.memoryTotal,
    this.name,
    this.unified,
  });
  /// Arch is the card's native compile target (\"gfx1151\"), which is what a kernel has to be built for. AMD reports one; NVIDIA cards leave it empty.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? arch;

  /// MemoryTotal is the card's VRAM in the units the host reported it in (\"122880 MiB\") — a display string, not a byte count. On a unified part it is the shared CPU/GPU pool, so it is not memory reserved for the GPU.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? memoryTotal;

  /// Name is the card's model exactly as its own tooling named it (\"NVIDIA GB10\"), never normalized — an operator matches what they see here against what nvidia-smi tells them on the box.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// Unified reports that CPU and GPU share one memory pool (an APU or SoC), so MemoryTotal is not private to the GPU and the host competes for it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? unified;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ByoGPU &&
    other.arch == arch &&
    other.memoryTotal == memoryTotal &&
    other.name == name &&
    other.unified == unified;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (arch == null ? 0 : arch!.hashCode) +
    (memoryTotal == null ? 0 : memoryTotal!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (unified == null ? 0 : unified!.hashCode);

  @override
  String toString() => 'ByoGPU[arch=$arch, memoryTotal=$memoryTotal, name=$name, unified=$unified]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.arch != null) {
      json[r'arch'] = this.arch;
    } else {
      json[r'arch'] = null;
    }
    if (this.memoryTotal != null) {
      json[r'memoryTotal'] = this.memoryTotal;
    } else {
      json[r'memoryTotal'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.unified != null) {
      json[r'unified'] = this.unified;
    } else {
      json[r'unified'] = null;
    }
    return json;
  }

  /// Returns a new [ByoGPU] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ByoGPU? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ByoGPU[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ByoGPU[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ByoGPU(
        arch: mapValueOfType<String>(json, r'arch'),
        memoryTotal: mapValueOfType<String>(json, r'memoryTotal'),
        name: mapValueOfType<String>(json, r'name'),
        unified: mapValueOfType<bool>(json, r'unified'),
      );
    }
    return null;
  }

  static List<ByoGPU> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ByoGPU>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ByoGPU.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ByoGPU> mapFromJson(dynamic json) {
    final map = <String, ByoGPU>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ByoGPU.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ByoGPU-objects as value to a dart map
  static Map<String, List<ByoGPU>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ByoGPU>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ByoGPU.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

