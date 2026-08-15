//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class CreateLBReq {
  /// Returns a new [CreateLBReq] instance.
  CreateLBReq({
    this.forwardingRules = const [],
    this.name,
    this.region,
    this.size,
    this.type,
  });

  /// ForwardingRules are the listen→backend port mappings. Empty defaults to plain HTTP 80→80, the same default DigitalOcean's own console applies.
  List<FwdRule> forwardingRules;

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

  /// Size is the DigitalOcean size slug. Empty takes DO's default.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? size;

  /// Type is the DigitalOcean load-balancer type. Empty takes DO's default (REGIONAL).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? type;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateLBReq &&
    _deepEquality.equals(other.forwardingRules, forwardingRules) &&
    other.name == name &&
    other.region == region &&
    other.size == size &&
    other.type == type;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (forwardingRules.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (region == null ? 0 : region!.hashCode) +
    (size == null ? 0 : size!.hashCode) +
    (type == null ? 0 : type!.hashCode);

  @override
  String toString() => 'CreateLBReq[forwardingRules=$forwardingRules, name=$name, region=$region, size=$size, type=$type]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'forwarding_rules'] = this.forwardingRules;
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
    if (this.size != null) {
      json[r'size'] = this.size;
    } else {
      json[r'size'] = null;
    }
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
    return json;
  }

  /// Returns a new [CreateLBReq] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateLBReq? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateLBReq[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateLBReq[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateLBReq(
        forwardingRules: FwdRule.listFromJson(json[r'forwarding_rules']),
        name: mapValueOfType<String>(json, r'name'),
        region: mapValueOfType<String>(json, r'region'),
        size: mapValueOfType<String>(json, r'size'),
        type: mapValueOfType<String>(json, r'type'),
      );
    }
    return null;
  }

  static List<CreateLBReq> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateLBReq>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateLBReq.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateLBReq> mapFromJson(dynamic json) {
    final map = <String, CreateLBReq>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateLBReq.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateLBReq-objects as value to a dart map
  static Map<String, List<CreateLBReq>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateLBReq>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateLBReq.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

