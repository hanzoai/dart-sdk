//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class LbList {
  /// Returns a new [LbList] instance.
  LbList({
    this.loadBalancers = const [],
  });

  /// LoadBalancers are the caller org's load balancers under their friendly names.
  List<LbView> loadBalancers;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LbList &&
    _deepEquality.equals(other.loadBalancers, loadBalancers);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (loadBalancers.hashCode);

  @override
  String toString() => 'LbList[loadBalancers=$loadBalancers]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'loadBalancers'] = this.loadBalancers;
    return json;
  }

  /// Returns a new [LbList] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LbList? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "LbList[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "LbList[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return LbList(
        loadBalancers: LbView.listFromJson(json[r'loadBalancers']),
      );
    }
    return null;
  }

  static List<LbList> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LbList>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LbList.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LbList> mapFromJson(dynamic json) {
    final map = <String, LbList>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LbList.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LbList-objects as value to a dart map
  static Map<String, List<LbList>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<LbList>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = LbList.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

