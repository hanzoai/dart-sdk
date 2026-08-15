//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class PlanRegionList {
  /// Returns a new [PlanRegionList] instance.
  PlanRegionList({
    this.regions = const [],
  });

  /// Regions are the regions cloud capacity is offered in, each an opaque object exactly as the catalog emits it — typically id, name, location and flag.
  List<Object> regions;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PlanRegionList &&
    _deepEquality.equals(other.regions, regions);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (regions.hashCode);

  @override
  String toString() => 'PlanRegionList[regions=$regions]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'regions'] = this.regions;
    return json;
  }

  /// Returns a new [PlanRegionList] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PlanRegionList? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PlanRegionList[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PlanRegionList[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PlanRegionList(
        regions: json[r'regions'] is Iterable
            ? (json[r'regions'] as Iterable).cast<Object>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<PlanRegionList> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PlanRegionList>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PlanRegionList.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PlanRegionList> mapFromJson(dynamic json) {
    final map = <String, PlanRegionList>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PlanRegionList.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PlanRegionList-objects as value to a dart map
  static Map<String, List<PlanRegionList>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PlanRegionList>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PlanRegionList.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

