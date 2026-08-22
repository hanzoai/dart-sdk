//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class SeoRanking {
  /// Returns a new [SeoRanking] instance.
  SeoRanking({
    this.keyword,
    this.position,
    this.title,
    this.traffic,
    this.url,
    this.volume,
  });
  /// Keyword is the phrase searched.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? keyword;

  /// Position is the absolute rank on the results page, counting every element — so it is what a person scrolling actually passes, not the organic-only rank.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? position;

  /// Title is that result's headline.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? title;

  /// Traffic is the estimated monthly visits this placement earns.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? traffic;

  /// URL is the page of the target that placed.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? url;

  /// Volume is the phrase's average monthly searches.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? volume;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SeoRanking &&
    other.keyword == keyword &&
    other.position == position &&
    other.title == title &&
    other.traffic == traffic &&
    other.url == url &&
    other.volume == volume;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (keyword == null ? 0 : keyword!.hashCode) +
    (position == null ? 0 : position!.hashCode) +
    (title == null ? 0 : title!.hashCode) +
    (traffic == null ? 0 : traffic!.hashCode) +
    (url == null ? 0 : url!.hashCode) +
    (volume == null ? 0 : volume!.hashCode);

  @override
  String toString() => 'SeoRanking[keyword=$keyword, position=$position, title=$title, traffic=$traffic, url=$url, volume=$volume]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.keyword != null) {
      json[r'keyword'] = this.keyword;
    } else {
      json[r'keyword'] = null;
    }
    if (this.position != null) {
      json[r'position'] = this.position;
    } else {
      json[r'position'] = null;
    }
    if (this.title != null) {
      json[r'title'] = this.title;
    } else {
      json[r'title'] = null;
    }
    if (this.traffic != null) {
      json[r'traffic'] = this.traffic;
    } else {
      json[r'traffic'] = null;
    }
    if (this.url != null) {
      json[r'url'] = this.url;
    } else {
      json[r'url'] = null;
    }
    if (this.volume != null) {
      json[r'volume'] = this.volume;
    } else {
      json[r'volume'] = null;
    }
    return json;
  }

  /// Returns a new [SeoRanking] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SeoRanking? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SeoRanking[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SeoRanking[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SeoRanking(
        keyword: mapValueOfType<String>(json, r'keyword'),
        position: mapValueOfType<int>(json, r'position'),
        title: mapValueOfType<String>(json, r'title'),
        traffic: num.parse('${json[r'traffic']}'),
        url: mapValueOfType<String>(json, r'url'),
        volume: mapValueOfType<int>(json, r'volume'),
      );
    }
    return null;
  }

  static List<SeoRanking> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SeoRanking>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SeoRanking.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SeoRanking> mapFromJson(dynamic json) {
    final map = <String, SeoRanking>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SeoRanking.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SeoRanking-objects as value to a dart map
  static Map<String, List<SeoRanking>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SeoRanking>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SeoRanking.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

