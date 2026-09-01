//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Roster {
  /// Returns a new [Roster] instance.
  Roster({
    this.chains = const [],
    this.reach,
  });
  /// Chains is `[]` where the registry answered and named none, and `null` where it did not answer — never absent, because a missing key and an empty list read alike and only one of them means \"there are none\". Each row carries its OWN reach for its figures, so a chain whose indexer is down is one row saying so.
  List<Market> chains;

  /// Reach is how far the read of the REGISTRY got. It governs the list: a registry that did not answer yields no rows, and the reason it did not is here rather than in an empty array a caller would read as \"no chains exist\".
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Reach? reach;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Roster &&
    _deepEquality.equals(other.chains, chains) &&
    other.reach == reach;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (chains.hashCode) +
    (reach == null ? 0 : reach!.hashCode);

  @override
  String toString() => 'Roster[chains=$chains, reach=$reach]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'chains'] = this.chains;
    if (this.reach != null) {
      json[r'reach'] = this.reach;
    } else {
      json[r'reach'] = null;
    }
    return json;
  }

  /// Returns a new [Roster] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Roster? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Roster[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Roster[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Roster(
        chains: Market.listFromJson(json[r'chains']),
        reach: Reach.fromJson(json[r'reach']),
      );
    }
    return null;
  }

  static List<Roster> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Roster>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Roster.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Roster> mapFromJson(dynamic json) {
    final map = <String, Roster>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Roster.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Roster-objects as value to a dart map
  static Map<String, List<Roster>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Roster>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Roster.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

