//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yPromQuery {
  /// Returns a new [O11yPromQuery] instance.
  O11yPromQuery({
    this.disabled,
    this.legend,
    this.query,
    this.stats,
  });
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? disabled;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? legend;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? query;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? stats;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yPromQuery &&
    other.disabled == disabled &&
    other.legend == legend &&
    other.query == query &&
    other.stats == stats;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (disabled == null ? 0 : disabled!.hashCode) +
    (legend == null ? 0 : legend!.hashCode) +
    (query == null ? 0 : query!.hashCode) +
    (stats == null ? 0 : stats!.hashCode);

  @override
  String toString() => 'O11yPromQuery[disabled=$disabled, legend=$legend, query=$query, stats=$stats]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.disabled != null) {
      json[r'disabled'] = this.disabled;
    } else {
      json[r'disabled'] = null;
    }
    if (this.legend != null) {
      json[r'legend'] = this.legend;
    } else {
      json[r'legend'] = null;
    }
    if (this.query != null) {
      json[r'query'] = this.query;
    } else {
      json[r'query'] = null;
    }
    if (this.stats != null) {
      json[r'stats'] = this.stats;
    } else {
      json[r'stats'] = null;
    }
    return json;
  }

  /// Returns a new [O11yPromQuery] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yPromQuery? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yPromQuery[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yPromQuery[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yPromQuery(
        disabled: mapValueOfType<bool>(json, r'disabled'),
        legend: mapValueOfType<String>(json, r'legend'),
        query: mapValueOfType<String>(json, r'query'),
        stats: mapValueOfType<String>(json, r'stats'),
      );
    }
    return null;
  }

  static List<O11yPromQuery> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yPromQuery>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yPromQuery.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yPromQuery> mapFromJson(dynamic json) {
    final map = <String, O11yPromQuery>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yPromQuery.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yPromQuery-objects as value to a dart map
  static Map<String, List<O11yPromQuery>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yPromQuery>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yPromQuery.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

