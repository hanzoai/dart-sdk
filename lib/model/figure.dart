//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Figure {
  /// Returns a new [Figure] instance.
  Figure({
    this.label,
    this.period,
    this.value,
  });

  /// Label names the metric, e.g. \"MRR\" or \"Runway\".
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? label;

  /// Period is the window the figure covers, e.g. \"2026-07\" or \"all-time\".
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? period;

  /// Value is the figure already formatted through books' own money formatter, so a consumer never re-derives it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? value;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Figure &&
    other.label == label &&
    other.period == period &&
    other.value == value;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (label == null ? 0 : label!.hashCode) +
    (period == null ? 0 : period!.hashCode) +
    (value == null ? 0 : value!.hashCode);

  @override
  String toString() => 'Figure[label=$label, period=$period, value=$value]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.label != null) {
      json[r'label'] = this.label;
    } else {
      json[r'label'] = null;
    }
    if (this.period != null) {
      json[r'period'] = this.period;
    } else {
      json[r'period'] = null;
    }
    if (this.value != null) {
      json[r'value'] = this.value;
    } else {
      json[r'value'] = null;
    }
    return json;
  }

  /// Returns a new [Figure] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Figure? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Figure[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Figure[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Figure(
        label: mapValueOfType<String>(json, r'label'),
        period: mapValueOfType<String>(json, r'period'),
        value: mapValueOfType<String>(json, r'value'),
      );
    }
    return null;
  }

  static List<Figure> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Figure>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Figure.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Figure> mapFromJson(dynamic json) {
    final map = <String, Figure>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Figure.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Figure-objects as value to a dart map
  static Map<String, List<Figure>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Figure>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Figure.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

