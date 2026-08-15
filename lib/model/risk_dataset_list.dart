//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class RiskDatasetList {
  /// Returns a new [RiskDatasetList] instance.
  RiskDatasetList({
    this.items = const [],
  });

  /// Items is one entry per dataset, carrying its newest version. Never null: an org that has declared nothing gets an empty array.
  List<RiskDataset> items;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RiskDatasetList &&
    _deepEquality.equals(other.items, items);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (items.hashCode);

  @override
  String toString() => 'RiskDatasetList[items=$items]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'items'] = this.items;
    return json;
  }

  /// Returns a new [RiskDatasetList] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RiskDatasetList? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RiskDatasetList[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RiskDatasetList[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RiskDatasetList(
        items: RiskDataset.listFromJson(json[r'items']),
      );
    }
    return null;
  }

  static List<RiskDatasetList> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RiskDatasetList>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RiskDatasetList.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RiskDatasetList> mapFromJson(dynamic json) {
    final map = <String, RiskDatasetList>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RiskDatasetList.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RiskDatasetList-objects as value to a dart map
  static Map<String, List<RiskDatasetList>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RiskDatasetList>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RiskDatasetList.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

