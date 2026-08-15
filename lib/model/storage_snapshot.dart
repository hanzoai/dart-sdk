//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class StorageSnapshot {
  /// Returns a new [StorageSnapshot] instance.
  StorageSnapshot({
    this.alerts = const [],
    this.datastore,
    this.fleet,
    this.volumes = const [],
  });

  List<StorageAlert> alerts;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DatastoreVolume? datastore;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  StorageFleet? fleet;

  List<StorageVolume> volumes;

  @override
  bool operator ==(Object other) => identical(this, other) || other is StorageSnapshot &&
    _deepEquality.equals(other.alerts, alerts) &&
    other.datastore == datastore &&
    other.fleet == fleet &&
    _deepEquality.equals(other.volumes, volumes);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (alerts.hashCode) +
    (datastore == null ? 0 : datastore!.hashCode) +
    (fleet == null ? 0 : fleet!.hashCode) +
    (volumes.hashCode);

  @override
  String toString() => 'StorageSnapshot[alerts=$alerts, datastore=$datastore, fleet=$fleet, volumes=$volumes]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'alerts'] = this.alerts;
    if (this.datastore != null) {
      json[r'datastore'] = this.datastore;
    } else {
      json[r'datastore'] = null;
    }
    if (this.fleet != null) {
      json[r'fleet'] = this.fleet;
    } else {
      json[r'fleet'] = null;
    }
      json[r'volumes'] = this.volumes;
    return json;
  }

  /// Returns a new [StorageSnapshot] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static StorageSnapshot? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "StorageSnapshot[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "StorageSnapshot[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return StorageSnapshot(
        alerts: StorageAlert.listFromJson(json[r'alerts']),
        datastore: DatastoreVolume.fromJson(json[r'datastore']),
        fleet: StorageFleet.fromJson(json[r'fleet']),
        volumes: StorageVolume.listFromJson(json[r'volumes']),
      );
    }
    return null;
  }

  static List<StorageSnapshot> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <StorageSnapshot>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = StorageSnapshot.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, StorageSnapshot> mapFromJson(dynamic json) {
    final map = <String, StorageSnapshot>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = StorageSnapshot.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of StorageSnapshot-objects as value to a dart map
  static Map<String, List<StorageSnapshot>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<StorageSnapshot>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = StorageSnapshot.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

