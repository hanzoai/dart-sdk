//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class DropletIn {
  /// Returns a new [DropletIn] instance.
  DropletIn({
    this.disk,
    this.id,
    this.size,
  });

  /// Disk requests a PERMANENT resize that grows the disk. DO can never resize such a droplet down again, so it defaults false — a CPU/RAM-only change, reversible.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? disk;

  /// ID is the DO droplet id, from the path. Numeric.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// Size is the target DigitalOcean size slug on resize, e.g. \"s-4vcpu-8gb\".
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? size;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DropletIn &&
    other.disk == disk &&
    other.id == id &&
    other.size == size;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (disk == null ? 0 : disk!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (size == null ? 0 : size!.hashCode);

  @override
  String toString() => 'DropletIn[disk=$disk, id=$id, size=$size]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.disk != null) {
      json[r'disk'] = this.disk;
    } else {
      json[r'disk'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.size != null) {
      json[r'size'] = this.size;
    } else {
      json[r'size'] = null;
    }
    return json;
  }

  /// Returns a new [DropletIn] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DropletIn? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DropletIn[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DropletIn[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DropletIn(
        disk: mapValueOfType<bool>(json, r'disk'),
        id: mapValueOfType<String>(json, r'id'),
        size: mapValueOfType<String>(json, r'size'),
      );
    }
    return null;
  }

  static List<DropletIn> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DropletIn>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DropletIn.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DropletIn> mapFromJson(dynamic json) {
    final map = <String, DropletIn>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DropletIn.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DropletIn-objects as value to a dart map
  static Map<String, List<DropletIn>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DropletIn>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DropletIn.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

