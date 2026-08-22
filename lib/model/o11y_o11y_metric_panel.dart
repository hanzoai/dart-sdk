//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yO11yMetricPanel {
  /// Returns a new [O11yO11yMetricPanel] instance.
  O11yO11yMetricPanel({
    this.dashboardId,
    this.dashboardName,
    this.filterBy = const [],
    this.groupBy = const [],
    this.panelId,
    this.panelName,
  });
  /// DashboardID is the dashboard's id.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? dashboardId;

  /// DashboardName is the dashboard's name.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? dashboardName;

  /// FilterBy are the labels the panel filters the metric by.
  List<String> filterBy;

  /// GroupBy are the labels the panel groups the metric by.
  List<String> groupBy;

  /// PanelID is the panel's id.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? panelId;

  /// PanelName is the panel's name.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? panelName;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yO11yMetricPanel &&
    other.dashboardId == dashboardId &&
    other.dashboardName == dashboardName &&
    _deepEquality.equals(other.filterBy, filterBy) &&
    _deepEquality.equals(other.groupBy, groupBy) &&
    other.panelId == panelId &&
    other.panelName == panelName;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (dashboardId == null ? 0 : dashboardId!.hashCode) +
    (dashboardName == null ? 0 : dashboardName!.hashCode) +
    (filterBy.hashCode) +
    (groupBy.hashCode) +
    (panelId == null ? 0 : panelId!.hashCode) +
    (panelName == null ? 0 : panelName!.hashCode);

  @override
  String toString() => 'O11yO11yMetricPanel[dashboardId=$dashboardId, dashboardName=$dashboardName, filterBy=$filterBy, groupBy=$groupBy, panelId=$panelId, panelName=$panelName]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.dashboardId != null) {
      json[r'dashboardId'] = this.dashboardId;
    } else {
      json[r'dashboardId'] = null;
    }
    if (this.dashboardName != null) {
      json[r'dashboardName'] = this.dashboardName;
    } else {
      json[r'dashboardName'] = null;
    }
      json[r'filterBy'] = this.filterBy;
      json[r'groupBy'] = this.groupBy;
    if (this.panelId != null) {
      json[r'panelId'] = this.panelId;
    } else {
      json[r'panelId'] = null;
    }
    if (this.panelName != null) {
      json[r'panelName'] = this.panelName;
    } else {
      json[r'panelName'] = null;
    }
    return json;
  }

  /// Returns a new [O11yO11yMetricPanel] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yO11yMetricPanel? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yO11yMetricPanel[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yO11yMetricPanel[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yO11yMetricPanel(
        dashboardId: mapValueOfType<String>(json, r'dashboardId'),
        dashboardName: mapValueOfType<String>(json, r'dashboardName'),
        filterBy: json[r'filterBy'] is Iterable
            ? (json[r'filterBy'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        groupBy: json[r'groupBy'] is Iterable
            ? (json[r'groupBy'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        panelId: mapValueOfType<String>(json, r'panelId'),
        panelName: mapValueOfType<String>(json, r'panelName'),
      );
    }
    return null;
  }

  static List<O11yO11yMetricPanel> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yO11yMetricPanel>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yO11yMetricPanel.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yO11yMetricPanel> mapFromJson(dynamic json) {
    final map = <String, O11yO11yMetricPanel>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yO11yMetricPanel.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yO11yMetricPanel-objects as value to a dart map
  static Map<String, List<O11yO11yMetricPanel>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yO11yMetricPanel>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yO11yMetricPanel.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

