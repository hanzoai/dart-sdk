//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Pools {
  /// Returns a new [Pools] instance.
  Pools({
    this.chain,
    this.pools = const [],
    this.reach,
  });
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? chain;

  /// Pools is `[]` where the chain has none and `null` where the read failed.  The two are different sentences and the wire says which: an empty ARRAY is the indexer answering that nothing is deployed there, and `null` is nobody having answered. `omitempty` would collapse both to an absent key — which is the exact flattening the reach beside it exists to prevent, reintroduced one struct tag lower down.
  List<Pool> pools;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Reach? reach;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Pools &&
    other.chain == chain &&
    _deepEquality.equals(other.pools, pools) &&
    other.reach == reach;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (chain == null ? 0 : chain!.hashCode) +
    (pools.hashCode) +
    (reach == null ? 0 : reach!.hashCode);

  @override
  String toString() => 'Pools[chain=$chain, pools=$pools, reach=$reach]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.chain != null) {
      json[r'chain'] = this.chain;
    } else {
      json[r'chain'] = null;
    }
      json[r'pools'] = this.pools;
    if (this.reach != null) {
      json[r'reach'] = this.reach;
    } else {
      json[r'reach'] = null;
    }
    return json;
  }

  /// Returns a new [Pools] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Pools? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Pools[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Pools[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Pools(
        chain: mapValueOfType<String>(json, r'chain'),
        pools: Pool.listFromJson(json[r'pools']),
        reach: Reach.fromJson(json[r'reach']),
      );
    }
    return null;
  }

  static List<Pools> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Pools>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Pools.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Pools> mapFromJson(dynamic json) {
    final map = <String, Pools>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Pools.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Pools-objects as value to a dart map
  static Map<String, List<Pools>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Pools>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Pools.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

