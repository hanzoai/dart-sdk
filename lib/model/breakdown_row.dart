//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class BreakdownRow {
  /// Returns a new [BreakdownRow] instance.
  BreakdownRow({
    this.key,
    this.pageviews,
    this.pct,
    this.visitors,
  });
  /// Key is the bucket: a requested path, a referrer domain (\"(direct)\" for none or a same-origin one), or a utm_source (\"(none)\" when absent).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? key;

  /// Pageviews is how many $pageview events fell in this bucket.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? pageviews;

  /// Pct is this bucket's share of ALL in-window pageviews, 0..100, one decimal — not of the returned rows, so a top-N shows the long tail honestly.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? pct;

  /// Visitors is how many distinct people they came from.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? visitors;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BreakdownRow &&
    other.key == key &&
    other.pageviews == pageviews &&
    other.pct == pct &&
    other.visitors == visitors;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (key == null ? 0 : key!.hashCode) +
    (pageviews == null ? 0 : pageviews!.hashCode) +
    (pct == null ? 0 : pct!.hashCode) +
    (visitors == null ? 0 : visitors!.hashCode);

  @override
  String toString() => 'BreakdownRow[key=$key, pageviews=$pageviews, pct=$pct, visitors=$visitors]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.key != null) {
      json[r'key'] = this.key;
    } else {
      json[r'key'] = null;
    }
    if (this.pageviews != null) {
      json[r'pageviews'] = this.pageviews;
    } else {
      json[r'pageviews'] = null;
    }
    if (this.pct != null) {
      json[r'pct'] = this.pct;
    } else {
      json[r'pct'] = null;
    }
    if (this.visitors != null) {
      json[r'visitors'] = this.visitors;
    } else {
      json[r'visitors'] = null;
    }
    return json;
  }

  /// Returns a new [BreakdownRow] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BreakdownRow? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "BreakdownRow[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "BreakdownRow[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return BreakdownRow(
        key: mapValueOfType<String>(json, r'key'),
        pageviews: mapValueOfType<int>(json, r'pageviews'),
        pct: mapValueOfType<double>(json, r'pct'),
        visitors: mapValueOfType<int>(json, r'visitors'),
      );
    }
    return null;
  }

  static List<BreakdownRow> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BreakdownRow>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BreakdownRow.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, BreakdownRow> mapFromJson(dynamic json) {
    final map = <String, BreakdownRow>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BreakdownRow.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of BreakdownRow-objects as value to a dart map
  static Map<String, List<BreakdownRow>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<BreakdownRow>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = BreakdownRow.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

