//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yO11yPublicDashboardData {
  /// Returns a new [O11yO11yPublicDashboardData] instance.
  O11yO11yPublicDashboardData({
    this.dashboard,
    this.publicDashboard,
  });
  /// Dashboard is the sanitized dashboard.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  O11yO11yPublicDashboardV1? dashboard;

  /// PublicDashboard is the public-sharing config.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  O11yO11yPublicDashboard? publicDashboard;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yO11yPublicDashboardData &&
    other.dashboard == dashboard &&
    other.publicDashboard == publicDashboard;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (dashboard == null ? 0 : dashboard!.hashCode) +
    (publicDashboard == null ? 0 : publicDashboard!.hashCode);

  @override
  String toString() => 'O11yO11yPublicDashboardData[dashboard=$dashboard, publicDashboard=$publicDashboard]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.dashboard != null) {
      json[r'dashboard'] = this.dashboard;
    } else {
      json[r'dashboard'] = null;
    }
    if (this.publicDashboard != null) {
      json[r'publicDashboard'] = this.publicDashboard;
    } else {
      json[r'publicDashboard'] = null;
    }
    return json;
  }

  /// Returns a new [O11yO11yPublicDashboardData] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yO11yPublicDashboardData? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yO11yPublicDashboardData[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yO11yPublicDashboardData[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yO11yPublicDashboardData(
        dashboard: O11yO11yPublicDashboardV1.fromJson(json[r'dashboard']),
        publicDashboard: O11yO11yPublicDashboard.fromJson(json[r'publicDashboard']),
      );
    }
    return null;
  }

  static List<O11yO11yPublicDashboardData> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yO11yPublicDashboardData>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yO11yPublicDashboardData.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yO11yPublicDashboardData> mapFromJson(dynamic json) {
    final map = <String, O11yO11yPublicDashboardData>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yO11yPublicDashboardData.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yO11yPublicDashboardData-objects as value to a dart map
  static Map<String, List<O11yO11yPublicDashboardData>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yO11yPublicDashboardData>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yO11yPublicDashboardData.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

