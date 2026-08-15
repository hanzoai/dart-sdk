//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Snapshot {
  /// Returns a new [Snapshot] instance.
  Snapshot({
    this.at,
    this.clusters = const [],
    this.complete,
    this.cost,
    this.findings = const [],
    this.incompleteReason,
    this.loadBalancers = const [],
    this.nodes = const [],
    this.sources = const [],
    this.totals,
    this.volumes = const [],
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? at;

  List<Cluster> clusters;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? complete;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Cost? cost;

  List<Finding> findings;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? incompleteReason;

  List<LoadBalancer> loadBalancers;

  List<Machine> nodes;

  List<SourceStatus> sources;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Totals? totals;

  List<Volume> volumes;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Snapshot &&
    other.at == at &&
    _deepEquality.equals(other.clusters, clusters) &&
    other.complete == complete &&
    other.cost == cost &&
    _deepEquality.equals(other.findings, findings) &&
    other.incompleteReason == incompleteReason &&
    _deepEquality.equals(other.loadBalancers, loadBalancers) &&
    _deepEquality.equals(other.nodes, nodes) &&
    _deepEquality.equals(other.sources, sources) &&
    other.totals == totals &&
    _deepEquality.equals(other.volumes, volumes);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (at == null ? 0 : at!.hashCode) +
    (clusters.hashCode) +
    (complete == null ? 0 : complete!.hashCode) +
    (cost == null ? 0 : cost!.hashCode) +
    (findings.hashCode) +
    (incompleteReason == null ? 0 : incompleteReason!.hashCode) +
    (loadBalancers.hashCode) +
    (nodes.hashCode) +
    (sources.hashCode) +
    (totals == null ? 0 : totals!.hashCode) +
    (volumes.hashCode);

  @override
  String toString() => 'Snapshot[at=$at, clusters=$clusters, complete=$complete, cost=$cost, findings=$findings, incompleteReason=$incompleteReason, loadBalancers=$loadBalancers, nodes=$nodes, sources=$sources, totals=$totals, volumes=$volumes]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.at != null) {
      json[r'at'] = this.at;
    } else {
      json[r'at'] = null;
    }
      json[r'clusters'] = this.clusters;
    if (this.complete != null) {
      json[r'complete'] = this.complete;
    } else {
      json[r'complete'] = null;
    }
    if (this.cost != null) {
      json[r'cost'] = this.cost;
    } else {
      json[r'cost'] = null;
    }
      json[r'findings'] = this.findings;
    if (this.incompleteReason != null) {
      json[r'incompleteReason'] = this.incompleteReason;
    } else {
      json[r'incompleteReason'] = null;
    }
      json[r'loadBalancers'] = this.loadBalancers;
      json[r'nodes'] = this.nodes;
      json[r'sources'] = this.sources;
    if (this.totals != null) {
      json[r'totals'] = this.totals;
    } else {
      json[r'totals'] = null;
    }
      json[r'volumes'] = this.volumes;
    return json;
  }

  /// Returns a new [Snapshot] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Snapshot? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Snapshot[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Snapshot[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Snapshot(
        at: mapValueOfType<String>(json, r'at'),
        clusters: Cluster.listFromJson(json[r'clusters']),
        complete: mapValueOfType<bool>(json, r'complete'),
        cost: Cost.fromJson(json[r'cost']),
        findings: Finding.listFromJson(json[r'findings']),
        incompleteReason: mapValueOfType<String>(json, r'incompleteReason'),
        loadBalancers: LoadBalancer.listFromJson(json[r'loadBalancers']),
        nodes: Machine.listFromJson(json[r'nodes']),
        sources: SourceStatus.listFromJson(json[r'sources']),
        totals: Totals.fromJson(json[r'totals']),
        volumes: Volume.listFromJson(json[r'volumes']),
      );
    }
    return null;
  }

  static List<Snapshot> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Snapshot>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Snapshot.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Snapshot> mapFromJson(dynamic json) {
    final map = <String, Snapshot>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Snapshot.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Snapshot-objects as value to a dart map
  static Map<String, List<Snapshot>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Snapshot>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Snapshot.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

