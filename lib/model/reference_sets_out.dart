//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ReferenceSetsOut {
  /// Returns a new [ReferenceSetsOut] instance.
  ReferenceSetsOut({
    this.refused = const [],
    this.sets = const [],
    this.stale = const [],
  });
  /// Refused names the sets that cannot be consulted at all. A key checked against one of these is UNKNOWN, not clean.
  List<String> refused;

  /// Sets is the whole catalog, in a stable order.
  List<ReferenceSet> sets;

  /// Stale names the sets past their freshness bound — the list to alarm on.
  List<String> stale;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ReferenceSetsOut &&
    _deepEquality.equals(other.refused, refused) &&
    _deepEquality.equals(other.sets, sets) &&
    _deepEquality.equals(other.stale, stale);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (refused.hashCode) +
    (sets.hashCode) +
    (stale.hashCode);

  @override
  String toString() => 'ReferenceSetsOut[refused=$refused, sets=$sets, stale=$stale]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'refused'] = this.refused;
      json[r'sets'] = this.sets;
      json[r'stale'] = this.stale;
    return json;
  }

  /// Returns a new [ReferenceSetsOut] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ReferenceSetsOut? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ReferenceSetsOut[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ReferenceSetsOut[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ReferenceSetsOut(
        refused: json[r'refused'] is Iterable
            ? (json[r'refused'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        sets: ReferenceSet.listFromJson(json[r'sets']),
        stale: json[r'stale'] is Iterable
            ? (json[r'stale'] as Iterable).cast<String>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<ReferenceSetsOut> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ReferenceSetsOut>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ReferenceSetsOut.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ReferenceSetsOut> mapFromJson(dynamic json) {
    final map = <String, ReferenceSetsOut>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ReferenceSetsOut.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ReferenceSetsOut-objects as value to a dart map
  static Map<String, List<ReferenceSetsOut>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ReferenceSetsOut>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ReferenceSetsOut.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

