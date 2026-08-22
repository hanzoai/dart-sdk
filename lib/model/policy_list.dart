//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class PolicyList {
  /// Returns a new [PolicyList] instance.
  PolicyList({
    this.policies = const [],
  });
  /// Policies is the list.
  List<Object> policies;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PolicyList &&
    _deepEquality.equals(other.policies, policies);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (policies.hashCode);

  @override
  String toString() => 'PolicyList[policies=$policies]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'policies'] = this.policies;
    return json;
  }

  /// Returns a new [PolicyList] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PolicyList? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PolicyList[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PolicyList[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PolicyList(
        policies: json[r'policies'] is Iterable
            ? (json[r'policies'] as Iterable).cast<Object>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<PolicyList> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PolicyList>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PolicyList.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PolicyList> mapFromJson(dynamic json) {
    final map = <String, PolicyList>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PolicyList.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PolicyList-objects as value to a dart map
  static Map<String, List<PolicyList>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PolicyList>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PolicyList.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

