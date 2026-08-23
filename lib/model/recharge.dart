//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Recharge {
  /// Returns a new [Recharge] instance.
  Recharge({
    this.charged,
    this.orgs,
    this.results = const [],
  });
  /// Charged is how many of them were actually charged. It is at most Orgs, and the difference is orgs whose balance was already above their threshold.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? charged;

  /// Orgs is how many orgs the sweep considered — every org with auto-recharge armed, whether or not it needed charging.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? orgs;

  /// Results is one row per org considered, so a sweep that charged nobody is still explainable. Never null.
  List<Recharged> results;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Recharge &&
    other.charged == charged &&
    other.orgs == orgs &&
    _deepEquality.equals(other.results, results);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (charged == null ? 0 : charged!.hashCode) +
    (orgs == null ? 0 : orgs!.hashCode) +
    (results.hashCode);

  @override
  String toString() => 'Recharge[charged=$charged, orgs=$orgs, results=$results]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.charged != null) {
      json[r'charged'] = this.charged;
    } else {
      json[r'charged'] = null;
    }
    if (this.orgs != null) {
      json[r'orgs'] = this.orgs;
    } else {
      json[r'orgs'] = null;
    }
      json[r'results'] = this.results;
    return json;
  }

  /// Returns a new [Recharge] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Recharge? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Recharge[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Recharge[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Recharge(
        charged: mapValueOfType<int>(json, r'charged'),
        orgs: mapValueOfType<int>(json, r'orgs'),
        results: Recharged.listFromJson(json[r'results']),
      );
    }
    return null;
  }

  static List<Recharge> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Recharge>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Recharge.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Recharge> mapFromJson(dynamic json) {
    final map = <String, Recharge>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Recharge.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Recharge-objects as value to a dart map
  static Map<String, List<Recharge>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Recharge>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Recharge.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

