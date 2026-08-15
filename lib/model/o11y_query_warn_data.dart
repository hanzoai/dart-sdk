//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yQueryWarnData {
  /// Returns a new [O11yQueryWarnData] instance.
  O11yQueryWarnData({
    this.message,
    this.url,
    this.warnings = const [],
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? message;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? url;

  List<O11yQueryWarnDataAdditional> warnings;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yQueryWarnData &&
    other.message == message &&
    other.url == url &&
    _deepEquality.equals(other.warnings, warnings);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (message == null ? 0 : message!.hashCode) +
    (url == null ? 0 : url!.hashCode) +
    (warnings.hashCode);

  @override
  String toString() => 'O11yQueryWarnData[message=$message, url=$url, warnings=$warnings]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.message != null) {
      json[r'message'] = this.message;
    } else {
      json[r'message'] = null;
    }
    if (this.url != null) {
      json[r'url'] = this.url;
    } else {
      json[r'url'] = null;
    }
      json[r'warnings'] = this.warnings;
    return json;
  }

  /// Returns a new [O11yQueryWarnData] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yQueryWarnData? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yQueryWarnData[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yQueryWarnData[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yQueryWarnData(
        message: mapValueOfType<String>(json, r'message'),
        url: mapValueOfType<String>(json, r'url'),
        warnings: O11yQueryWarnDataAdditional.listFromJson(json[r'warnings']),
      );
    }
    return null;
  }

  static List<O11yQueryWarnData> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yQueryWarnData>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yQueryWarnData.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yQueryWarnData> mapFromJson(dynamic json) {
    final map = <String, O11yQueryWarnData>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yQueryWarnData.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yQueryWarnData-objects as value to a dart map
  static Map<String, List<O11yQueryWarnData>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yQueryWarnData>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yQueryWarnData.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

