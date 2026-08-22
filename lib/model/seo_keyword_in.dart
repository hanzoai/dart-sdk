//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class SeoKeywordIn {
  /// Returns a new [SeoKeywordIn] instance.
  SeoKeywordIn({
    this.keywords = const [],
    this.language,
    this.location,
  });
  /// Keywords are the phrases. At least one; blanks are dropped.
  List<String> keywords;

  /// Language is the ISO code. Defaults to \"en\".
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? language;

  /// Location is the market, as the upstream's numeric code. Defaults to 2840, the United States.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? location;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SeoKeywordIn &&
    _deepEquality.equals(other.keywords, keywords) &&
    other.language == language &&
    other.location == location;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (keywords.hashCode) +
    (language == null ? 0 : language!.hashCode) +
    (location == null ? 0 : location!.hashCode);

  @override
  String toString() => 'SeoKeywordIn[keywords=$keywords, language=$language, location=$location]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'keywords'] = this.keywords;
    if (this.language != null) {
      json[r'language'] = this.language;
    } else {
      json[r'language'] = null;
    }
    if (this.location != null) {
      json[r'location'] = this.location;
    } else {
      json[r'location'] = null;
    }
    return json;
  }

  /// Returns a new [SeoKeywordIn] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SeoKeywordIn? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SeoKeywordIn[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SeoKeywordIn[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SeoKeywordIn(
        keywords: json[r'keywords'] is Iterable
            ? (json[r'keywords'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        language: mapValueOfType<String>(json, r'language'),
        location: mapValueOfType<int>(json, r'location'),
      );
    }
    return null;
  }

  static List<SeoKeywordIn> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SeoKeywordIn>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SeoKeywordIn.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SeoKeywordIn> mapFromJson(dynamic json) {
    final map = <String, SeoKeywordIn>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SeoKeywordIn.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SeoKeywordIn-objects as value to a dart map
  static Map<String, List<SeoKeywordIn>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SeoKeywordIn>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SeoKeywordIn.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

