//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class SeoRankOut {
  /// Returns a new [SeoRankOut] instance.
  SeoRankOut({
    this.cost,
    this.rankings = const [],
    this.total,
  });
  /// Cost is what this call cost, in USD, as an exact decimal string.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? cost;

  /// Rankings is one row per phrase the domain places for.
  List<SeoRanking> rankings;

  /// Total is how many placements the upstream holds for this domain.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? total;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SeoRankOut &&
    other.cost == cost &&
    _deepEquality.equals(other.rankings, rankings) &&
    other.total == total;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (cost == null ? 0 : cost!.hashCode) +
    (rankings.hashCode) +
    (total == null ? 0 : total!.hashCode);

  @override
  String toString() => 'SeoRankOut[cost=$cost, rankings=$rankings, total=$total]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.cost != null) {
      json[r'cost'] = this.cost;
    } else {
      json[r'cost'] = null;
    }
      json[r'rankings'] = this.rankings;
    if (this.total != null) {
      json[r'total'] = this.total;
    } else {
      json[r'total'] = null;
    }
    return json;
  }

  /// Returns a new [SeoRankOut] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SeoRankOut? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SeoRankOut[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SeoRankOut[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SeoRankOut(
        cost: mapValueOfType<String>(json, r'cost'),
        rankings: SeoRanking.listFromJson(json[r'rankings']),
        total: mapValueOfType<int>(json, r'total'),
      );
    }
    return null;
  }

  static List<SeoRankOut> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SeoRankOut>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SeoRankOut.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SeoRankOut> mapFromJson(dynamic json) {
    final map = <String, SeoRankOut>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SeoRankOut.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SeoRankOut-objects as value to a dart map
  static Map<String, List<SeoRankOut>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SeoRankOut>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SeoRankOut.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

