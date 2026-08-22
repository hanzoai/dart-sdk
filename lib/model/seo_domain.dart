//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class SeoDomain {
  /// Returns a new [SeoDomain] instance.
  SeoDomain({
    this.domain,
    this.keywords,
    this.position,
    this.traffic,
    this.visibility,
  });
  /// Domain is the competitor.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? domain;

  /// Keywords is how many of the phrases it places for.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? keywords;

  /// Position is its average rank across the phrases.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? position;

  /// Traffic is the estimated monthly visits those placements earn.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? traffic;

  /// Visibility is its share of the possible attention across those phrases.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? visibility;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SeoDomain &&
    other.domain == domain &&
    other.keywords == keywords &&
    other.position == position &&
    other.traffic == traffic &&
    other.visibility == visibility;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (domain == null ? 0 : domain!.hashCode) +
    (keywords == null ? 0 : keywords!.hashCode) +
    (position == null ? 0 : position!.hashCode) +
    (traffic == null ? 0 : traffic!.hashCode) +
    (visibility == null ? 0 : visibility!.hashCode);

  @override
  String toString() => 'SeoDomain[domain=$domain, keywords=$keywords, position=$position, traffic=$traffic, visibility=$visibility]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.domain != null) {
      json[r'domain'] = this.domain;
    } else {
      json[r'domain'] = null;
    }
    if (this.keywords != null) {
      json[r'keywords'] = this.keywords;
    } else {
      json[r'keywords'] = null;
    }
    if (this.position != null) {
      json[r'position'] = this.position;
    } else {
      json[r'position'] = null;
    }
    if (this.traffic != null) {
      json[r'traffic'] = this.traffic;
    } else {
      json[r'traffic'] = null;
    }
    if (this.visibility != null) {
      json[r'visibility'] = this.visibility;
    } else {
      json[r'visibility'] = null;
    }
    return json;
  }

  /// Returns a new [SeoDomain] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SeoDomain? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SeoDomain[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SeoDomain[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SeoDomain(
        domain: mapValueOfType<String>(json, r'domain'),
        keywords: mapValueOfType<int>(json, r'keywords'),
        position: num.parse('${json[r'position']}'),
        traffic: num.parse('${json[r'traffic']}'),
        visibility: num.parse('${json[r'visibility']}'),
      );
    }
    return null;
  }

  static List<SeoDomain> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SeoDomain>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SeoDomain.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SeoDomain> mapFromJson(dynamic json) {
    final map = <String, SeoDomain>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SeoDomain.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SeoDomain-objects as value to a dart map
  static Map<String, List<SeoDomain>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SeoDomain>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SeoDomain.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

