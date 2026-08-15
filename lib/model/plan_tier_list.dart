//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class PlanTierList {
  /// Returns a new [PlanTierList] instance.
  PlanTierList({
    this.tiers = const [],
  });

  /// Tiers are the rentable GPU configurations, each an opaque object exactly as the catalog emits it — typically id, name, GPU count and model, VRAM, vCPUs, host memory and hourly price.
  List<Object> tiers;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PlanTierList &&
    _deepEquality.equals(other.tiers, tiers);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (tiers.hashCode);

  @override
  String toString() => 'PlanTierList[tiers=$tiers]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'tiers'] = this.tiers;
    return json;
  }

  /// Returns a new [PlanTierList] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PlanTierList? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PlanTierList[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PlanTierList[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PlanTierList(
        tiers: json[r'tiers'] is Iterable
            ? (json[r'tiers'] as Iterable).cast<Object>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<PlanTierList> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PlanTierList>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PlanTierList.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PlanTierList> mapFromJson(dynamic json) {
    final map = <String, PlanTierList>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PlanTierList.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PlanTierList-objects as value to a dart map
  static Map<String, List<PlanTierList>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PlanTierList>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PlanTierList.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

