//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yHostFilter {
  /// Returns a new [O11yHostFilter] instance.
  O11yHostFilter({
    this.filter,
    this.filterByStatus,
  });
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  O11yFilter? filter;

  Object? filterByStatus;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yHostFilter &&
    other.filter == filter &&
    other.filterByStatus == filterByStatus;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (filter == null ? 0 : filter!.hashCode) +
    (filterByStatus == null ? 0 : filterByStatus!.hashCode);

  @override
  String toString() => 'O11yHostFilter[filter=$filter, filterByStatus=$filterByStatus]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.filter != null) {
      json[r'Filter'] = this.filter;
    } else {
      json[r'Filter'] = null;
    }
    if (this.filterByStatus != null) {
      json[r'filterByStatus'] = this.filterByStatus;
    } else {
      json[r'filterByStatus'] = null;
    }
    return json;
  }

  /// Returns a new [O11yHostFilter] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yHostFilter? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yHostFilter[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yHostFilter[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yHostFilter(
        filter: O11yFilter.fromJson(json[r'Filter']),
        filterByStatus: mapValueOfType<Object>(json, r'filterByStatus'),
      );
    }
    return null;
  }

  static List<O11yHostFilter> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yHostFilter>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yHostFilter.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yHostFilter> mapFromJson(dynamic json) {
    final map = <String, O11yHostFilter>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yHostFilter.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yHostFilter-objects as value to a dart map
  static Map<String, List<O11yHostFilter>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yHostFilter>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yHostFilter.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

