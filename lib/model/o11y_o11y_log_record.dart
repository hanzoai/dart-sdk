//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yO11yLogRecord {
  /// Returns a new [O11yO11yLogRecord] instance.
  O11yO11yLogRecord({
    this.attributesBool = const {},
    this.attributesFloat = const {},
    this.attributesInt = const {},
    this.attributesString = const {},
    this.body,
    this.id,
    this.resourcesString = const {},
    this.severityNumber,
    this.severityText,
    this.spanId,
    this.timestamp,
    this.traceFlags,
    this.traceId,
  });
  /// AttributesBool are the record's boolean attributes.
  Map<String, bool> attributesBool;

  /// AttributesFloat are the record's float attributes.
  Map<String, num> attributesFloat;

  /// AttributesInt are the record's integer attributes.
  Map<String, int> attributesInt;

  /// AttributesString are the record's string attributes.
  Map<String, String> attributesString;

  /// Body is the record's body.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? body;

  /// ID is the record's id.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// ResourcesString are the record's string resource attributes.
  Map<String, String> resourcesString;

  /// SeverityNumber is the record's severity as a number.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? severityNumber;

  /// SeverityText is the record's severity as text, e.g. ERROR.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? severityText;

  /// SpanID is the span the record belongs to.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? spanId;

  /// Timestamp is the record's time as a nanosecond epoch.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? timestamp;

  /// TraceFlags are the record's trace flags.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? traceFlags;

  /// TraceID is the trace the record belongs to.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? traceId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yO11yLogRecord &&
    _deepEquality.equals(other.attributesBool, attributesBool) &&
    _deepEquality.equals(other.attributesFloat, attributesFloat) &&
    _deepEquality.equals(other.attributesInt, attributesInt) &&
    _deepEquality.equals(other.attributesString, attributesString) &&
    other.body == body &&
    other.id == id &&
    _deepEquality.equals(other.resourcesString, resourcesString) &&
    other.severityNumber == severityNumber &&
    other.severityText == severityText &&
    other.spanId == spanId &&
    other.timestamp == timestamp &&
    other.traceFlags == traceFlags &&
    other.traceId == traceId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (attributesBool.hashCode) +
    (attributesFloat.hashCode) +
    (attributesInt.hashCode) +
    (attributesString.hashCode) +
    (body == null ? 0 : body!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (resourcesString.hashCode) +
    (severityNumber == null ? 0 : severityNumber!.hashCode) +
    (severityText == null ? 0 : severityText!.hashCode) +
    (spanId == null ? 0 : spanId!.hashCode) +
    (timestamp == null ? 0 : timestamp!.hashCode) +
    (traceFlags == null ? 0 : traceFlags!.hashCode) +
    (traceId == null ? 0 : traceId!.hashCode);

  @override
  String toString() => 'O11yO11yLogRecord[attributesBool=$attributesBool, attributesFloat=$attributesFloat, attributesInt=$attributesInt, attributesString=$attributesString, body=$body, id=$id, resourcesString=$resourcesString, severityNumber=$severityNumber, severityText=$severityText, spanId=$spanId, timestamp=$timestamp, traceFlags=$traceFlags, traceId=$traceId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'attributes_bool'] = this.attributesBool;
      json[r'attributes_float'] = this.attributesFloat;
      json[r'attributes_int'] = this.attributesInt;
      json[r'attributes_string'] = this.attributesString;
    if (this.body != null) {
      json[r'body'] = this.body;
    } else {
      json[r'body'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
      json[r'resources_string'] = this.resourcesString;
    if (this.severityNumber != null) {
      json[r'severity_number'] = this.severityNumber;
    } else {
      json[r'severity_number'] = null;
    }
    if (this.severityText != null) {
      json[r'severity_text'] = this.severityText;
    } else {
      json[r'severity_text'] = null;
    }
    if (this.spanId != null) {
      json[r'span_id'] = this.spanId;
    } else {
      json[r'span_id'] = null;
    }
    if (this.timestamp != null) {
      json[r'timestamp'] = this.timestamp;
    } else {
      json[r'timestamp'] = null;
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
    return json;
  }

  /// Returns a new [O11yO11yLogRecord] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yO11yLogRecord? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yO11yLogRecord[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yO11yLogRecord[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yO11yLogRecord(
        attributesBool: mapCastOfType<String, bool>(json, r'attributes_bool') ?? const {},
        attributesFloat: mapCastOfType<String, num>(json, r'attributes_float') ?? const {},
        attributesInt: mapCastOfType<String, int>(json, r'attributes_int') ?? const {},
        attributesString: mapCastOfType<String, String>(json, r'attributes_string') ?? const {},
        body: mapValueOfType<String>(json, r'body'),
        id: mapValueOfType<String>(json, r'id'),
        resourcesString: mapCastOfType<String, String>(json, r'resources_string') ?? const {},
        severityNumber: mapValueOfType<int>(json, r'severity_number'),
        severityText: mapValueOfType<String>(json, r'severity_text'),
        spanId: mapValueOfType<String>(json, r'span_id'),
        timestamp: mapValueOfType<int>(json, r'timestamp'),
        traceFlags: mapValueOfType<int>(json, r'trace_flags'),
        traceId: mapValueOfType<String>(json, r'trace_id'),
      );
    }
    return null;
  }

  static List<O11yO11yLogRecord> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yO11yLogRecord>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yO11yLogRecord.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yO11yLogRecord> mapFromJson(dynamic json) {
    final map = <String, O11yO11yLogRecord>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yO11yLogRecord.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yO11yLogRecord-objects as value to a dart map
  static Map<String, List<O11yO11yLogRecord>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yO11yLogRecord>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yO11yLogRecord.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

