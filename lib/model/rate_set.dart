//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class RateSet {
  /// Returns a new [RateSet] instance.
  RateSet({
    this.id,
    this.rateBps,
  });

  /// ID is the affiliate whose direct rate moves, from the path.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// RateBps is the direct commission rate, in basis points of Hanzo's margin; capped so the whole L1+L2+L3 schedule never exceeds the margin. Body-only (`url:\"-\"`): a money parameter must never ride the URL into access logs.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? rateBps;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RateSet &&
    other.id == id &&
    other.rateBps == rateBps;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (rateBps == null ? 0 : rateBps!.hashCode);

  @override
  String toString() => 'RateSet[id=$id, rateBps=$rateBps]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.rateBps != null) {
      json[r'rateBps'] = this.rateBps;
    } else {
      json[r'rateBps'] = null;
    }
    return json;
  }

  /// Returns a new [RateSet] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RateSet? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RateSet[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RateSet[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RateSet(
        id: mapValueOfType<String>(json, r'id'),
        rateBps: mapValueOfType<int>(json, r'rateBps'),
      );
    }
    return null;
  }

  static List<RateSet> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RateSet>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RateSet.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RateSet> mapFromJson(dynamic json) {
    final map = <String, RateSet>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RateSet.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RateSet-objects as value to a dart map
  static Map<String, List<RateSet>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RateSet>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RateSet.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

