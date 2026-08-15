//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ClusterAttach {
  /// Returns a new [ClusterAttach] instance.
  ClusterAttach({
    this.default_,
    this.kubeconfig,
    this.name,
    this.provider,
  });

  /// Default marks this the org's default cluster for scheduling.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? default_;

  /// Kubeconfig is the cluster's kubeconfig, verbatim. Required — a body without one is not an attach.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? kubeconfig;

  /// Name is the fleet-local name for the cluster; lower-cased, and the key the detach route addresses it by. Required.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// Provider is a free-form label for where the cluster runs (\"gke\", \"on-prem\"); it is display only, not a routing key.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? provider;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ClusterAttach &&
    other.default_ == default_ &&
    other.kubeconfig == kubeconfig &&
    other.name == name &&
    other.provider == provider;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (default_ == null ? 0 : default_!.hashCode) +
    (kubeconfig == null ? 0 : kubeconfig!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (provider == null ? 0 : provider!.hashCode);

  @override
  String toString() => 'ClusterAttach[default_=$default_, kubeconfig=$kubeconfig, name=$name, provider=$provider]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.default_ != null) {
      json[r'default'] = this.default_;
    } else {
      json[r'default'] = null;
    }
    if (this.kubeconfig != null) {
      json[r'kubeconfig'] = this.kubeconfig;
    } else {
      json[r'kubeconfig'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.provider != null) {
      json[r'provider'] = this.provider;
    } else {
      json[r'provider'] = null;
    }
    return json;
  }

  /// Returns a new [ClusterAttach] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ClusterAttach? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ClusterAttach[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ClusterAttach[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ClusterAttach(
        default_: mapValueOfType<bool>(json, r'default'),
        kubeconfig: mapValueOfType<String>(json, r'kubeconfig'),
        name: mapValueOfType<String>(json, r'name'),
        provider: mapValueOfType<String>(json, r'provider'),
      );
    }
    return null;
  }

  static List<ClusterAttach> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ClusterAttach>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ClusterAttach.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ClusterAttach> mapFromJson(dynamic json) {
    final map = <String, ClusterAttach>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ClusterAttach.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ClusterAttach-objects as value to a dart map
  static Map<String, List<ClusterAttach>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ClusterAttach>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ClusterAttach.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

