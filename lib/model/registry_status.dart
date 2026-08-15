//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class RegistryStatus {
  /// Returns a new [RegistryStatus] instance.
  RegistryStatus({
    this.host,
    this.oci,
    this.pkg,
    this.pkgHost,
    this.realm,
    this.service,
  });

  /// Host is the OCI registry host clients push to and pull from.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? host;

  /// Oci is true when the OCI registry answered its /v2/ probe.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? oci;

  /// Pkg is true when the npm registry answered its ping.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? pkg;

  /// PkgHost is the npm registry host.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? pkgHost;

  /// Realm is the token endpoint the OCI registry's challenge advertises, present only when the registry is reachable and auth-gated.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? realm;

  /// Service is the token service name from the same challenge.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? service;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RegistryStatus &&
    other.host == host &&
    other.oci == oci &&
    other.pkg == pkg &&
    other.pkgHost == pkgHost &&
    other.realm == realm &&
    other.service == service;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (host == null ? 0 : host!.hashCode) +
    (oci == null ? 0 : oci!.hashCode) +
    (pkg == null ? 0 : pkg!.hashCode) +
    (pkgHost == null ? 0 : pkgHost!.hashCode) +
    (realm == null ? 0 : realm!.hashCode) +
    (service == null ? 0 : service!.hashCode);

  @override
  String toString() => 'RegistryStatus[host=$host, oci=$oci, pkg=$pkg, pkgHost=$pkgHost, realm=$realm, service=$service]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.host != null) {
      json[r'host'] = this.host;
    } else {
      json[r'host'] = null;
    }
    if (this.oci != null) {
      json[r'oci'] = this.oci;
    } else {
      json[r'oci'] = null;
    }
    if (this.pkg != null) {
      json[r'pkg'] = this.pkg;
    } else {
      json[r'pkg'] = null;
    }
    if (this.pkgHost != null) {
      json[r'pkgHost'] = this.pkgHost;
    } else {
      json[r'pkgHost'] = null;
    }
    if (this.realm != null) {
      json[r'realm'] = this.realm;
    } else {
      json[r'realm'] = null;
    }
    if (this.service != null) {
      json[r'service'] = this.service;
    } else {
      json[r'service'] = null;
    }
    return json;
  }

  /// Returns a new [RegistryStatus] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RegistryStatus? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RegistryStatus[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RegistryStatus[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RegistryStatus(
        host: mapValueOfType<String>(json, r'host'),
        oci: mapValueOfType<bool>(json, r'oci'),
        pkg: mapValueOfType<bool>(json, r'pkg'),
        pkgHost: mapValueOfType<String>(json, r'pkgHost'),
        realm: mapValueOfType<String>(json, r'realm'),
        service: mapValueOfType<String>(json, r'service'),
      );
    }
    return null;
  }

  static List<RegistryStatus> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RegistryStatus>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RegistryStatus.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RegistryStatus> mapFromJson(dynamic json) {
    final map = <String, RegistryStatus>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RegistryStatus.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RegistryStatus-objects as value to a dart map
  static Map<String, List<RegistryStatus>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RegistryStatus>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RegistryStatus.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

