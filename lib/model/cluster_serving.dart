//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ClusterServing {
  /// Returns a new [ClusterServing] instance.
  ClusterServing({
    this.modelId,
    this.namespace,
    this.provider,
    this.service,
    this.url,
  });
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? modelId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? namespace;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? provider;

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
  String? url;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ClusterServing &&
    other.modelId == modelId &&
    other.namespace == namespace &&
    other.provider == provider &&
    other.service == service &&
    other.url == url;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (modelId == null ? 0 : modelId!.hashCode) +
    (namespace == null ? 0 : namespace!.hashCode) +
    (provider == null ? 0 : provider!.hashCode) +
    (service == null ? 0 : service!.hashCode) +
    (url == null ? 0 : url!.hashCode);

  @override
  String toString() => 'ClusterServing[modelId=$modelId, namespace=$namespace, provider=$provider, service=$service, url=$url]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.modelId != null) {
      json[r'modelId'] = this.modelId;
    } else {
      json[r'modelId'] = null;
    }
    if (this.namespace != null) {
      json[r'namespace'] = this.namespace;
    } else {
      json[r'namespace'] = null;
    }
    if (this.provider != null) {
      json[r'provider'] = this.provider;
    } else {
      json[r'provider'] = null;
    }
    if (this.service != null) {
      json[r'service'] = this.service;
    } else {
      json[r'service'] = null;
    }
    if (this.url != null) {
      json[r'url'] = this.url;
    } else {
      json[r'url'] = null;
    }
    return json;
  }

  /// Returns a new [ClusterServing] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ClusterServing? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ClusterServing[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ClusterServing[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ClusterServing(
        modelId: mapValueOfType<String>(json, r'modelId'),
        namespace: mapValueOfType<String>(json, r'namespace'),
        provider: mapValueOfType<String>(json, r'provider'),
        service: mapValueOfType<String>(json, r'service'),
        url: mapValueOfType<String>(json, r'url'),
      );
    }
    return null;
  }

  static List<ClusterServing> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ClusterServing>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ClusterServing.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ClusterServing> mapFromJson(dynamic json) {
    final map = <String, ClusterServing>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ClusterServing.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ClusterServing-objects as value to a dart map
  static Map<String, List<ClusterServing>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ClusterServing>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ClusterServing.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

