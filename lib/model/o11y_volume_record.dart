//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yVolumeRecord {
  /// Returns a new [O11yVolumeRecord] instance.
  O11yVolumeRecord({
    this.meta = const {},
    this.persistentVolumeClaimName,
    this.volumeAvailable,
    this.volumeCapacity,
    this.volumeInodes,
    this.volumeInodesFree,
    this.volumeInodesUsed,
    this.volumeUsage,
  });

  Map<String, String> meta;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? persistentVolumeClaimName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? volumeAvailable;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? volumeCapacity;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? volumeInodes;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? volumeInodesFree;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? volumeInodesUsed;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? volumeUsage;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yVolumeRecord &&
    _deepEquality.equals(other.meta, meta) &&
    other.persistentVolumeClaimName == persistentVolumeClaimName &&
    other.volumeAvailable == volumeAvailable &&
    other.volumeCapacity == volumeCapacity &&
    other.volumeInodes == volumeInodes &&
    other.volumeInodesFree == volumeInodesFree &&
    other.volumeInodesUsed == volumeInodesUsed &&
    other.volumeUsage == volumeUsage;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (meta.hashCode) +
    (persistentVolumeClaimName == null ? 0 : persistentVolumeClaimName!.hashCode) +
    (volumeAvailable == null ? 0 : volumeAvailable!.hashCode) +
    (volumeCapacity == null ? 0 : volumeCapacity!.hashCode) +
    (volumeInodes == null ? 0 : volumeInodes!.hashCode) +
    (volumeInodesFree == null ? 0 : volumeInodesFree!.hashCode) +
    (volumeInodesUsed == null ? 0 : volumeInodesUsed!.hashCode) +
    (volumeUsage == null ? 0 : volumeUsage!.hashCode);

  @override
  String toString() => 'O11yVolumeRecord[meta=$meta, persistentVolumeClaimName=$persistentVolumeClaimName, volumeAvailable=$volumeAvailable, volumeCapacity=$volumeCapacity, volumeInodes=$volumeInodes, volumeInodesFree=$volumeInodesFree, volumeInodesUsed=$volumeInodesUsed, volumeUsage=$volumeUsage]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'meta'] = this.meta;
    if (this.persistentVolumeClaimName != null) {
      json[r'persistentVolumeClaimName'] = this.persistentVolumeClaimName;
    } else {
      json[r'persistentVolumeClaimName'] = null;
    }
    if (this.volumeAvailable != null) {
      json[r'volumeAvailable'] = this.volumeAvailable;
    } else {
      json[r'volumeAvailable'] = null;
    }
    if (this.volumeCapacity != null) {
      json[r'volumeCapacity'] = this.volumeCapacity;
    } else {
      json[r'volumeCapacity'] = null;
    }
    if (this.volumeInodes != null) {
      json[r'volumeInodes'] = this.volumeInodes;
    } else {
      json[r'volumeInodes'] = null;
    }
    if (this.volumeInodesFree != null) {
      json[r'volumeInodesFree'] = this.volumeInodesFree;
    } else {
      json[r'volumeInodesFree'] = null;
    }
    if (this.volumeInodesUsed != null) {
      json[r'volumeInodesUsed'] = this.volumeInodesUsed;
    } else {
      json[r'volumeInodesUsed'] = null;
    }
    if (this.volumeUsage != null) {
      json[r'volumeUsage'] = this.volumeUsage;
    } else {
      json[r'volumeUsage'] = null;
    }
    return json;
  }

  /// Returns a new [O11yVolumeRecord] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yVolumeRecord? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yVolumeRecord[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yVolumeRecord[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yVolumeRecord(
        meta: mapCastOfType<String, String>(json, r'meta') ?? const {},
        persistentVolumeClaimName: mapValueOfType<String>(json, r'persistentVolumeClaimName'),
        volumeAvailable: num.parse('${json[r'volumeAvailable']}'),
        volumeCapacity: num.parse('${json[r'volumeCapacity']}'),
        volumeInodes: num.parse('${json[r'volumeInodes']}'),
        volumeInodesFree: num.parse('${json[r'volumeInodesFree']}'),
        volumeInodesUsed: num.parse('${json[r'volumeInodesUsed']}'),
        volumeUsage: num.parse('${json[r'volumeUsage']}'),
      );
    }
    return null;
  }

  static List<O11yVolumeRecord> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yVolumeRecord>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yVolumeRecord.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yVolumeRecord> mapFromJson(dynamic json) {
    final map = <String, O11yVolumeRecord>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yVolumeRecord.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yVolumeRecord-objects as value to a dart map
  static Map<String, List<O11yVolumeRecord>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yVolumeRecord>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yVolumeRecord.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

