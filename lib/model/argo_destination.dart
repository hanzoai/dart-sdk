//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ArgoDestination {
  /// Returns a new [ArgoDestination] instance.
  ArgoDestination({
    this.name,
    this.namespace,
    this.server,
  });
  /// ArgoCD allows a destination by cluster name; omitted for the in-cluster projection.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// Namespace is where in that cluster the workload lands. \"*\" on a project's destination fence means any namespace.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? namespace;

  /// Server is the cluster API URL the application reconciles into. Everything this plane projects lands in the cluster it runs in, so it is https://kubernetes.default.svc — except on a project's destination fence, where \"*\" means any cluster.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? server;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ArgoDestination &&
    other.name == name &&
    other.namespace == namespace &&
    other.server == server;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name == null ? 0 : name!.hashCode) +
    (namespace == null ? 0 : namespace!.hashCode) +
    (server == null ? 0 : server!.hashCode);

  @override
  String toString() => 'ArgoDestination[name=$name, namespace=$namespace, server=$server]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.namespace != null) {
      json[r'namespace'] = this.namespace;
    } else {
      json[r'namespace'] = null;
    }
    if (this.server != null) {
      json[r'server'] = this.server;
    } else {
      json[r'server'] = null;
    }
    return json;
  }

  /// Returns a new [ArgoDestination] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ArgoDestination? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ArgoDestination[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ArgoDestination[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ArgoDestination(
        name: mapValueOfType<String>(json, r'name'),
        namespace: mapValueOfType<String>(json, r'namespace'),
        server: mapValueOfType<String>(json, r'server'),
      );
    }
    return null;
  }

  static List<ArgoDestination> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ArgoDestination>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ArgoDestination.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ArgoDestination> mapFromJson(dynamic json) {
    final map = <String, ArgoDestination>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ArgoDestination.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ArgoDestination-objects as value to a dart map
  static Map<String, List<ArgoDestination>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ArgoDestination>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ArgoDestination.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

