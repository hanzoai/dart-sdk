//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class LoadBalancer {
  /// Returns a new [LoadBalancer] instance.
  LoadBalancer({
    this.blockedReason,
    this.cluster,
    this.deletable,
    this.droplets,
    this.id,
    this.ip,
    this.monthlyCents,
    this.name,
    this.region,
    this.service,
    this.sizeUnit,
    this.status,
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
  bool? deletable;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? droplets;

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
  String? ip;

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
  String? region;

  /// Service is the `namespace/name` of the live type=LoadBalancer Service that claims this load balancer, proven from the cluster scan. Non-empty means IN USE.
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
  int? sizeUnit;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LoadBalancer &&
    other.blockedReason == blockedReason &&
    other.cluster == cluster &&
    other.deletable == deletable &&
    other.droplets == droplets &&
    other.id == id &&
    other.ip == ip &&
    other.monthlyCents == monthlyCents &&
    other.name == name &&
    other.region == region &&
    other.service == service &&
    other.sizeUnit == sizeUnit &&
    other.status == status;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (blockedReason == null ? 0 : blockedReason!.hashCode) +
    (cluster == null ? 0 : cluster!.hashCode) +
    (deletable == null ? 0 : deletable!.hashCode) +
    (droplets == null ? 0 : droplets!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (ip == null ? 0 : ip!.hashCode) +
    (monthlyCents == null ? 0 : monthlyCents!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (region == null ? 0 : region!.hashCode) +
    (service == null ? 0 : service!.hashCode) +
    (sizeUnit == null ? 0 : sizeUnit!.hashCode) +
    (status == null ? 0 : status!.hashCode);

  @override
  String toString() => 'LoadBalancer[blockedReason=$blockedReason, cluster=$cluster, deletable=$deletable, droplets=$droplets, id=$id, ip=$ip, monthlyCents=$monthlyCents, name=$name, region=$region, service=$service, sizeUnit=$sizeUnit, status=$status]';

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
    if (this.deletable != null) {
      json[r'deletable'] = this.deletable;
    } else {
      json[r'deletable'] = null;
    }
    if (this.droplets != null) {
      json[r'droplets'] = this.droplets;
    } else {
      json[r'droplets'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.ip != null) {
      json[r'ip'] = this.ip;
    } else {
      json[r'ip'] = null;
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
    if (this.region != null) {
      json[r'region'] = this.region;
    } else {
      json[r'region'] = null;
    }
    if (this.service != null) {
      json[r'service'] = this.service;
    } else {
      json[r'service'] = null;
    }
    if (this.sizeUnit != null) {
      json[r'sizeUnit'] = this.sizeUnit;
    } else {
      json[r'sizeUnit'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    return json;
  }

  /// Returns a new [LoadBalancer] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LoadBalancer? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "LoadBalancer[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "LoadBalancer[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return LoadBalancer(
        blockedReason: mapValueOfType<String>(json, r'blockedReason'),
        cluster: mapValueOfType<String>(json, r'cluster'),
        deletable: mapValueOfType<bool>(json, r'deletable'),
        droplets: mapValueOfType<int>(json, r'droplets'),
        id: mapValueOfType<String>(json, r'id'),
        ip: mapValueOfType<String>(json, r'ip'),
        monthlyCents: mapValueOfType<int>(json, r'monthlyCents'),
        name: mapValueOfType<String>(json, r'name'),
        region: mapValueOfType<String>(json, r'region'),
        service: mapValueOfType<String>(json, r'service'),
        sizeUnit: mapValueOfType<int>(json, r'sizeUnit'),
        status: mapValueOfType<String>(json, r'status'),
      );
    }
    return null;
  }

  static List<LoadBalancer> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LoadBalancer>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LoadBalancer.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LoadBalancer> mapFromJson(dynamic json) {
    final map = <String, LoadBalancer>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LoadBalancer.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LoadBalancer-objects as value to a dart map
  static Map<String, List<LoadBalancer>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<LoadBalancer>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = LoadBalancer.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

