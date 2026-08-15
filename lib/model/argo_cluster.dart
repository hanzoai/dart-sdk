//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ArgoCluster {
  /// Returns a new [ArgoCluster] instance.
  ArgoCluster({
    this.connectionState,
    this.info,
    this.name,
    this.server,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ArgoConnectionState? connectionState;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ArgoClusterInfo? info;

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
  String? server;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ArgoCluster &&
    other.connectionState == connectionState &&
    other.info == info &&
    other.name == name &&
    other.server == server;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (connectionState == null ? 0 : connectionState!.hashCode) +
    (info == null ? 0 : info!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (server == null ? 0 : server!.hashCode);

  @override
  String toString() => 'ArgoCluster[connectionState=$connectionState, info=$info, name=$name, server=$server]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.connectionState != null) {
      json[r'connectionState'] = this.connectionState;
    } else {
      json[r'connectionState'] = null;
    }
    if (this.info != null) {
      json[r'info'] = this.info;
    } else {
      json[r'info'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.server != null) {
      json[r'server'] = this.server;
    } else {
      json[r'server'] = null;
    }
    return json;
  }

  /// Returns a new [ArgoCluster] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ArgoCluster? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ArgoCluster[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ArgoCluster[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ArgoCluster(
        connectionState: ArgoConnectionState.fromJson(json[r'connectionState']),
        info: ArgoClusterInfo.fromJson(json[r'info']),
        name: mapValueOfType<String>(json, r'name'),
        server: mapValueOfType<String>(json, r'server'),
      );
    }
    return null;
  }

  static List<ArgoCluster> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ArgoCluster>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ArgoCluster.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ArgoCluster> mapFromJson(dynamic json) {
    final map = <String, ArgoCluster>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ArgoCluster.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ArgoCluster-objects as value to a dart map
  static Map<String, List<ArgoCluster>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ArgoCluster>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ArgoCluster.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

