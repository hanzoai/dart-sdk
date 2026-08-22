//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ResolveReferenceIn {
  /// Returns a new [ResolveReferenceIn] instance.
  ResolveReferenceIn({
    this.keys = const [],
    this.sets = const [],
  });
  /// Keys are the values to look up, at most 100 per call: email addresses or domains, IP addresses, card prefixes, user-agent strings, autonomous system numbers, device digests.
  List<String> keys;

  /// Sets narrows which sets to consult. Empty consults every set whose matcher can read the keys given.
  List<String> sets;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ResolveReferenceIn &&
    _deepEquality.equals(other.keys, keys) &&
    _deepEquality.equals(other.sets, sets);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (keys.hashCode) +
    (sets.hashCode);

  @override
  String toString() => 'ResolveReferenceIn[keys=$keys, sets=$sets]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'keys'] = this.keys;
      json[r'sets'] = this.sets;
    return json;
  }

  /// Returns a new [ResolveReferenceIn] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ResolveReferenceIn? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ResolveReferenceIn[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ResolveReferenceIn[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ResolveReferenceIn(
        keys: json[r'keys'] is Iterable
            ? (json[r'keys'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        sets: json[r'sets'] is Iterable
            ? (json[r'sets'] as Iterable).cast<String>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<ResolveReferenceIn> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ResolveReferenceIn>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ResolveReferenceIn.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ResolveReferenceIn> mapFromJson(dynamic json) {
    final map = <String, ResolveReferenceIn>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ResolveReferenceIn.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ResolveReferenceIn-objects as value to a dart map
  static Map<String, List<ResolveReferenceIn>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ResolveReferenceIn>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ResolveReferenceIn.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

