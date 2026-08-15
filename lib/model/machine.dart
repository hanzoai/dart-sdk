//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Machine {
  /// Returns a new [Machine] instance.
  Machine({
    this.blockedReason,
    this.cluster,
    this.clusterId,
    this.createdAt,
    this.id,
    this.localDiskGiB,
    this.memoryMiB,
    this.monthlyCents,
    this.mutable,
    this.name,
    this.pods,
    this.privateIp,
    this.publicIp,
    this.ready,
    this.region,
    this.schedulable,
    this.sizeSlug,
    this.status,
    this.tags = const [],
    this.vcpus,
    this.volumes,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? blockedReason;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? cluster;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? clusterId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? createdAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? localDiskGiB;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? memoryMiB;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? monthlyCents;

  /// Mutable reports whether this droplet may be changed DIRECTLY — deleted or resized. One predicate covers both because one fact decides both: a DOKS node belongs to a node pool, and the pool is the only thing allowed to change it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? mutable;

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
  int? pods;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? privateIp;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? publicIp;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? ready;

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
  bool? schedulable;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? sizeSlug;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  List<String> tags;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? vcpus;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? volumes;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Machine &&
    other.blockedReason == blockedReason &&
    other.cluster == cluster &&
    other.clusterId == clusterId &&
    other.createdAt == createdAt &&
    other.id == id &&
    other.localDiskGiB == localDiskGiB &&
    other.memoryMiB == memoryMiB &&
    other.monthlyCents == monthlyCents &&
    other.mutable == mutable &&
    other.name == name &&
    other.pods == pods &&
    other.privateIp == privateIp &&
    other.publicIp == publicIp &&
    other.ready == ready &&
    other.region == region &&
    other.schedulable == schedulable &&
    other.sizeSlug == sizeSlug &&
    other.status == status &&
    _deepEquality.equals(other.tags, tags) &&
    other.vcpus == vcpus &&
    other.volumes == volumes;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (blockedReason == null ? 0 : blockedReason!.hashCode) +
    (cluster == null ? 0 : cluster!.hashCode) +
    (clusterId == null ? 0 : clusterId!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (localDiskGiB == null ? 0 : localDiskGiB!.hashCode) +
    (memoryMiB == null ? 0 : memoryMiB!.hashCode) +
    (monthlyCents == null ? 0 : monthlyCents!.hashCode) +
    (mutable == null ? 0 : mutable!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (pods == null ? 0 : pods!.hashCode) +
    (privateIp == null ? 0 : privateIp!.hashCode) +
    (publicIp == null ? 0 : publicIp!.hashCode) +
    (ready == null ? 0 : ready!.hashCode) +
    (region == null ? 0 : region!.hashCode) +
    (schedulable == null ? 0 : schedulable!.hashCode) +
    (sizeSlug == null ? 0 : sizeSlug!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (tags.hashCode) +
    (vcpus == null ? 0 : vcpus!.hashCode) +
    (volumes == null ? 0 : volumes!.hashCode);

  @override
  String toString() => 'Machine[blockedReason=$blockedReason, cluster=$cluster, clusterId=$clusterId, createdAt=$createdAt, id=$id, localDiskGiB=$localDiskGiB, memoryMiB=$memoryMiB, monthlyCents=$monthlyCents, mutable=$mutable, name=$name, pods=$pods, privateIp=$privateIp, publicIp=$publicIp, ready=$ready, region=$region, schedulable=$schedulable, sizeSlug=$sizeSlug, status=$status, tags=$tags, vcpus=$vcpus, volumes=$volumes]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.blockedReason != null) {
      json[r'blockedReason'] = this.blockedReason;
    } else {
      json[r'blockedReason'] = null;
    }
    if (this.cluster != null) {
      json[r'cluster'] = this.cluster;
    } else {
      json[r'cluster'] = null;
    }
    if (this.clusterId != null) {
      json[r'clusterId'] = this.clusterId;
    } else {
      json[r'clusterId'] = null;
    }
    if (this.createdAt != null) {
      json[r'createdAt'] = this.createdAt;
    } else {
      json[r'createdAt'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.localDiskGiB != null) {
      json[r'localDiskGiB'] = this.localDiskGiB;
    } else {
      json[r'localDiskGiB'] = null;
    }
    if (this.memoryMiB != null) {
      json[r'memoryMiB'] = this.memoryMiB;
    } else {
      json[r'memoryMiB'] = null;
    }
    if (this.monthlyCents != null) {
      json[r'monthlyCents'] = this.monthlyCents;
    } else {
      json[r'monthlyCents'] = null;
    }
    if (this.mutable != null) {
      json[r'mutable'] = this.mutable;
    } else {
      json[r'mutable'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.pods != null) {
      json[r'pods'] = this.pods;
    } else {
      json[r'pods'] = null;
    }
    if (this.privateIp != null) {
      json[r'privateIp'] = this.privateIp;
    } else {
      json[r'privateIp'] = null;
    }
    if (this.publicIp != null) {
      json[r'publicIp'] = this.publicIp;
    } else {
      json[r'publicIp'] = null;
    }
    if (this.ready != null) {
      json[r'ready'] = this.ready;
    } else {
      json[r'ready'] = null;
    }
    if (this.region != null) {
      json[r'region'] = this.region;
    } else {
      json[r'region'] = null;
    }
    if (this.schedulable != null) {
      json[r'schedulable'] = this.schedulable;
    } else {
      json[r'schedulable'] = null;
    }
    if (this.sizeSlug != null) {
      json[r'sizeSlug'] = this.sizeSlug;
    } else {
      json[r'sizeSlug'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
      json[r'tags'] = this.tags;
    if (this.vcpus != null) {
      json[r'vcpus'] = this.vcpus;
    } else {
      json[r'vcpus'] = null;
    }
    if (this.volumes != null) {
      json[r'volumes'] = this.volumes;
    } else {
      json[r'volumes'] = null;
    }
    return json;
  }

  /// Returns a new [Machine] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Machine? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Machine[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Machine[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Machine(
        blockedReason: mapValueOfType<String>(json, r'blockedReason'),
        cluster: mapValueOfType<String>(json, r'cluster'),
        clusterId: mapValueOfType<String>(json, r'clusterId'),
        createdAt: mapValueOfType<String>(json, r'createdAt'),
        id: mapValueOfType<int>(json, r'id'),
        localDiskGiB: mapValueOfType<int>(json, r'localDiskGiB'),
        memoryMiB: mapValueOfType<int>(json, r'memoryMiB'),
        monthlyCents: mapValueOfType<int>(json, r'monthlyCents'),
        mutable: mapValueOfType<bool>(json, r'mutable'),
        name: mapValueOfType<String>(json, r'name'),
        pods: mapValueOfType<int>(json, r'pods'),
        privateIp: mapValueOfType<String>(json, r'privateIp'),
        publicIp: mapValueOfType<String>(json, r'publicIp'),
        ready: mapValueOfType<bool>(json, r'ready'),
        region: mapValueOfType<String>(json, r'region'),
        schedulable: mapValueOfType<bool>(json, r'schedulable'),
        sizeSlug: mapValueOfType<String>(json, r'sizeSlug'),
        status: mapValueOfType<String>(json, r'status'),
        tags: json[r'tags'] is Iterable
            ? (json[r'tags'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        vcpus: mapValueOfType<int>(json, r'vcpus'),
        volumes: mapValueOfType<int>(json, r'volumes'),
      );
    }
    return null;
  }

  static List<Machine> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Machine>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Machine.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Machine> mapFromJson(dynamic json) {
    final map = <String, Machine>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Machine.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Machine-objects as value to a dart map
  static Map<String, List<Machine>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Machine>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Machine.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

