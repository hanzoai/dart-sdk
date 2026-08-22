//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class IamThemeData {
  /// Returns a new [IamThemeData] instance.
  IamThemeData({
    this.borderRadius,
    this.colorPrimary,
    this.isCompact,
    this.isEnabled,
    this.themeType,
  });
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? borderRadius;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? colorPrimary;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isCompact;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isEnabled;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? themeType;

  @override
  bool operator ==(Object other) => identical(this, other) || other is IamThemeData &&
    other.borderRadius == borderRadius &&
    other.colorPrimary == colorPrimary &&
    other.isCompact == isCompact &&
    other.isEnabled == isEnabled &&
    other.themeType == themeType;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (borderRadius == null ? 0 : borderRadius!.hashCode) +
    (colorPrimary == null ? 0 : colorPrimary!.hashCode) +
    (isCompact == null ? 0 : isCompact!.hashCode) +
    (isEnabled == null ? 0 : isEnabled!.hashCode) +
    (themeType == null ? 0 : themeType!.hashCode);

  @override
  String toString() => 'IamThemeData[borderRadius=$borderRadius, colorPrimary=$colorPrimary, isCompact=$isCompact, isEnabled=$isEnabled, themeType=$themeType]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.borderRadius != null) {
      json[r'borderRadius'] = this.borderRadius;
    } else {
      json[r'borderRadius'] = null;
    }
    if (this.colorPrimary != null) {
      json[r'colorPrimary'] = this.colorPrimary;
    } else {
      json[r'colorPrimary'] = null;
    }
    if (this.isCompact != null) {
      json[r'isCompact'] = this.isCompact;
    } else {
      json[r'isCompact'] = null;
    }
    if (this.isEnabled != null) {
      json[r'isEnabled'] = this.isEnabled;
    } else {
      json[r'isEnabled'] = null;
    }
    if (this.themeType != null) {
      json[r'themeType'] = this.themeType;
    } else {
      json[r'themeType'] = null;
    }
    return json;
  }

  /// Returns a new [IamThemeData] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IamThemeData? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "IamThemeData[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "IamThemeData[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return IamThemeData(
        borderRadius: mapValueOfType<int>(json, r'borderRadius'),
        colorPrimary: mapValueOfType<String>(json, r'colorPrimary'),
        isCompact: mapValueOfType<bool>(json, r'isCompact'),
        isEnabled: mapValueOfType<bool>(json, r'isEnabled'),
        themeType: mapValueOfType<String>(json, r'themeType'),
      );
    }
    return null;
  }

  static List<IamThemeData> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <IamThemeData>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IamThemeData.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IamThemeData> mapFromJson(dynamic json) {
    final map = <String, IamThemeData>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IamThemeData.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IamThemeData-objects as value to a dart map
  static Map<String, List<IamThemeData>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<IamThemeData>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = IamThemeData.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

