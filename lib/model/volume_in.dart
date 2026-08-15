//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class VolumeIn {
  /// Returns a new [VolumeIn] instance.
  VolumeIn({
    this.id,
    this.name,
    this.sizeGiB,
    this.snapshot,
  });

  /// ID is the DO volume id, from the path.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// Name is the snapshot name on the snapshot action. Blank gets a deterministic \"<volume>-predelete-<unix>\" so the undo is findable in the DO console.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// SizeGiB is the target size on the resize action. A volume only ever grows — ExpandTo is the verdict that refuses a shrink, so this is not validated here.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? sizeGiB;

  /// Snapshot is the snapshot-first switch on DELETE. Anything other than the literal \"false\" snapshots before destroying — the snapshot IS the undo, so waiving it is deliberate and explicit.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? snapshot;

  @override
  bool operator ==(Object other) => identical(this, other) || other is VolumeIn &&
    other.id == id &&
    other.name == name &&
    other.sizeGiB == sizeGiB &&
    other.snapshot == snapshot;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (sizeGiB == null ? 0 : sizeGiB!.hashCode) +
    (snapshot == null ? 0 : snapshot!.hashCode);

  @override
  String toString() => 'VolumeIn[id=$id, name=$name, sizeGiB=$sizeGiB, snapshot=$snapshot]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.sizeGiB != null) {
      json[r'sizeGiB'] = this.sizeGiB;
    } else {
      json[r'sizeGiB'] = null;
    }
    if (this.snapshot != null) {
      json[r'snapshot'] = this.snapshot;
    } else {
      json[r'snapshot'] = null;
    }
    return json;
  }

  /// Returns a new [VolumeIn] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static VolumeIn? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "VolumeIn[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "VolumeIn[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return VolumeIn(
        id: mapValueOfType<String>(json, r'id'),
        name: mapValueOfType<String>(json, r'name'),
        sizeGiB: mapValueOfType<int>(json, r'sizeGiB'),
        snapshot: mapValueOfType<String>(json, r'snapshot'),
      );
    }
    return null;
  }

  static List<VolumeIn> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <VolumeIn>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = VolumeIn.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, VolumeIn> mapFromJson(dynamic json) {
    final map = <String, VolumeIn>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = VolumeIn.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of VolumeIn-objects as value to a dart map
  static Map<String, List<VolumeIn>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<VolumeIn>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = VolumeIn.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

