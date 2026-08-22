//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class SeoIdeaIn {
  /// Returns a new [SeoIdeaIn] instance.
  SeoIdeaIn({
    this.keywords = const [],
    this.language,
    this.limit,
    this.location,
  });
  /// Keywords are the seeds. At least one; blanks are dropped.
  List<String> keywords;

  /// Language is the ISO code. Defaults to \"en\".
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? language;

  /// Limit is how many phrases to return, 1 to 1000. Defaults to 100. It is what this call is priced on, because the upstream charges per row.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? limit;

  /// Location is the market, as the upstream's numeric code. Defaults to 2840.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? location;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SeoIdeaIn &&
    _deepEquality.equals(other.keywords, keywords) &&
    other.language == language &&
    other.limit == limit &&
    other.location == location;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (keywords.hashCode) +
    (language == null ? 0 : language!.hashCode) +
    (limit == null ? 0 : limit!.hashCode) +
    (location == null ? 0 : location!.hashCode);

  @override
  String toString() => 'SeoIdeaIn[keywords=$keywords, language=$language, limit=$limit, location=$location]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'keywords'] = this.keywords;
    if (this.language != null) {
      json[r'language'] = this.language;
    } else {
      json[r'language'] = null;
    }
    if (this.limit != null) {
      json[r'limit'] = this.limit;
    } else {
      json[r'limit'] = null;
    }
    if (this.location != null) {
      json[r'location'] = this.location;
    } else {
      json[r'location'] = null;
    }
    return json;
  }

  /// Returns a new [SeoIdeaIn] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SeoIdeaIn? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SeoIdeaIn[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SeoIdeaIn[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SeoIdeaIn(
        keywords: json[r'keywords'] is Iterable
            ? (json[r'keywords'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        language: mapValueOfType<String>(json, r'language'),
        limit: mapValueOfType<int>(json, r'limit'),
        location: mapValueOfType<int>(json, r'location'),
      );
    }
    return null;
  }

  static List<SeoIdeaIn> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SeoIdeaIn>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SeoIdeaIn.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SeoIdeaIn> mapFromJson(dynamic json) {
    final map = <String, SeoIdeaIn>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SeoIdeaIn.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SeoIdeaIn-objects as value to a dart map
  static Map<String, List<SeoIdeaIn>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SeoIdeaIn>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SeoIdeaIn.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

