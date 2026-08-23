//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class DeployHealth {
  /// Returns a new [DeployHealth] instance.
  DeployHealth({
    this.crd,
    this.k8s,
    this.service,
    this.status,
  });
  /// CRD reports whether the App custom resource is served and listable. Absent when the apiserver was unreachable, because then it is unknown rather than false.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? crd;

  /// K8s reports whether the Kubernetes API is reachable. Absent when the probe did not get far enough to find out.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? k8s;

  /// Service names the subsystem answering, so a probe response is attributable when several are collected together.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? service;

  /// Status is `ok` when this deployment can serve the delivery plane, and `degraded` otherwise. It agrees with the HTTP status by construction — see StatusCode.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DeployHealth &&
    other.crd == crd &&
    other.k8s == k8s &&
    other.service == service &&
    other.status == status;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (crd == null ? 0 : crd!.hashCode) +
    (k8s == null ? 0 : k8s!.hashCode) +
    (service == null ? 0 : service!.hashCode) +
    (status == null ? 0 : status!.hashCode);

  @override
  String toString() => 'DeployHealth[crd=$crd, k8s=$k8s, service=$service, status=$status]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.crd != null) {
      json[r'crd'] = this.crd;
    } else {
      json[r'crd'] = null;
    }
    if (this.k8s != null) {
      json[r'k8s'] = this.k8s;
    } else {
      json[r'k8s'] = null;
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

  /// Returns a new [DeployHealth] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DeployHealth? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DeployHealth[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DeployHealth[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DeployHealth(
        crd: mapValueOfType<bool>(json, r'crd'),
        k8s: mapValueOfType<bool>(json, r'k8s'),
        service: mapValueOfType<String>(json, r'service'),
        status: mapValueOfType<String>(json, r'status'),
      );
    }
    return null;
  }

  static List<DeployHealth> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DeployHealth>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DeployHealth.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DeployHealth> mapFromJson(dynamic json) {
    final map = <String, DeployHealth>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DeployHealth.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DeployHealth-objects as value to a dart map
  static Map<String, List<DeployHealth>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DeployHealth>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DeployHealth.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

