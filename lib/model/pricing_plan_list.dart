//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class PricingPlanList {
  /// Returns a new [PricingPlanList] instance.
  PricingPlanList({
    this.plans = const [],
  });

  /// Plans are the plans in this section, each an opaque object exactly as the pricing source emits it — typically id, name, description, price and a feature list.
  List<Map<String, Object>> plans;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PricingPlanList &&
    _deepEquality.equals(other.plans, plans);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (plans.hashCode);

  @override
  String toString() => 'PricingPlanList[plans=$plans]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'plans'] = this.plans;
    return json;
  }

  /// Returns a new [PricingPlanList] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PricingPlanList? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PricingPlanList[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PricingPlanList[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PricingPlanList(
        plans: json[r'plans'] is Iterable
            ? (json[r'plans'] as Iterable).map((e) => (e as Map).cast<String, Object>()).toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<PricingPlanList> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PricingPlanList>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PricingPlanList.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PricingPlanList> mapFromJson(dynamic json) {
    final map = <String, PricingPlanList>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PricingPlanList.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PricingPlanList-objects as value to a dart map
  static Map<String, List<PricingPlanList>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PricingPlanList>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PricingPlanList.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

