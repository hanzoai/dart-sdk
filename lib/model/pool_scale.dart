//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class PoolScale {
  /// Returns a new [PoolScale] instance.
  PoolScale({
    this.clusterId,
    this.count,
    this.poolId,
    this.provider,
  });

  /// ClusterID and PoolID address the pool, from the URL path.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? clusterId;

  /// Count is the node count to scale TO — an absolute target, not a delta, and never negative.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? count;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? poolId;

  /// Provider is the cloud the cluster lives on. Required; body or ?provider=.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? provider;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PoolScale &&
    other.clusterId == clusterId &&
    other.count == count &&
    other.poolId == poolId &&
    other.provider == provider;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (clusterId == null ? 0 : clusterId!.hashCode) +
    (count == null ? 0 : count!.hashCode) +
    (poolId == null ? 0 : poolId!.hashCode) +
    (provider == null ? 0 : provider!.hashCode);

  @override
  String toString() => 'PoolScale[clusterId=$clusterId, count=$count, poolId=$poolId, provider=$provider]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.clusterId != null) {
      json[r'clusterId'] = this.clusterId;
    } else {
      json[r'clusterId'] = null;
    }
    if (this.count != null) {
      json[r'count'] = this.count;
    } else {
      json[r'count'] = null;
    }
    if (this.poolId != null) {
      json[r'poolId'] = this.poolId;
    } else {
      json[r'poolId'] = null;
    }
    if (this.provider != null) {
      json[r'provider'] = this.provider;
    } else {
      json[r'provider'] = null;
    }
    return json;
  }

  /// Returns a new [PoolScale] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PoolScale? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PoolScale[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PoolScale[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PoolScale(
        clusterId: mapValueOfType<String>(json, r'clusterId'),
        count: mapValueOfType<int>(json, r'count'),
        poolId: mapValueOfType<String>(json, r'poolId'),
        provider: mapValueOfType<String>(json, r'provider'),
      );
    }
    return null;
  }

  static List<PoolScale> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PoolScale>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PoolScale.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PoolScale> mapFromJson(dynamic json) {
    final map = <String, PoolScale>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PoolScale.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PoolScale-objects as value to a dart map
  static Map<String, List<PoolScale>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PoolScale>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PoolScale.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

