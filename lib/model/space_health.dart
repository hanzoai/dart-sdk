//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class SpaceHealth {
  /// Returns a new [SpaceHealth] instance.
  SpaceHealth({
    this.error,
    this.presign,
    this.ready,
    this.service,
    this.status,
  });
  /// Error is why the probe is degraded, in plain words. Absent when it is not.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? error;

  /// Presign is whether upload and download URLs can be minted, which needs a PUBLIC endpoint on top of the credentials. False does not make the surface degraded — listing spaces, drives and folders still works, only the bytes cannot be reached.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? presign;

  /// Ready is whether this deployment can serve drive and file operations at all: true only when object-store credentials are configured.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? ready;

  /// Service names the subsystem this probe is for. Always \"space\".
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? service;

  /// Status is \"ok\" when the store is reachable in principle, \"degraded\" when it is not. It is the field to read; the HTTP status carries the same fact for a caller that only looks at the code.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SpaceHealth &&
    other.error == error &&
    other.presign == presign &&
    other.ready == ready &&
    other.service == service &&
    other.status == status;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (error == null ? 0 : error!.hashCode) +
    (presign == null ? 0 : presign!.hashCode) +
    (ready == null ? 0 : ready!.hashCode) +
    (service == null ? 0 : service!.hashCode) +
    (status == null ? 0 : status!.hashCode);

  @override
  String toString() => 'SpaceHealth[error=$error, presign=$presign, ready=$ready, service=$service, status=$status]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.error != null) {
      json[r'error'] = this.error;
    } else {
      json[r'error'] = null;
    }
    if (this.presign != null) {
      json[r'presign'] = this.presign;
    } else {
      json[r'presign'] = null;
    }
    if (this.ready != null) {
      json[r'ready'] = this.ready;
    } else {
      json[r'ready'] = null;
    }
    if (this.service != null) {
      json[r'service'] = this.service;
    } else {
      json[r'service'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    return json;
  }

  /// Returns a new [SpaceHealth] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SpaceHealth? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SpaceHealth[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SpaceHealth[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SpaceHealth(
        error: mapValueOfType<String>(json, r'error'),
        presign: mapValueOfType<bool>(json, r'presign'),
        ready: mapValueOfType<bool>(json, r'ready'),
        service: mapValueOfType<String>(json, r'service'),
        status: mapValueOfType<String>(json, r'status'),
      );
    }
    return null;
  }

  static List<SpaceHealth> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SpaceHealth>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SpaceHealth.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SpaceHealth> mapFromJson(dynamic json) {
    final map = <String, SpaceHealth>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SpaceHealth.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SpaceHealth-objects as value to a dart map
  static Map<String, List<SpaceHealth>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SpaceHealth>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SpaceHealth.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

