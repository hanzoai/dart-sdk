//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ArgoProject {
  /// Returns a new [ArgoProject] instance.
  ArgoProject({
    this.apiVersion,
    this.kind,
    this.metadata,
    this.spec,
    this.status,
  });
  /// APIVersion is the constant \"argoproj.io/v1alpha1\". A project here is an IAM resource wearing that shape; no argoproj.io object is stored behind it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? apiVersion;

  /// Kind is the constant \"AppProject\".
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? kind;

  /// Metadata is the project's identity: its name is the key an application's spec.project matches, and is the same string an App CR carries in its app.kubernetes.io/part-of label.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ArgoMeta? metadata;

  /// Spec is the fence the SPA displays — repos, destinations, admitted kinds.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ArgoProjectSpec? spec;

  /// Status is always the empty object. A project has no reconciled state here; the field exists because the SPA reads it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? status;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ArgoProject &&
    other.apiVersion == apiVersion &&
    other.kind == kind &&
    other.metadata == metadata &&
    other.spec == spec &&
    other.status == status;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (apiVersion == null ? 0 : apiVersion!.hashCode) +
    (kind == null ? 0 : kind!.hashCode) +
    (metadata == null ? 0 : metadata!.hashCode) +
    (spec == null ? 0 : spec!.hashCode) +
    (status == null ? 0 : status!.hashCode);

  @override
  String toString() => 'ArgoProject[apiVersion=$apiVersion, kind=$kind, metadata=$metadata, spec=$spec, status=$status]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.apiVersion != null) {
      json[r'apiVersion'] = this.apiVersion;
    } else {
      json[r'apiVersion'] = null;
    }
    if (this.kind != null) {
      json[r'kind'] = this.kind;
    } else {
      json[r'kind'] = null;
    }
    if (this.metadata != null) {
      json[r'metadata'] = this.metadata;
    } else {
      json[r'metadata'] = null;
    }
    if (this.spec != null) {
      json[r'spec'] = this.spec;
    } else {
      json[r'spec'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    return json;
  }

  /// Returns a new [ArgoProject] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ArgoProject? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ArgoProject[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ArgoProject[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ArgoProject(
        apiVersion: mapValueOfType<String>(json, r'apiVersion'),
        kind: mapValueOfType<String>(json, r'kind'),
        metadata: ArgoMeta.fromJson(json[r'metadata']),
        spec: ArgoProjectSpec.fromJson(json[r'spec']),
        status: mapValueOfType<Object>(json, r'status'),
      );
    }
    return null;
  }

  static List<ArgoProject> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ArgoProject>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ArgoProject.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ArgoProject> mapFromJson(dynamic json) {
    final map = <String, ArgoProject>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ArgoProject.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ArgoProject-objects as value to a dart map
  static Map<String, List<ArgoProject>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ArgoProject>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ArgoProject.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

