//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yO11yLogPipelineOperator {
  /// Returns a new [O11yO11yLogPipelineOperator] instance.
  O11yO11yLogPipelineOperator({
    this.default_,
    this.enableFlattening,
    this.enablePaths,
    this.enabled,
    this.expr,
    this.field,
    this.fields = const [],
    this.from,
    this.id,
    this.if_,
    this.layout,
    this.layoutType,
    this.mapping = const {},
    this.name,
    this.onError,
    this.orderId,
    this.output,
    this.overwriteText,
    this.parseFrom,
    this.parseTo,
    this.pathPrefix,
    this.pattern,
    this.regex,
    this.routes = const [],
    this.spanId,
    this.to,
    this.traceFlags,
    this.traceId,
    this.type,
    this.value,
  });

  /// Default is the id of the processor a router falls through to.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? default_;

  /// EnableFlattening flattens parsed JSON one level when true.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? enableFlattening;

  /// EnablePaths keeps the JSON path in flattened keys when true.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? enablePaths;

  /// Enabled turns the processor on.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? enabled;

  /// Expr is a router route's expression.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? expr;

  /// Field is the field an add/remove processor works on.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? field;

  /// Fields are the fields a retain processor keeps.
  List<String> fields;

  /// From is the source field of a move or copy.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? from;

  /// ID is the processor's id, unique within the pipeline.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// If gates the processor on an expression.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? if_;

  /// Layout is a time parser's layout.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? layout;

  /// LayoutType is the layout's kind, e.g. strptime, gotime, epoch.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? layoutType;

  /// Mapping maps severity levels (or flattened keys) to the values that mean them.
  Map<String, List<String>> mapping;

  /// Name is the processor's display name.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// OnError says what to do when the processor fails, e.g. send, drop.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? onError;

  /// OrderID is the processor's 1-based position in the pipeline.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? orderId;

  /// Output is the id of the processor that runs next.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? output;

  /// OverwriteSeverityText rewrites the severity text alongside the number when true.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? overwriteText;

  /// ParseFrom is where a parser reads from.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? parseFrom;

  /// ParseTo is where a parser writes its result.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? parseTo;

  /// PathPrefix prefixes flattened keys.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? pathPrefix;

  /// Pattern is a grok parser's pattern.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? pattern;

  /// Regex is a regex parser's expression.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? regex;

  /// Routes are a router processor's routes.
  List<O11yO11yLogPipelineRoute> routes;

  /// SpanID says where a trace parser reads the span id from.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  O11yO11yLogParseFrom? spanId;

  /// To is the destination field of a move or copy.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? to;

  /// TraceFlags says where a trace parser reads the trace flags from.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  O11yO11yLogParseFrom? traceFlags;

  /// TraceID says where a trace parser reads the trace id from.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  O11yO11yLogParseFrom? traceId;

  /// Type is the processor type, e.g. grok_parser, regex_parser, json_parser, trace_parser, time_parser, severity_parser, add, remove, move, copy.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? type;

  /// Value is the value an add processor writes.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? value;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yO11yLogPipelineOperator &&
    other.default_ == default_ &&
    other.enableFlattening == enableFlattening &&
    other.enablePaths == enablePaths &&
    other.enabled == enabled &&
    other.expr == expr &&
    other.field == field &&
    _deepEquality.equals(other.fields, fields) &&
    other.from == from &&
    other.id == id &&
    other.if_ == if_ &&
    other.layout == layout &&
    other.layoutType == layoutType &&
    _deepEquality.equals(other.mapping, mapping) &&
    other.name == name &&
    other.onError == onError &&
    other.orderId == orderId &&
    other.output == output &&
    other.overwriteText == overwriteText &&
    other.parseFrom == parseFrom &&
    other.parseTo == parseTo &&
    other.pathPrefix == pathPrefix &&
    other.pattern == pattern &&
    other.regex == regex &&
    _deepEquality.equals(other.routes, routes) &&
    other.spanId == spanId &&
    other.to == to &&
    other.traceFlags == traceFlags &&
    other.traceId == traceId &&
    other.type == type &&
    other.value == value;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (default_ == null ? 0 : default_!.hashCode) +
    (enableFlattening == null ? 0 : enableFlattening!.hashCode) +
    (enablePaths == null ? 0 : enablePaths!.hashCode) +
    (enabled == null ? 0 : enabled!.hashCode) +
    (expr == null ? 0 : expr!.hashCode) +
    (field == null ? 0 : field!.hashCode) +
    (fields.hashCode) +
    (from == null ? 0 : from!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (if_ == null ? 0 : if_!.hashCode) +
    (layout == null ? 0 : layout!.hashCode) +
    (layoutType == null ? 0 : layoutType!.hashCode) +
    (mapping.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (onError == null ? 0 : onError!.hashCode) +
    (orderId == null ? 0 : orderId!.hashCode) +
    (output == null ? 0 : output!.hashCode) +
    (overwriteText == null ? 0 : overwriteText!.hashCode) +
    (parseFrom == null ? 0 : parseFrom!.hashCode) +
    (parseTo == null ? 0 : parseTo!.hashCode) +
    (pathPrefix == null ? 0 : pathPrefix!.hashCode) +
    (pattern == null ? 0 : pattern!.hashCode) +
    (regex == null ? 0 : regex!.hashCode) +
    (routes.hashCode) +
    (spanId == null ? 0 : spanId!.hashCode) +
    (to == null ? 0 : to!.hashCode) +
    (traceFlags == null ? 0 : traceFlags!.hashCode) +
    (traceId == null ? 0 : traceId!.hashCode) +
    (type == null ? 0 : type!.hashCode) +
    (value == null ? 0 : value!.hashCode);

  @override
  String toString() => 'O11yO11yLogPipelineOperator[default_=$default_, enableFlattening=$enableFlattening, enablePaths=$enablePaths, enabled=$enabled, expr=$expr, field=$field, fields=$fields, from=$from, id=$id, if_=$if_, layout=$layout, layoutType=$layoutType, mapping=$mapping, name=$name, onError=$onError, orderId=$orderId, output=$output, overwriteText=$overwriteText, parseFrom=$parseFrom, parseTo=$parseTo, pathPrefix=$pathPrefix, pattern=$pattern, regex=$regex, routes=$routes, spanId=$spanId, to=$to, traceFlags=$traceFlags, traceId=$traceId, type=$type, value=$value]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.default_ != null) {
      json[r'default'] = this.default_;
    } else {
      json[r'default'] = null;
    }
    if (this.enableFlattening != null) {
      json[r'enable_flattening'] = this.enableFlattening;
    } else {
      json[r'enable_flattening'] = null;
    }
    if (this.enablePaths != null) {
      json[r'enable_paths'] = this.enablePaths;
    } else {
      json[r'enable_paths'] = null;
    }
    if (this.enabled != null) {
      json[r'enabled'] = this.enabled;
    } else {
      json[r'enabled'] = null;
    }
    if (this.expr != null) {
      json[r'expr'] = this.expr;
    } else {
      json[r'expr'] = null;
    }
    if (this.field != null) {
      json[r'field'] = this.field;
    } else {
      json[r'field'] = null;
    }
      json[r'fields'] = this.fields;
    if (this.from != null) {
      json[r'from'] = this.from;
    } else {
      json[r'from'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.if_ != null) {
      json[r'if'] = this.if_;
    } else {
      json[r'if'] = null;
    }
    if (this.layout != null) {
      json[r'layout'] = this.layout;
    } else {
      json[r'layout'] = null;
    }
    if (this.layoutType != null) {
      json[r'layout_type'] = this.layoutType;
    } else {
      json[r'layout_type'] = null;
    }
      json[r'mapping'] = this.mapping;
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.onError != null) {
      json[r'on_error'] = this.onError;
    } else {
      json[r'on_error'] = null;
    }
    if (this.orderId != null) {
      json[r'orderId'] = this.orderId;
    } else {
      json[r'orderId'] = null;
    }
    if (this.output != null) {
      json[r'output'] = this.output;
    } else {
      json[r'output'] = null;
    }
    if (this.overwriteText != null) {
      json[r'overwrite_text'] = this.overwriteText;
    } else {
      json[r'overwrite_text'] = null;
    }
    if (this.parseFrom != null) {
      json[r'parse_from'] = this.parseFrom;
    } else {
      json[r'parse_from'] = null;
    }
    if (this.parseTo != null) {
      json[r'parse_to'] = this.parseTo;
    } else {
      json[r'parse_to'] = null;
    }
    if (this.pathPrefix != null) {
      json[r'path_prefix'] = this.pathPrefix;
    } else {
      json[r'path_prefix'] = null;
    }
    if (this.pattern != null) {
      json[r'pattern'] = this.pattern;
    } else {
      json[r'pattern'] = null;
    }
    if (this.regex != null) {
      json[r'regex'] = this.regex;
    } else {
      json[r'regex'] = null;
    }
      json[r'routes'] = this.routes;
    if (this.spanId != null) {
      json[r'span_id'] = this.spanId;
    } else {
      json[r'span_id'] = null;
    }
    if (this.to != null) {
      json[r'to'] = this.to;
    } else {
      json[r'to'] = null;
    }
    if (this.traceFlags != null) {
      json[r'trace_flags'] = this.traceFlags;
    } else {
      json[r'trace_flags'] = null;
    }
    if (this.traceId != null) {
      json[r'trace_id'] = this.traceId;
    } else {
      json[r'trace_id'] = null;
    }
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
    if (this.value != null) {
      json[r'value'] = this.value;
    } else {
      json[r'value'] = null;
    }
    return json;
  }

  /// Returns a new [O11yO11yLogPipelineOperator] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yO11yLogPipelineOperator? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yO11yLogPipelineOperator[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yO11yLogPipelineOperator[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yO11yLogPipelineOperator(
        default_: mapValueOfType<String>(json, r'default'),
        enableFlattening: mapValueOfType<bool>(json, r'enable_flattening'),
        enablePaths: mapValueOfType<bool>(json, r'enable_paths'),
        enabled: mapValueOfType<bool>(json, r'enabled'),
        expr: mapValueOfType<String>(json, r'expr'),
        field: mapValueOfType<String>(json, r'field'),
        fields: json[r'fields'] is Iterable
            ? (json[r'fields'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        from: mapValueOfType<String>(json, r'from'),
        id: mapValueOfType<String>(json, r'id'),
        if_: mapValueOfType<String>(json, r'if'),
        layout: mapValueOfType<String>(json, r'layout'),
        layoutType: mapValueOfType<String>(json, r'layout_type'),
        mapping: json[r'mapping'] == null
          ? const {}
            : (json[r'mapping'] as Map).map((k, v) => MapEntry(k as String, v == null ? const <String>[] : (v as List).cast<String>().toList(growable: false))),
        name: mapValueOfType<String>(json, r'name'),
        onError: mapValueOfType<String>(json, r'on_error'),
        orderId: mapValueOfType<int>(json, r'orderId'),
        output: mapValueOfType<String>(json, r'output'),
        overwriteText: mapValueOfType<bool>(json, r'overwrite_text'),
        parseFrom: mapValueOfType<String>(json, r'parse_from'),
        parseTo: mapValueOfType<String>(json, r'parse_to'),
        pathPrefix: mapValueOfType<String>(json, r'path_prefix'),
        pattern: mapValueOfType<String>(json, r'pattern'),
        regex: mapValueOfType<String>(json, r'regex'),
        routes: O11yO11yLogPipelineRoute.listFromJson(json[r'routes']),
        spanId: O11yO11yLogParseFrom.fromJson(json[r'span_id']),
        to: mapValueOfType<String>(json, r'to'),
        traceFlags: O11yO11yLogParseFrom.fromJson(json[r'trace_flags']),
        traceId: O11yO11yLogParseFrom.fromJson(json[r'trace_id']),
        type: mapValueOfType<String>(json, r'type'),
        value: mapValueOfType<String>(json, r'value'),
      );
    }
    return null;
  }

  static List<O11yO11yLogPipelineOperator> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yO11yLogPipelineOperator>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yO11yLogPipelineOperator.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yO11yLogPipelineOperator> mapFromJson(dynamic json) {
    final map = <String, O11yO11yLogPipelineOperator>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yO11yLogPipelineOperator.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yO11yLogPipelineOperator-objects as value to a dart map
  static Map<String, List<O11yO11yLogPipelineOperator>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yO11yLogPipelineOperator>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yO11yLogPipelineOperator.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

