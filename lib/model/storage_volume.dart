//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class StorageVolume {
  /// Returns a new [StorageVolume] instance.
  StorageVolume({
    this.attached,
    this.id,
    this.name,
    this.pct,
    this.region,
    this.service,
    this.sizeGiB,
    this.usedGiB,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? attached;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? pct;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? region;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? service;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? sizeGiB;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? usedGiB;

  @override
  bool operator ==(Object other) => identical(this, other) || other is StorageVolume &&
    other.attached == attached &&
    other.id == id &&
    other.name == name &&
    other.pct == pct &&
    other.region == region &&
    other.service == service &&
    other.sizeGiB == sizeGiB &&
    other.usedGiB == usedGiB;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (attached == null ? 0 : attached!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (pct == null ? 0 : pct!.hashCode) +
    (region == null ? 0 : region!.hashCode) +
    (service == null ? 0 : service!.hashCode) +
    (sizeGiB == null ? 0 : sizeGiB!.hashCode) +
    (usedGiB == null ? 0 : usedGiB!.hashCode);

  @override
  String toString() => 'StorageVolume[attached=$attached, id=$id, name=$name, pct=$pct, region=$region, service=$service, sizeGiB=$sizeGiB, usedGiB=$usedGiB]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.attached != null) {
      json[r'attached'] = this.attached;
    } else {
      json[r'attached'] = null;
    }
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
    if (this.pct != null) {
      json[r'pct'] = this.pct;
    } else {
      json[r'pct'] = null;
    }
    if (this.region != null) {
      json[r'region'] = this.region;
    } else {
      json[r'region'] = null;
    }
    if (this.service != null) {
      json[r'service'] = this.service;
    } else {
      json[r'service'] = null;
    }
    if (this.sizeGiB != null) {
      json[r'sizeGiB'] = this.sizeGiB;
    } else {
      json[r'sizeGiB'] = null;
    }
    if (this.usedGiB != null) {
      json[r'usedGiB'] = this.usedGiB;
    } else {
      json[r'usedGiB'] = null;
    }
    return json;
  }

  /// Returns a new [StorageVolume] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static StorageVolume? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "StorageVolume[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "StorageVolume[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return StorageVolume(
        attached: mapValueOfType<bool>(json, r'attached'),
        id: mapValueOfType<String>(json, r'id'),
        name: mapValueOfType<String>(json, r'name'),
        pct: num.parse('${json[r'pct']}'),
        region: mapValueOfType<String>(json, r'region'),
        service: mapValueOfType<String>(json, r'service'),
        sizeGiB: mapValueOfType<int>(json, r'sizeGiB'),
        usedGiB: num.parse('${json[r'usedGiB']}'),
      );
    }
    return null;
  }

  static List<StorageVolume> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <StorageVolume>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = StorageVolume.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, StorageVolume> mapFromJson(dynamic json) {
    final map = <String, StorageVolume>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = StorageVolume.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of StorageVolume-objects as value to a dart map
  static Map<String, List<StorageVolume>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<StorageVolume>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = StorageVolume.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

