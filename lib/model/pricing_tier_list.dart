//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class PricingTierList {
  /// Returns a new [PricingTierList] instance.
  PricingTierList({
    this.tiers = const [],
  });

  /// Tiers are the rentable GPU configurations, each an opaque object exactly as the pricing source emits it — typically id, name, accelerator count and model, VRAM, vCPU, memory and hourly price.
  List<Map<String, Object>> tiers;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PricingTierList &&
    _deepEquality.equals(other.tiers, tiers);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (tiers.hashCode);

  @override
  String toString() => 'PricingTierList[tiers=$tiers]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'tiers'] = this.tiers;
    return json;
  }

  /// Returns a new [PricingTierList] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PricingTierList? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PricingTierList[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PricingTierList[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PricingTierList(
        tiers: json[r'tiers'] is Iterable
            ? (json[r'tiers'] as Iterable).map((e) => (e as Map).cast<String, Object>()).toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<PricingTierList> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PricingTierList>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PricingTierList.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PricingTierList> mapFromJson(dynamic json) {
    final map = <String, PricingTierList>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PricingTierList.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PricingTierList-objects as value to a dart map
  static Map<String, List<PricingTierList>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PricingTierList>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PricingTierList.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

