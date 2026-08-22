//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yO11yPublicDashboard {
  /// Returns a new [O11yO11yPublicDashboard] instance.
  O11yO11yPublicDashboard({
    this.defaultTimeRange,
    this.publicPath,
    this.timeRangeEnabled,
  });
  /// DefaultTimeRange is the fixed window when the range is not caller-chosen.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? defaultTimeRange;

  /// PublicPath is the public URL path the share is reachable at.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? publicPath;

  /// TimeRangeEnabled reports whether the public page may pick its own range.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? timeRangeEnabled;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yO11yPublicDashboard &&
    other.defaultTimeRange == defaultTimeRange &&
    other.publicPath == publicPath &&
    other.timeRangeEnabled == timeRangeEnabled;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (defaultTimeRange == null ? 0 : defaultTimeRange!.hashCode) +
    (publicPath == null ? 0 : publicPath!.hashCode) +
    (timeRangeEnabled == null ? 0 : timeRangeEnabled!.hashCode);

  @override
  String toString() => 'O11yO11yPublicDashboard[defaultTimeRange=$defaultTimeRange, publicPath=$publicPath, timeRangeEnabled=$timeRangeEnabled]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.defaultTimeRange != null) {
      json[r'defaultTimeRange'] = this.defaultTimeRange;
    } else {
      json[r'defaultTimeRange'] = null;
    }
    if (this.publicPath != null) {
      json[r'publicPath'] = this.publicPath;
    } else {
      json[r'publicPath'] = null;
    }
    if (this.timeRangeEnabled != null) {
      json[r'timeRangeEnabled'] = this.timeRangeEnabled;
    } else {
      json[r'timeRangeEnabled'] = null;
    }
    return json;
  }

  /// Returns a new [O11yO11yPublicDashboard] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yO11yPublicDashboard? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yO11yPublicDashboard[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yO11yPublicDashboard[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yO11yPublicDashboard(
        defaultTimeRange: mapValueOfType<String>(json, r'defaultTimeRange'),
        publicPath: mapValueOfType<String>(json, r'publicPath'),
        timeRangeEnabled: mapValueOfType<bool>(json, r'timeRangeEnabled'),
      );
    }
    return null;
  }

  static List<O11yO11yPublicDashboard> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yO11yPublicDashboard>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yO11yPublicDashboard.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yO11yPublicDashboard> mapFromJson(dynamic json) {
    final map = <String, O11yO11yPublicDashboard>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yO11yPublicDashboard.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yO11yPublicDashboard-objects as value to a dart map
  static Map<String, List<O11yO11yPublicDashboard>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yO11yPublicDashboard>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yO11yPublicDashboard.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

