//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class SeoCompetitorOut {
  /// Returns a new [SeoCompetitorOut] instance.
  SeoCompetitorOut({
    this.competitors = const [],
    this.cost,
    this.total,
  });
  /// Competitors is one row per domain, strongest first.
  List<SeoDomain> competitors;

  /// Cost is what this call cost, in USD, as an exact decimal string.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? cost;

  /// Total is how many domains the upstream holds for these phrases.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? total;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SeoCompetitorOut &&
    _deepEquality.equals(other.competitors, competitors) &&
    other.cost == cost &&
    other.total == total;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (competitors.hashCode) +
    (cost == null ? 0 : cost!.hashCode) +
    (total == null ? 0 : total!.hashCode);

  @override
  String toString() => 'SeoCompetitorOut[competitors=$competitors, cost=$cost, total=$total]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'competitors'] = this.competitors;
    if (this.cost != null) {
      json[r'cost'] = this.cost;
    } else {
      json[r'cost'] = null;
    }
    if (this.total != null) {
      json[r'total'] = this.total;
    } else {
      json[r'total'] = null;
    }
    return json;
  }

  /// Returns a new [SeoCompetitorOut] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SeoCompetitorOut? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SeoCompetitorOut[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SeoCompetitorOut[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SeoCompetitorOut(
        competitors: SeoDomain.listFromJson(json[r'competitors']),
        cost: mapValueOfType<String>(json, r'cost'),
        total: mapValueOfType<int>(json, r'total'),
      );
    }
    return null;
  }

  static List<SeoCompetitorOut> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SeoCompetitorOut>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SeoCompetitorOut.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SeoCompetitorOut> mapFromJson(dynamic json) {
    final map = <String, SeoCompetitorOut>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SeoCompetitorOut.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SeoCompetitorOut-objects as value to a dart map
  static Map<String, List<SeoCompetitorOut>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SeoCompetitorOut>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SeoCompetitorOut.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

