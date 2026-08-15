//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class GPU {
  /// Returns a new [GPU] instance.
  GPU({
    this.memory,
    this.model,
    this.vendor,
  });

  /// VRAM bytes, 0 = unknown
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? memory;

  /// \"GB10\", \"8060S\", \"RTX 4090\"
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? model;

  /// nvidia | amd | apple | intel | ...
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? vendor;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GPU &&
    other.memory == memory &&
    other.model == model &&
    other.vendor == vendor;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (memory == null ? 0 : memory!.hashCode) +
    (model == null ? 0 : model!.hashCode) +
    (vendor == null ? 0 : vendor!.hashCode);

  @override
  String toString() => 'GPU[memory=$memory, model=$model, vendor=$vendor]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.memory != null) {
      json[r'memory'] = this.memory;
    } else {
      json[r'memory'] = null;
    }
    if (this.model != null) {
      json[r'model'] = this.model;
    } else {
      json[r'model'] = null;
    }
    if (this.vendor != null) {
      json[r'vendor'] = this.vendor;
    } else {
      json[r'vendor'] = null;
    }
    return json;
  }

  /// Returns a new [GPU] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GPU? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GPU[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GPU[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GPU(
        memory: mapValueOfType<int>(json, r'memory'),
        model: mapValueOfType<String>(json, r'model'),
        vendor: mapValueOfType<String>(json, r'vendor'),
      );
    }
    return null;
  }

  static List<GPU> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GPU>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GPU.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GPU> mapFromJson(dynamic json) {
    final map = <String, GPU>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GPU.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GPU-objects as value to a dart map
  static Map<String, List<GPU>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GPU>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GPU.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

