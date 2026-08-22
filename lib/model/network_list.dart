//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class NetworkList {
  /// Returns a new [NetworkList] instance.
  NetworkList({
    this.networks = const [],
  });
  /// Networks holds the org's overlay network, or is empty when the org has no edge-routers on the fabric (no nodes → no network, never a fabricated one).
  List<NetworkView> networks;

  @override
  bool operator ==(Object other) => identical(this, other) || other is NetworkList &&
    _deepEquality.equals(other.networks, networks);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (networks.hashCode);

  @override
  String toString() => 'NetworkList[networks=$networks]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'networks'] = this.networks;
    return json;
  }

  /// Returns a new [NetworkList] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static NetworkList? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "NetworkList[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "NetworkList[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return NetworkList(
        networks: NetworkView.listFromJson(json[r'networks']),
      );
    }
    return null;
  }

  static List<NetworkList> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <NetworkList>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = NetworkList.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, NetworkList> mapFromJson(dynamic json) {
    final map = <String, NetworkList>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = NetworkList.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of NetworkList-objects as value to a dart map
  static Map<String, List<NetworkList>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<NetworkList>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = NetworkList.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

