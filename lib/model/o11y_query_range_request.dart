//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yQueryRangeRequest {
  /// Returns a new [O11yQueryRangeRequest] instance.
  O11yQueryRangeRequest({
    this.compositeQuery,
    this.end,
    this.formatOptions,
    this.noCache,
    this.requestType,
    this.schemaVersion,
    this.start,
    this.variables = const {},
  });

  /// CompositeQuery is the composite query to use for the request.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  O11yQuerybuildertypesv5CompositeQuery? compositeQuery;

  /// End is the end time of the query in epoch milliseconds.
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

  /// NoCache is a flag to disable caching for the request.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? noCache;

  Object? requestType;

  /// SchemaVersion is the version of the schema to use for the request payload.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? schemaVersion;

  /// Start is the start time of the query in epoch milliseconds.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? start;

  /// Variables is the variables to use for the request.
  Map<String, O11yVariableItem> variables;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yQueryRangeRequest &&
    other.compositeQuery == compositeQuery &&
    other.end == end &&
    other.formatOptions == formatOptions &&
    other.noCache == noCache &&
    other.requestType == requestType &&
    other.schemaVersion == schemaVersion &&
    other.start == start &&
    _deepEquality.equals(other.variables, variables);

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
    (variables.hashCode);

  @override
  String toString() => 'O11yQueryRangeRequest[compositeQuery=$compositeQuery, end=$end, formatOptions=$formatOptions, noCache=$noCache, requestType=$requestType, schemaVersion=$schemaVersion, start=$start, variables=$variables]';

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
    return json;
  }

  /// Returns a new [O11yQueryRangeRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yQueryRangeRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yQueryRangeRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yQueryRangeRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yQueryRangeRequest(
        compositeQuery: O11yQuerybuildertypesv5CompositeQuery.fromJson(json[r'compositeQuery']),
        end: mapValueOfType<int>(json, r'end'),
        formatOptions: O11yFormatOptions.fromJson(json[r'formatOptions']),
        noCache: mapValueOfType<bool>(json, r'noCache'),
        requestType: mapValueOfType<Object>(json, r'requestType'),
        schemaVersion: mapValueOfType<String>(json, r'schemaVersion'),
        start: mapValueOfType<int>(json, r'start'),
        variables: O11yVariableItem.mapFromJson(json[r'variables']),
      );
    }
    return null;
  }

  static List<O11yQueryRangeRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yQueryRangeRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yQueryRangeRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yQueryRangeRequest> mapFromJson(dynamic json) {
    final map = <String, O11yQueryRangeRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yQueryRangeRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yQueryRangeRequest-objects as value to a dart map
  static Map<String, List<O11yQueryRangeRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yQueryRangeRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yQueryRangeRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

