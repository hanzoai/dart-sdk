//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ClusterList {
  /// Returns a new [ClusterList] instance.
  ClusterList({
    this.clusters = const [],
    this.degraded = const [],
  });
  /// Clusters is the merged fleet — kind \"managed\" for Visor-provisioned, \"byo\" for an attached kubeconfig.
  List<ClusterView> clusters;

  /// Degraded names any source that did not answer, so an empty Clusters means \"you have none\" only when this is absent. Omitted when everything answered, so a healthy response is unchanged. See degraded.go.
  List<SourceFailure> degraded;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ClusterList &&
    _deepEquality.equals(other.clusters, clusters) &&
    _deepEquality.equals(other.degraded, degraded);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (clusters.hashCode) +
    (degraded.hashCode);

  @override
  String toString() => 'ClusterList[clusters=$clusters, degraded=$degraded]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'clusters'] = this.clusters;
      json[r'degraded'] = this.degraded;
    return json;
  }

  /// Returns a new [ClusterList] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ClusterList? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ClusterList[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ClusterList[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ClusterList(
        clusters: ClusterView.listFromJson(json[r'clusters']),
        degraded: SourceFailure.listFromJson(json[r'degraded']),
      );
    }
    return null;
  }

  static List<ClusterList> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ClusterList>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ClusterList.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ClusterList> mapFromJson(dynamic json) {
    final map = <String, ClusterList>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ClusterList.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ClusterList-objects as value to a dart map
  static Map<String, List<ClusterList>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ClusterList>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ClusterList.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

