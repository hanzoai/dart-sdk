//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yWaterfallSpan {
  /// Returns a new [O11yWaterfallSpan] instance.
  O11yWaterfallSpan({
    this.attributes = const {},
    this.dbName,
    this.dbOperation,
    this.durationNano,
    this.events = const [],
    this.externalHttpMethod,
    this.externalHttpUrl,
    this.flags,
    this.hasChildren,
    this.hasError,
    this.httpHost,
    this.httpMethod,
    this.httpUrl,
    this.isRemote,
    this.kindString,
    this.level,
    this.name,
    this.parentSpanId,
    this.references = const [],
    this.resource = const {},
    this.responseStatusCode,
    this.spanId,
    this.statusCode,
    this.statusCodeString,
    this.statusMessage,
    this.subTreeNodeCount,
    this.timeUnix,
    this.traceId,
    this.traceState,
  });
  Map<String, Object> attributes;

  /// Calculated fields https://o11y.io/docs/traces-management/guides/derived-fields-spans
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? dbName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? dbOperation;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? durationNano;

  List<O11yEvent> events;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? externalHttpMethod;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? externalHttpUrl;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? flags;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? hasChildren;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? hasError;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? httpHost;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? httpMethod;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? httpUrl;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? isRemote;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? kindString;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? level;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? parentSpanId;

  List<O11yOtelSpanRef> references;

  Map<String, String> resource;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? responseStatusCode;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? spanId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? statusCode;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? statusCodeString;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? statusMessage;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? subTreeNodeCount;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? timeUnix;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? traceId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? traceState;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yWaterfallSpan &&
    _deepEquality.equals(other.attributes, attributes) &&
    other.dbName == dbName &&
    other.dbOperation == dbOperation &&
    other.durationNano == durationNano &&
    _deepEquality.equals(other.events, events) &&
    other.externalHttpMethod == externalHttpMethod &&
    other.externalHttpUrl == externalHttpUrl &&
    other.flags == flags &&
    other.hasChildren == hasChildren &&
    other.hasError == hasError &&
    other.httpHost == httpHost &&
    other.httpMethod == httpMethod &&
    other.httpUrl == httpUrl &&
    other.isRemote == isRemote &&
    other.kindString == kindString &&
    other.level == level &&
    other.name == name &&
    other.parentSpanId == parentSpanId &&
    _deepEquality.equals(other.references, references) &&
    _deepEquality.equals(other.resource, resource) &&
    other.responseStatusCode == responseStatusCode &&
    other.spanId == spanId &&
    other.statusCode == statusCode &&
    other.statusCodeString == statusCodeString &&
    other.statusMessage == statusMessage &&
    other.subTreeNodeCount == subTreeNodeCount &&
    other.timeUnix == timeUnix &&
    other.traceId == traceId &&
    other.traceState == traceState;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (attributes.hashCode) +
    (dbName == null ? 0 : dbName!.hashCode) +
    (dbOperation == null ? 0 : dbOperation!.hashCode) +
    (durationNano == null ? 0 : durationNano!.hashCode) +
    (events.hashCode) +
    (externalHttpMethod == null ? 0 : externalHttpMethod!.hashCode) +
    (externalHttpUrl == null ? 0 : externalHttpUrl!.hashCode) +
    (flags == null ? 0 : flags!.hashCode) +
    (hasChildren == null ? 0 : hasChildren!.hashCode) +
    (hasError == null ? 0 : hasError!.hashCode) +
    (httpHost == null ? 0 : httpHost!.hashCode) +
    (httpMethod == null ? 0 : httpMethod!.hashCode) +
    (httpUrl == null ? 0 : httpUrl!.hashCode) +
    (isRemote == null ? 0 : isRemote!.hashCode) +
    (kindString == null ? 0 : kindString!.hashCode) +
    (level == null ? 0 : level!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (parentSpanId == null ? 0 : parentSpanId!.hashCode) +
    (references.hashCode) +
    (resource.hashCode) +
    (responseStatusCode == null ? 0 : responseStatusCode!.hashCode) +
    (spanId == null ? 0 : spanId!.hashCode) +
    (statusCode == null ? 0 : statusCode!.hashCode) +
    (statusCodeString == null ? 0 : statusCodeString!.hashCode) +
    (statusMessage == null ? 0 : statusMessage!.hashCode) +
    (subTreeNodeCount == null ? 0 : subTreeNodeCount!.hashCode) +
    (timeUnix == null ? 0 : timeUnix!.hashCode) +
    (traceId == null ? 0 : traceId!.hashCode) +
    (traceState == null ? 0 : traceState!.hashCode);

  @override
  String toString() => 'O11yWaterfallSpan[attributes=$attributes, dbName=$dbName, dbOperation=$dbOperation, durationNano=$durationNano, events=$events, externalHttpMethod=$externalHttpMethod, externalHttpUrl=$externalHttpUrl, flags=$flags, hasChildren=$hasChildren, hasError=$hasError, httpHost=$httpHost, httpMethod=$httpMethod, httpUrl=$httpUrl, isRemote=$isRemote, kindString=$kindString, level=$level, name=$name, parentSpanId=$parentSpanId, references=$references, resource=$resource, responseStatusCode=$responseStatusCode, spanId=$spanId, statusCode=$statusCode, statusCodeString=$statusCodeString, statusMessage=$statusMessage, subTreeNodeCount=$subTreeNodeCount, timeUnix=$timeUnix, traceId=$traceId, traceState=$traceState]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'attributes'] = this.attributes;
    if (this.dbName != null) {
      json[r'db_name'] = this.dbName;
    } else {
      json[r'db_name'] = null;
    }
    if (this.dbOperation != null) {
      json[r'db_operation'] = this.dbOperation;
    } else {
      json[r'db_operation'] = null;
    }
    if (this.durationNano != null) {
      json[r'duration_nano'] = this.durationNano;
    } else {
      json[r'duration_nano'] = null;
    }
      json[r'events'] = this.events;
    if (this.externalHttpMethod != null) {
      json[r'external_http_method'] = this.externalHttpMethod;
    } else {
      json[r'external_http_method'] = null;
    }
    if (this.externalHttpUrl != null) {
      json[r'external_http_url'] = this.externalHttpUrl;
    } else {
      json[r'external_http_url'] = null;
    }
    if (this.flags != null) {
      json[r'flags'] = this.flags;
    } else {
      json[r'flags'] = null;
    }
    if (this.hasChildren != null) {
      json[r'has_children'] = this.hasChildren;
    } else {
      json[r'has_children'] = null;
    }
    if (this.hasError != null) {
      json[r'has_error'] = this.hasError;
    } else {
      json[r'has_error'] = null;
    }
    if (this.httpHost != null) {
      json[r'http_host'] = this.httpHost;
    } else {
      json[r'http_host'] = null;
    }
    if (this.httpMethod != null) {
      json[r'http_method'] = this.httpMethod;
    } else {
      json[r'http_method'] = null;
    }
    if (this.httpUrl != null) {
      json[r'http_url'] = this.httpUrl;
    } else {
      json[r'http_url'] = null;
    }
    if (this.isRemote != null) {
      json[r'is_remote'] = this.isRemote;
    } else {
      json[r'is_remote'] = null;
    }
    if (this.kindString != null) {
      json[r'kind_string'] = this.kindString;
    } else {
      json[r'kind_string'] = null;
    }
    if (this.level != null) {
      json[r'level'] = this.level;
    } else {
      json[r'level'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.parentSpanId != null) {
      json[r'parent_span_id'] = this.parentSpanId;
    } else {
      json[r'parent_span_id'] = null;
    }
      json[r'references'] = this.references;
      json[r'resource'] = this.resource;
    if (this.responseStatusCode != null) {
      json[r'response_status_code'] = this.responseStatusCode;
    } else {
      json[r'response_status_code'] = null;
    }
    if (this.spanId != null) {
      json[r'span_id'] = this.spanId;
    } else {
      json[r'span_id'] = null;
    }
    if (this.statusCode != null) {
      json[r'status_code'] = this.statusCode;
    } else {
      json[r'status_code'] = null;
    }
    if (this.statusCodeString != null) {
      json[r'status_code_string'] = this.statusCodeString;
    } else {
      json[r'status_code_string'] = null;
    }
    if (this.statusMessage != null) {
      json[r'status_message'] = this.statusMessage;
    } else {
      json[r'status_message'] = null;
    }
    if (this.subTreeNodeCount != null) {
      json[r'sub_tree_node_count'] = this.subTreeNodeCount;
    } else {
      json[r'sub_tree_node_count'] = null;
    }
    if (this.timeUnix != null) {
      json[r'time_unix'] = this.timeUnix;
    } else {
      json[r'time_unix'] = null;
    }
    if (this.traceId != null) {
      json[r'trace_id'] = this.traceId;
    } else {
      json[r'trace_id'] = null;
    }
    if (this.traceState != null) {
      json[r'trace_state'] = this.traceState;
    } else {
      json[r'trace_state'] = null;
    }
    return json;
  }

  /// Returns a new [O11yWaterfallSpan] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yWaterfallSpan? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yWaterfallSpan[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yWaterfallSpan[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yWaterfallSpan(
        attributes: mapCastOfType<String, Object>(json, r'attributes') ?? const {},
        dbName: mapValueOfType<String>(json, r'db_name'),
        dbOperation: mapValueOfType<String>(json, r'db_operation'),
        durationNano: mapValueOfType<int>(json, r'duration_nano'),
        events: O11yEvent.listFromJson(json[r'events']),
        externalHttpMethod: mapValueOfType<String>(json, r'external_http_method'),
        externalHttpUrl: mapValueOfType<String>(json, r'external_http_url'),
        flags: mapValueOfType<int>(json, r'flags'),
        hasChildren: mapValueOfType<bool>(json, r'has_children'),
        hasError: mapValueOfType<bool>(json, r'has_error'),
        httpHost: mapValueOfType<String>(json, r'http_host'),
        httpMethod: mapValueOfType<String>(json, r'http_method'),
        httpUrl: mapValueOfType<String>(json, r'http_url'),
        isRemote: mapValueOfType<String>(json, r'is_remote'),
        kindString: mapValueOfType<String>(json, r'kind_string'),
        level: mapValueOfType<int>(json, r'level'),
        name: mapValueOfType<String>(json, r'name'),
        parentSpanId: mapValueOfType<String>(json, r'parent_span_id'),
        references: O11yOtelSpanRef.listFromJson(json[r'references']),
        resource: mapCastOfType<String, String>(json, r'resource') ?? const {},
        responseStatusCode: mapValueOfType<String>(json, r'response_status_code'),
        spanId: mapValueOfType<String>(json, r'span_id'),
        statusCode: mapValueOfType<int>(json, r'status_code'),
        statusCodeString: mapValueOfType<String>(json, r'status_code_string'),
        statusMessage: mapValueOfType<String>(json, r'status_message'),
        subTreeNodeCount: mapValueOfType<int>(json, r'sub_tree_node_count'),
        timeUnix: mapValueOfType<int>(json, r'time_unix'),
        traceId: mapValueOfType<String>(json, r'trace_id'),
        traceState: mapValueOfType<String>(json, r'trace_state'),
      );
    }
    return null;
  }

  static List<O11yWaterfallSpan> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yWaterfallSpan>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yWaterfallSpan.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yWaterfallSpan> mapFromJson(dynamic json) {
    final map = <String, O11yWaterfallSpan>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yWaterfallSpan.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yWaterfallSpan-objects as value to a dart map
  static Map<String, List<O11yWaterfallSpan>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yWaterfallSpan>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yWaterfallSpan.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

