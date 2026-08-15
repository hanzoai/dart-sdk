//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Readiness {
  /// Returns a new [Readiness] instance.
  Readiness({
    this.crd,
    this.error,
    this.k8s,
    this.service,
    this.status,
  });

  /// CRD is whether the operator App CRD was found, and is absent when no cluster client resolved and the question could not be asked.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? crd;

  /// Error is the real reason the plane is degraded; absent when it is not.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? error;

  /// K8s is whether a cluster client resolved at all. False means no kubeconfig.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? k8s;

  /// Service is always \"platform\" — which control plane answered.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? service;

  /// Status is \"ok\" when this plane can deploy, \"degraded\" when it cannot.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Readiness &&
    other.crd == crd &&
    other.error == error &&
    other.k8s == k8s &&
    other.service == service &&
    other.status == status;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (crd == null ? 0 : crd!.hashCode) +
    (error == null ? 0 : error!.hashCode) +
    (k8s == null ? 0 : k8s!.hashCode) +
    (service == null ? 0 : service!.hashCode) +
    (status == null ? 0 : status!.hashCode);

  @override
  String toString() => 'Readiness[crd=$crd, error=$error, k8s=$k8s, service=$service, status=$status]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.crd != null) {
      json[r'crd'] = this.crd;
    } else {
      json[r'crd'] = null;
    }
    if (this.error != null) {
      json[r'error'] = this.error;
    } else {
      json[r'error'] = null;
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

  /// Returns a new [Readiness] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Readiness? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Readiness[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Readiness[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Readiness(
        crd: mapValueOfType<bool>(json, r'crd'),
        error: mapValueOfType<String>(json, r'error'),
        k8s: mapValueOfType<bool>(json, r'k8s'),
        service: mapValueOfType<String>(json, r'service'),
        status: mapValueOfType<String>(json, r'status'),
      );
    }
    return null;
  }

  static List<Readiness> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Readiness>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Readiness.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Readiness> mapFromJson(dynamic json) {
    final map = <String, Readiness>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Readiness.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Readiness-objects as value to a dart map
  static Map<String, List<Readiness>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Readiness>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Readiness.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

