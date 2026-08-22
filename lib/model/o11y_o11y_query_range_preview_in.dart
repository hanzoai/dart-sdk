//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yO11yQueryRangePreviewIn {
  /// Returns a new [O11yO11yQueryRangePreviewIn] instance.
  O11yO11yQueryRangePreviewIn({
    this.compositeQuery,
    this.end,
    this.formatOptions,
    this.noCache,
    this.requestType,
    this.schemaVersion,
    this.start,
    this.variables = const {},
    this.verbose,
  });
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  O11yQuerybuildertypesv5CompositeQuery? compositeQuery;

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
  O11yFormatOptions? formatOptions;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? noCache;

  Object? requestType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? schemaVersion;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? start;

  Map<String, O11yVariableItem> variables;

  /// Verbose selects the answer's depth. Empty or \"true\" renders the underlying Datastore SQL with EXPLAIN and granule analysis; \"false\" returns only the per-query valid/error/warnings verdict with no Datastore round trips.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? verbose;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yO11yQueryRangePreviewIn &&
    other.compositeQuery == compositeQuery &&
    other.end == end &&
    other.formatOptions == formatOptions &&
    other.noCache == noCache &&
    other.requestType == requestType &&
    other.schemaVersion == schemaVersion &&
    other.start == start &&
    _deepEquality.equals(other.variables, variables) &&
    other.verbose == verbose;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (compositeQuery == null ? 0 : compositeQuery!.hashCode) +
    (end == null ? 0 : end!.hashCode) +
    (formatOptions == null ? 0 : formatOptions!.hashCode) +
    (noCache == null ? 0 : noCache!.hashCode) +
    (requestType == null ? 0 : requestType!.hashCode) +
    (schemaVersion == null ? 0 : schemaVersion!.hashCode) +
    (start == null ? 0 : start!.hashCode) +
    (variables.hashCode) +
    (verbose == null ? 0 : verbose!.hashCode);

  @override
  String toString() => 'O11yO11yQueryRangePreviewIn[compositeQuery=$compositeQuery, end=$end, formatOptions=$formatOptions, noCache=$noCache, requestType=$requestType, schemaVersion=$schemaVersion, start=$start, variables=$variables, verbose=$verbose]';

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
    if (this.formatOptions != null) {
      json[r'formatOptions'] = this.formatOptions;
    } else {
      json[r'formatOptions'] = null;
    }
    if (this.noCache != null) {
      json[r'noCache'] = this.noCache;
    } else {
      json[r'noCache'] = null;
    }
    if (this.requestType != null) {
      json[r'requestType'] = this.requestType;
    } else {
      json[r'requestType'] = null;
    }
    if (this.schemaVersion != null) {
      json[r'schemaVersion'] = this.schemaVersion;
    } else {
      json[r'schemaVersion'] = null;
    }
    if (this.start != null) {
      json[r'start'] = this.start;
    } else {
      json[r'start'] = null;
    }
      json[r'variables'] = this.variables;
    if (this.verbose != null) {
      json[r'verbose'] = this.verbose;
    } else {
      json[r'verbose'] = null;
    }
    return json;
  }

  /// Returns a new [O11yO11yQueryRangePreviewIn] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yO11yQueryRangePreviewIn? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yO11yQueryRangePreviewIn[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yO11yQueryRangePreviewIn[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yO11yQueryRangePreviewIn(
        compositeQuery: O11yQuerybuildertypesv5CompositeQuery.fromJson(json[r'compositeQuery']),
        end: mapValueOfType<int>(json, r'end'),
        formatOptions: O11yFormatOptions.fromJson(json[r'formatOptions']),
        noCache: mapValueOfType<bool>(json, r'noCache'),
        requestType: mapValueOfType<Object>(json, r'requestType'),
        schemaVersion: mapValueOfType<String>(json, r'schemaVersion'),
        start: mapValueOfType<int>(json, r'start'),
        variables: O11yVariableItem.mapFromJson(json[r'variables']),
        verbose: mapValueOfType<String>(json, r'verbose'),
      );
    }
    return null;
  }

  static List<O11yO11yQueryRangePreviewIn> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yO11yQueryRangePreviewIn>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yO11yQueryRangePreviewIn.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yO11yQueryRangePreviewIn> mapFromJson(dynamic json) {
    final map = <String, O11yO11yQueryRangePreviewIn>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yO11yQueryRangePreviewIn.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yO11yQueryRangePreviewIn-objects as value to a dart map
  static Map<String, List<O11yO11yQueryRangePreviewIn>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yO11yQueryRangePreviewIn>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yO11yQueryRangePreviewIn.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

