//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class History {
  /// Returns a new [History] instance.
  History({
    this.at,
    this.chain,
    this.days = const [],
    this.reach,
  });
  /// At is the token this is the history of, lowercased.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? at;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? chain;

  /// Days is oldest first, which is the order a chart draws. `[]` for a token the indexer holds no day for, `null` where the read failed.
  List<Day> days;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Reach? reach;

  @override
  bool operator ==(Object other) => identical(this, other) || other is History &&
    other.at == at &&
    other.chain == chain &&
    _deepEquality.equals(other.days, days) &&
    other.reach == reach;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (at == null ? 0 : at!.hashCode) +
    (chain == null ? 0 : chain!.hashCode) +
    (days.hashCode) +
    (reach == null ? 0 : reach!.hashCode);

  @override
  String toString() => 'History[at=$at, chain=$chain, days=$days, reach=$reach]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.at != null) {
      json[r'at'] = this.at;
    } else {
      json[r'at'] = null;
    }
    if (this.chain != null) {
      json[r'chain'] = this.chain;
    } else {
      json[r'chain'] = null;
    }
      json[r'days'] = this.days;
    if (this.reach != null) {
      json[r'reach'] = this.reach;
    } else {
      json[r'reach'] = null;
    }
    return json;
  }

  /// Returns a new [History] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static History? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "History[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "History[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return History(
        at: mapValueOfType<String>(json, r'at'),
        chain: mapValueOfType<String>(json, r'chain'),
        days: Day.listFromJson(json[r'days']),
        reach: Reach.fromJson(json[r'reach']),
      );
    }
    return null;
  }

  static List<History> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <History>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = History.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, History> mapFromJson(dynamic json) {
    final map = <String, History>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = History.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of History-objects as value to a dart map
  static Map<String, List<History>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<History>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = History.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

