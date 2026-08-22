//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class AnalyzeQuery {
  /// Returns a new [AnalyzeQuery] instance.
  AnalyzeQuery({
    this.alpha,
    this.days,
    this.end,
    this.id,
    this.start,
  });
  /// Alpha overrides the 0.05 two-tailed significance threshold when it lies strictly between 0 and 1; anything else leaves the default in place.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? alpha;

  /// Days is how far back to read when no start is given: 1 to 365, 30 by default. A value outside that range leaves the default in place.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? days;

  /// End is the window's exclusive end in RFC3339, defaulting to now.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? end;

  /// ID is the experiment the URL names.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// Start is the window's inclusive start in RFC3339. Given, it wins over days.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? start;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AnalyzeQuery &&
    other.alpha == alpha &&
    other.days == days &&
    other.end == end &&
    other.id == id &&
    other.start == start;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (alpha == null ? 0 : alpha!.hashCode) +
    (days == null ? 0 : days!.hashCode) +
    (end == null ? 0 : end!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (start == null ? 0 : start!.hashCode);

  @override
  String toString() => 'AnalyzeQuery[alpha=$alpha, days=$days, end=$end, id=$id, start=$start]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.alpha != null) {
      json[r'alpha'] = this.alpha;
    } else {
      json[r'alpha'] = null;
    }
    if (this.days != null) {
      json[r'days'] = this.days;
    } else {
      json[r'days'] = null;
    }
    if (this.end != null) {
      json[r'end'] = this.end;
    } else {
      json[r'end'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.start != null) {
      json[r'start'] = this.start;
    } else {
      json[r'start'] = null;
    }
    return json;
  }

  /// Returns a new [AnalyzeQuery] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AnalyzeQuery? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AnalyzeQuery[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AnalyzeQuery[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AnalyzeQuery(
        alpha: num.parse('${json[r'alpha']}'),
        days: mapValueOfType<int>(json, r'days'),
        end: mapValueOfType<String>(json, r'end'),
        id: mapValueOfType<String>(json, r'id'),
        start: mapValueOfType<String>(json, r'start'),
      );
    }
    return null;
  }

  static List<AnalyzeQuery> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AnalyzeQuery>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AnalyzeQuery.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AnalyzeQuery> mapFromJson(dynamic json) {
    final map = <String, AnalyzeQuery>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AnalyzeQuery.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AnalyzeQuery-objects as value to a dart map
  static Map<String, List<AnalyzeQuery>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AnalyzeQuery>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AnalyzeQuery.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

