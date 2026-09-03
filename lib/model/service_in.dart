//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ServiceIn {
  /// Returns a new [ServiceIn] instance.
  ServiceIn({
    this.host,
    this.name,
    this.port,
  });
  /// Host is where the HOSTING identity forwards a connection — an address the host device itself can reach, \"127.0.0.1\" for a server on the device.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? host;

  /// Name is the service's name within the org — a DNS label. The fabric knows the service as \"<name>.<org>\" and answers for it at \"<name>.<org>.zt\".
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// Port is the port beside Host, and the one the DNS name intercepts.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? port;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ServiceIn &&
    other.host == host &&
    other.name == name &&
    other.port == port;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (host == null ? 0 : host!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (port == null ? 0 : port!.hashCode);

  @override
  String toString() => 'ServiceIn[host=$host, name=$name, port=$port]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.host != null) {
      json[r'host'] = this.host;
    } else {
      json[r'host'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.port != null) {
      json[r'port'] = this.port;
    } else {
      json[r'port'] = null;
    }
    return json;
  }

  /// Returns a new [ServiceIn] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ServiceIn? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ServiceIn[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ServiceIn[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ServiceIn(
        host: mapValueOfType<String>(json, r'host'),
        name: mapValueOfType<String>(json, r'name'),
        port: mapValueOfType<int>(json, r'port'),
      );
    }
    return null;
  }

  static List<ServiceIn> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ServiceIn>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ServiceIn.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ServiceIn> mapFromJson(dynamic json) {
    final map = <String, ServiceIn>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ServiceIn.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ServiceIn-objects as value to a dart map
  static Map<String, List<ServiceIn>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ServiceIn>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ServiceIn.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

