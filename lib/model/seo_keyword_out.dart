//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class SeoKeywordOut {
  /// Returns a new [SeoKeywordOut] instance.
  SeoKeywordOut({
    this.cost,
    this.keywords = const [],
  });
  /// Cost is what this call cost, in USD, as an exact decimal string. It is the upstream's own number and it is what was debited.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? cost;

  /// Keywords is one measurement per phrase, in the order the upstream answered.
  List<SeoMetric> keywords;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SeoKeywordOut &&
    other.cost == cost &&
    _deepEquality.equals(other.keywords, keywords);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (cost == null ? 0 : cost!.hashCode) +
    (keywords.hashCode);

  @override
  String toString() => 'SeoKeywordOut[cost=$cost, keywords=$keywords]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.cost != null) {
      json[r'cost'] = this.cost;
    } else {
      json[r'cost'] = null;
    }
      json[r'keywords'] = this.keywords;
    return json;
  }

  /// Returns a new [SeoKeywordOut] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SeoKeywordOut? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SeoKeywordOut[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SeoKeywordOut[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SeoKeywordOut(
        cost: mapValueOfType<String>(json, r'cost'),
        keywords: SeoMetric.listFromJson(json[r'keywords']),
      );
    }
    return null;
  }

  static List<SeoKeywordOut> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SeoKeywordOut>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SeoKeywordOut.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SeoKeywordOut> mapFromJson(dynamic json) {
    final map = <String, SeoKeywordOut>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SeoKeywordOut.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SeoKeywordOut-objects as value to a dart map
  static Map<String, List<SeoKeywordOut>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SeoKeywordOut>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SeoKeywordOut.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

