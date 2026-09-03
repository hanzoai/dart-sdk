//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class SeoAuditOut {
  /// Returns a new [SeoAuditOut] instance.
  SeoAuditOut({
    this.checks = const {},
    this.cost,
    this.description,
    this.score,
    this.status,
    this.title,
    this.url,
    this.words,
  });
  /// Checks is every named finding, each a yes or no — \"is_https\", \"no_h1_tag\", \"high_loading_time\", around fifty of them. It is an OPEN set the upstream adds to, so it is published as an object of booleans rather than as fifty declared fields that would be wrong the next time they name a fifty-first.
  Map<String, bool> checks;

  /// Cost is what this call cost, in USD, as an exact decimal string.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? cost;

  /// Description is its meta description.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  /// Score is the upstream's on-page score, 0 to 100.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? score;

  /// Status is the HTTP status the page answered with.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? status;

  /// Title is the page's title.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? title;

  /// URL is the address actually read, after redirects.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? url;

  /// Words is how many words of readable text the page carries.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? words;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SeoAuditOut &&
    _deepEquality.equals(other.checks, checks) &&
    other.cost == cost &&
    other.description == description &&
    other.score == score &&
    other.status == status &&
    other.title == title &&
    other.url == url &&
    other.words == words;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (checks.hashCode) +
    (cost == null ? 0 : cost!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (score == null ? 0 : score!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (title == null ? 0 : title!.hashCode) +
    (url == null ? 0 : url!.hashCode) +
    (words == null ? 0 : words!.hashCode);

  @override
  String toString() => 'SeoAuditOut[checks=$checks, cost=$cost, description=$description, score=$score, status=$status, title=$title, url=$url, words=$words]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'checks'] = this.checks;
    if (this.cost != null) {
      json[r'cost'] = this.cost;
    } else {
      json[r'cost'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.score != null) {
      json[r'score'] = this.score;
    } else {
      json[r'score'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.title != null) {
      json[r'title'] = this.title;
    } else {
      json[r'title'] = null;
    }
    if (this.url != null) {
      json[r'url'] = this.url;
    } else {
      json[r'url'] = null;
    }
    if (this.words != null) {
      json[r'words'] = this.words;
    } else {
      json[r'words'] = null;
    }
    return json;
  }

  /// Returns a new [SeoAuditOut] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SeoAuditOut? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SeoAuditOut[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SeoAuditOut[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SeoAuditOut(
        checks: mapCastOfType<String, bool>(json, r'checks') ?? const {},
        cost: mapValueOfType<String>(json, r'cost'),
        description: mapValueOfType<String>(json, r'description'),
        score: mapValueOfType<double>(json, r'score'),
        status: mapValueOfType<int>(json, r'status'),
        title: mapValueOfType<String>(json, r'title'),
        url: mapValueOfType<String>(json, r'url'),
        words: mapValueOfType<int>(json, r'words'),
      );
    }
    return null;
  }

  static List<SeoAuditOut> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SeoAuditOut>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SeoAuditOut.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SeoAuditOut> mapFromJson(dynamic json) {
    final map = <String, SeoAuditOut>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SeoAuditOut.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SeoAuditOut-objects as value to a dart map
  static Map<String, List<SeoAuditOut>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SeoAuditOut>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SeoAuditOut.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

