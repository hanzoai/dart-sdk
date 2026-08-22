//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class SeoMetric {
  /// Returns a new [SeoMetric] instance.
  SeoMetric({
    this.competition,
    this.cpc,
    this.difficulty,
    this.keyword,
    this.level,
    this.volume,
  });
  /// Competition is how contested the advertising is, from 0 to 1. The upstream reports it as an index out of a hundred on one endpoint and as this fraction on another; it is the fraction here in both cases.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? competition;

  /// CPC is the average cost of one advertising click, in USD. It is a reported statistic about somebody else's auction, not an amount this API moves.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? cpc;

  /// Difficulty is how hard the first page is to reach organically, 0 to 100. Present on seoIdea, which measures it; absent on seoKeyword, which does not.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? difficulty;

  /// Keyword is the phrase.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? keyword;

  /// Level is the same fact as a word: low, medium or high.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? level;

  /// Volume is the average monthly searches.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? volume;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SeoMetric &&
    other.competition == competition &&
    other.cpc == cpc &&
    other.difficulty == difficulty &&
    other.keyword == keyword &&
    other.level == level &&
    other.volume == volume;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (competition == null ? 0 : competition!.hashCode) +
    (cpc == null ? 0 : cpc!.hashCode) +
    (difficulty == null ? 0 : difficulty!.hashCode) +
    (keyword == null ? 0 : keyword!.hashCode) +
    (level == null ? 0 : level!.hashCode) +
    (volume == null ? 0 : volume!.hashCode);

  @override
  String toString() => 'SeoMetric[competition=$competition, cpc=$cpc, difficulty=$difficulty, keyword=$keyword, level=$level, volume=$volume]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.competition != null) {
      json[r'competition'] = this.competition;
    } else {
      json[r'competition'] = null;
    }
    if (this.cpc != null) {
      json[r'cpc'] = this.cpc;
    } else {
      json[r'cpc'] = null;
    }
    if (this.difficulty != null) {
      json[r'difficulty'] = this.difficulty;
    } else {
      json[r'difficulty'] = null;
    }
    if (this.keyword != null) {
      json[r'keyword'] = this.keyword;
    } else {
      json[r'keyword'] = null;
    }
    if (this.level != null) {
      json[r'level'] = this.level;
    } else {
      json[r'level'] = null;
    }
    if (this.volume != null) {
      json[r'volume'] = this.volume;
    } else {
      json[r'volume'] = null;
    }
    return json;
  }

  /// Returns a new [SeoMetric] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SeoMetric? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SeoMetric[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SeoMetric[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SeoMetric(
        competition: num.parse('${json[r'competition']}'),
        cpc: num.parse('${json[r'cpc']}'),
        difficulty: mapValueOfType<int>(json, r'difficulty'),
        keyword: mapValueOfType<String>(json, r'keyword'),
        level: mapValueOfType<String>(json, r'level'),
        volume: mapValueOfType<int>(json, r'volume'),
      );
    }
    return null;
  }

  static List<SeoMetric> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SeoMetric>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SeoMetric.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SeoMetric> mapFromJson(dynamic json) {
    final map = <String, SeoMetric>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SeoMetric.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SeoMetric-objects as value to a dart map
  static Map<String, List<SeoMetric>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SeoMetric>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SeoMetric.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

