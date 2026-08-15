//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class VpcView {
  /// Returns a new [VpcView] instance.
  VpcView({
    this.cidr,
    this.id,
    this.name,
    this.region,
    this.status,
    this.subnets = const [],
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? cidr;

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
  String? name;

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
  String? status;

  List<String> subnets;

  @override
  bool operator ==(Object other) => identical(this, other) || other is VpcView &&
    other.cidr == cidr &&
    other.id == id &&
    other.name == name &&
    other.region == region &&
    other.status == status &&
    _deepEquality.equals(other.subnets, subnets);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (cidr == null ? 0 : cidr!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (region == null ? 0 : region!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (subnets.hashCode);

  @override
  String toString() => 'VpcView[cidr=$cidr, id=$id, name=$name, region=$region, status=$status, subnets=$subnets]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.cidr != null) {
      json[r'cidr'] = this.cidr;
    } else {
      json[r'cidr'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
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
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
      json[r'subnets'] = this.subnets;
    return json;
  }

  /// Returns a new [VpcView] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static VpcView? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "VpcView[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "VpcView[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return VpcView(
        cidr: mapValueOfType<String>(json, r'cidr'),
        id: mapValueOfType<String>(json, r'id'),
        name: mapValueOfType<String>(json, r'name'),
        region: mapValueOfType<String>(json, r'region'),
        status: mapValueOfType<String>(json, r'status'),
        subnets: json[r'subnets'] is Iterable
            ? (json[r'subnets'] as Iterable).cast<String>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<VpcView> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <VpcView>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = VpcView.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, VpcView> mapFromJson(dynamic json) {
    final map = <String, VpcView>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = VpcView.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of VpcView-objects as value to a dart map
  static Map<String, List<VpcView>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<VpcView>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = VpcView.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

