//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ChainList {
  /// Returns a new [ChainList] instance.
  ChainList({
    this.chains = const [],
  });

  /// Chains is every chain this deployment is configured to reach, sorted by id. Empty when none are configured — never a fabricated entry.
  List<Chain> chains;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ChainList &&
    _deepEquality.equals(other.chains, chains);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (chains.hashCode);

  @override
  String toString() => 'ChainList[chains=$chains]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'chains'] = this.chains;
    return json;
  }

  /// Returns a new [ChainList] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ChainList? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ChainList[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ChainList[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ChainList(
        chains: Chain.listFromJson(json[r'chains']),
      );
    }
    return null;
  }

  static List<ChainList> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ChainList>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ChainList.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ChainList> mapFromJson(dynamic json) {
    final map = <String, ChainList>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ChainList.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ChainList-objects as value to a dart map
  static Map<String, List<ChainList>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ChainList>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ChainList.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

