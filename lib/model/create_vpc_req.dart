//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class CreateVPCReq {
  /// Returns a new [CreateVPCReq] instance.
  CreateVPCReq({
    this.ipRange,
    this.name,
    this.region,
  });

  /// IPRange is the VPC's private CIDR. Empty lets DigitalOcean assign one.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? ipRange;

  /// Name is the FRIENDLY name, a DNS-safe slug of at most 40 characters. The physical DigitalOcean name is derived from it and the caller's org.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// Region is the DigitalOcean region slug (nyc3, sfo3, …). Required.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? region;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateVPCReq &&
    other.ipRange == ipRange &&
    other.name == name &&
    other.region == region;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (ipRange == null ? 0 : ipRange!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (region == null ? 0 : region!.hashCode);

  @override
  String toString() => 'CreateVPCReq[ipRange=$ipRange, name=$name, region=$region]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.ipRange != null) {
      json[r'ip_range'] = this.ipRange;
    } else {
      json[r'ip_range'] = null;
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
    return json;
  }

  /// Returns a new [CreateVPCReq] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateVPCReq? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateVPCReq[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateVPCReq[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateVPCReq(
        ipRange: mapValueOfType<String>(json, r'ip_range'),
        name: mapValueOfType<String>(json, r'name'),
        region: mapValueOfType<String>(json, r'region'),
      );
    }
    return null;
  }

  static List<CreateVPCReq> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateVPCReq>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateVPCReq.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateVPCReq> mapFromJson(dynamic json) {
    final map = <String, CreateVPCReq>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateVPCReq.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateVPCReq-objects as value to a dart map
  static Map<String, List<CreateVPCReq>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateVPCReq>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateVPCReq.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

