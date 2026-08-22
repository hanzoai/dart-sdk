//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yO11yDashboardViewList {
  /// Returns a new [O11yO11yDashboardViewList] instance.
  O11yO11yDashboardViewList({
    this.views = const [],
  });
  /// Views are the saved views, shared org-wide.
  List<O11yO11yDashboardView> views;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yO11yDashboardViewList &&
    _deepEquality.equals(other.views, views);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (views.hashCode);

  @override
  String toString() => 'O11yO11yDashboardViewList[views=$views]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'views'] = this.views;
    return json;
  }

  /// Returns a new [O11yO11yDashboardViewList] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yO11yDashboardViewList? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yO11yDashboardViewList[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yO11yDashboardViewList[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yO11yDashboardViewList(
        views: O11yO11yDashboardView.listFromJson(json[r'views']),
      );
    }
    return null;
  }

  static List<O11yO11yDashboardViewList> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yO11yDashboardViewList>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yO11yDashboardViewList.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yO11yDashboardViewList> mapFromJson(dynamic json) {
    final map = <String, O11yO11yDashboardViewList>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yO11yDashboardViewList.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yO11yDashboardViewList-objects as value to a dart map
  static Map<String, List<O11yO11yDashboardViewList>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yO11yDashboardViewList>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yO11yDashboardViewList.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

