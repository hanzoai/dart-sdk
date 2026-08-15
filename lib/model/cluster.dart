//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Cluster {
  /// Returns a new [Cluster] instance.
  Cluster({
    this.id,
    this.idlePVCs,
    this.monthlyCents,
    this.name,
    this.nodePools,
    this.nodes,
    this.pods,
    this.pools = const [],
    this.pvcs,
    this.pvs,
    this.region,
    this.scanError,
    this.scanned,
    this.status,
    this.version,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? idlePVCs;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? monthlyCents;

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
  int? nodePools;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? nodes;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? pods;

  List<NodePool> pools;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? pvcs;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? pvs;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? region;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? scanError;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? scanned;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? version;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Cluster &&
    other.id == id &&
    other.idlePVCs == idlePVCs &&
    other.monthlyCents == monthlyCents &&
    other.name == name &&
    other.nodePools == nodePools &&
    other.nodes == nodes &&
    other.pods == pods &&
    _deepEquality.equals(other.pools, pools) &&
    other.pvcs == pvcs &&
    other.pvs == pvs &&
    other.region == region &&
    other.scanError == scanError &&
    other.scanned == scanned &&
    other.status == status &&
    other.version == version;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (idlePVCs == null ? 0 : idlePVCs!.hashCode) +
    (monthlyCents == null ? 0 : monthlyCents!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (nodePools == null ? 0 : nodePools!.hashCode) +
    (nodes == null ? 0 : nodes!.hashCode) +
    (pods == null ? 0 : pods!.hashCode) +
    (pools.hashCode) +
    (pvcs == null ? 0 : pvcs!.hashCode) +
    (pvs == null ? 0 : pvs!.hashCode) +
    (region == null ? 0 : region!.hashCode) +
    (scanError == null ? 0 : scanError!.hashCode) +
    (scanned == null ? 0 : scanned!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (version == null ? 0 : version!.hashCode);

  @override
  String toString() => 'Cluster[id=$id, idlePVCs=$idlePVCs, monthlyCents=$monthlyCents, name=$name, nodePools=$nodePools, nodes=$nodes, pods=$pods, pools=$pools, pvcs=$pvcs, pvs=$pvs, region=$region, scanError=$scanError, scanned=$scanned, status=$status, version=$version]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.idlePVCs != null) {
      json[r'idlePVCs'] = this.idlePVCs;
    } else {
      json[r'idlePVCs'] = null;
    }
    if (this.monthlyCents != null) {
      json[r'monthlyCents'] = this.monthlyCents;
    } else {
      json[r'monthlyCents'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.nodePools != null) {
      json[r'nodePools'] = this.nodePools;
    } else {
      json[r'nodePools'] = null;
    }
    if (this.nodes != null) {
      json[r'nodes'] = this.nodes;
    } else {
      json[r'nodes'] = null;
    }
    if (this.pods != null) {
      json[r'pods'] = this.pods;
    } else {
      json[r'pods'] = null;
    }
      json[r'pools'] = this.pools;
    if (this.pvcs != null) {
      json[r'pvcs'] = this.pvcs;
    } else {
      json[r'pvcs'] = null;
    }
    if (this.pvs != null) {
      json[r'pvs'] = this.pvs;
    } else {
      json[r'pvs'] = null;
    }
    if (this.region != null) {
      json[r'region'] = this.region;
    } else {
      json[r'region'] = null;
    }
    if (this.scanError != null) {
      json[r'scanError'] = this.scanError;
    } else {
      json[r'scanError'] = null;
    }
    if (this.scanned != null) {
      json[r'scanned'] = this.scanned;
    } else {
      json[r'scanned'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.version != null) {
      json[r'version'] = this.version;
    } else {
      json[r'version'] = null;
    }
    return json;
  }

  /// Returns a new [Cluster] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Cluster? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Cluster[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Cluster[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Cluster(
        id: mapValueOfType<String>(json, r'id'),
        idlePVCs: mapValueOfType<int>(json, r'idlePVCs'),
        monthlyCents: mapValueOfType<int>(json, r'monthlyCents'),
        name: mapValueOfType<String>(json, r'name'),
        nodePools: mapValueOfType<int>(json, r'nodePools'),
        nodes: mapValueOfType<int>(json, r'nodes'),
        pods: mapValueOfType<int>(json, r'pods'),
        pools: NodePool.listFromJson(json[r'pools']),
        pvcs: mapValueOfType<int>(json, r'pvcs'),
        pvs: mapValueOfType<int>(json, r'pvs'),
        region: mapValueOfType<String>(json, r'region'),
        scanError: mapValueOfType<String>(json, r'scanError'),
        scanned: mapValueOfType<bool>(json, r'scanned'),
        status: mapValueOfType<String>(json, r'status'),
        version: mapValueOfType<String>(json, r'version'),
      );
    }
    return null;
  }

  static List<Cluster> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Cluster>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Cluster.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Cluster> mapFromJson(dynamic json) {
    final map = <String, Cluster>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Cluster.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Cluster-objects as value to a dart map
  static Map<String, List<Cluster>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Cluster>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Cluster.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

