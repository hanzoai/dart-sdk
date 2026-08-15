//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yQueryRangeParamsV3 {
  /// Returns a new [O11yQueryRangeParamsV3] instance.
  O11yQueryRangeParamsV3({
    this.compositeQuery,
    this.end,
    this.formatForWeb,
    this.noCache,
    this.start,
    this.step,
    this.variables = const {},
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  O11yCompositeQuery? compositeQuery;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? end;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? formatForWeb;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? noCache;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? start;

  /// step is in seconds; used for prometheus queries
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? step;

  Map<String, Object> variables;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yQueryRangeParamsV3 &&
    other.compositeQuery == compositeQuery &&
    other.end == end &&
    other.formatForWeb == formatForWeb &&
    other.noCache == noCache &&
    other.start == start &&
    other.step == step &&
    _deepEquality.equals(other.variables, variables);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (compositeQuery == null ? 0 : compositeQuery!.hashCode) +
    (end == null ? 0 : end!.hashCode) +
    (formatForWeb == null ? 0 : formatForWeb!.hashCode) +
    (noCache == null ? 0 : noCache!.hashCode) +
    (start == null ? 0 : start!.hashCode) +
    (step == null ? 0 : step!.hashCode) +
    (variables.hashCode);

  @override
  String toString() => 'O11yQueryRangeParamsV3[compositeQuery=$compositeQuery, end=$end, formatForWeb=$formatForWeb, noCache=$noCache, start=$start, step=$step, variables=$variables]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.compositeQuery != null) {
      json[r'compositeQuery'] = this.compositeQuery;
    } else {
      json[r'compositeQuery'] = null;
    }
    if (this.end != null) {
      json[r'end'] = this.end;
    } else {
      json[r'end'] = null;
    }
    if (this.formatForWeb != null) {
      json[r'formatForWeb'] = this.formatForWeb;
    } else {
      json[r'formatForWeb'] = null;
    }
    if (this.noCache != null) {
      json[r'noCache'] = this.noCache;
    } else {
      json[r'noCache'] = null;
    }
    if (this.start != null) {
      json[r'start'] = this.start;
    } else {
      json[r'start'] = null;
    }
    if (this.step != null) {
      json[r'step'] = this.step;
    } else {
      json[r'step'] = null;
    }
      json[r'variables'] = this.variables;
    return json;
  }

  /// Returns a new [O11yQueryRangeParamsV3] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yQueryRangeParamsV3? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yQueryRangeParamsV3[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yQueryRangeParamsV3[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yQueryRangeParamsV3(
        compositeQuery: O11yCompositeQuery.fromJson(json[r'compositeQuery']),
        end: mapValueOfType<int>(json, r'end'),
        formatForWeb: mapValueOfType<bool>(json, r'formatForWeb'),
        noCache: mapValueOfType<bool>(json, r'noCache'),
        start: mapValueOfType<int>(json, r'start'),
        step: mapValueOfType<int>(json, r'step'),
        variables: mapCastOfType<String, Object>(json, r'variables') ?? const {},
      );
    }
    return null;
  }

  static List<O11yQueryRangeParamsV3> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yQueryRangeParamsV3>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yQueryRangeParamsV3.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yQueryRangeParamsV3> mapFromJson(dynamic json) {
    final map = <String, O11yQueryRangeParamsV3>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yQueryRangeParamsV3.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yQueryRangeParamsV3-objects as value to a dart map
  static Map<String, List<O11yQueryRangeParamsV3>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yQueryRangeParamsV3>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yQueryRangeParamsV3.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

