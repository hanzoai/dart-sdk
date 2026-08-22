//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class SeoRankIn {
  /// Returns a new [SeoRankIn] instance.
  SeoRankIn({
    this.domain,
    this.language,
    this.limit,
    this.location,
  });
  /// Domain is the site, with or without a subdomain — \"hanzo.ai\", \"docs.hanzo.ai\".
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? domain;

  /// Language is the ISO code. Defaults to \"en\".
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? language;

  /// Limit is how many placements to return, 1 to 1000. Defaults to 100.
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
  bool operator ==(Object other) => identical(this, other) || other is SeoRankIn &&
    other.domain == domain &&
    other.language == language &&
    other.limit == limit &&
    other.location == location;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (domain == null ? 0 : domain!.hashCode) +
    (language == null ? 0 : language!.hashCode) +
    (limit == null ? 0 : limit!.hashCode) +
    (location == null ? 0 : location!.hashCode);

  @override
  String toString() => 'SeoRankIn[domain=$domain, language=$language, limit=$limit, location=$location]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.domain != null) {
      json[r'domain'] = this.domain;
    } else {
      json[r'domain'] = null;
    }
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

  /// Returns a new [SeoRankIn] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SeoRankIn? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SeoRankIn[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SeoRankIn[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SeoRankIn(
        domain: mapValueOfType<String>(json, r'domain'),
        language: mapValueOfType<String>(json, r'language'),
        limit: mapValueOfType<int>(json, r'limit'),
        location: mapValueOfType<int>(json, r'location'),
      );
    }
    return null;
  }

  static List<SeoRankIn> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SeoRankIn>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SeoRankIn.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SeoRankIn> mapFromJson(dynamic json) {
    final map = <String, SeoRankIn>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SeoRankIn.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SeoRankIn-objects as value to a dart map
  static Map<String, List<SeoRankIn>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SeoRankIn>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SeoRankIn.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

