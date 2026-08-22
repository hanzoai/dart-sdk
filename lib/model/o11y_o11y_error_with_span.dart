//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yO11yErrorWithSpan {
  /// Returns a new [O11yO11yErrorWithSpan] instance.
  O11yO11yErrorWithSpan({
    this.errorId,
    this.exceptionEscaped,
    this.exceptionMessage,
    this.exceptionStacktrace,
    this.exceptionType,
    this.groupID,
    this.serviceName,
    this.spanID,
    this.timestamp,
    this.traceID,
  });
  /// ErrorID is the exception instance id.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? errorId;

  /// ExceptionEscaped marks an exception that escaped its span uncaught.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? exceptionEscaped;

  /// ExceptionMsg is the exception's message.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? exceptionMessage;

  /// ExceptionStacktrace is the captured stack trace.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? exceptionStacktrace;

  /// ExceptionType is the exception's type.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? exceptionType;

  /// GroupID is the exception group it belongs to.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? groupID;

  /// ServiceName is the service that reported it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? serviceName;

  /// SpanID is the span it happened on.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? spanID;

  /// Timestamp is when it happened.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? timestamp;

  /// TraceID is the trace the span belonged to.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? traceID;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yO11yErrorWithSpan &&
    other.errorId == errorId &&
    other.exceptionEscaped == exceptionEscaped &&
    other.exceptionMessage == exceptionMessage &&
    other.exceptionStacktrace == exceptionStacktrace &&
    other.exceptionType == exceptionType &&
    other.groupID == groupID &&
    other.serviceName == serviceName &&
    other.spanID == spanID &&
    other.timestamp == timestamp &&
    other.traceID == traceID;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (errorId == null ? 0 : errorId!.hashCode) +
    (exceptionEscaped == null ? 0 : exceptionEscaped!.hashCode) +
    (exceptionMessage == null ? 0 : exceptionMessage!.hashCode) +
    (exceptionStacktrace == null ? 0 : exceptionStacktrace!.hashCode) +
    (exceptionType == null ? 0 : exceptionType!.hashCode) +
    (groupID == null ? 0 : groupID!.hashCode) +
    (serviceName == null ? 0 : serviceName!.hashCode) +
    (spanID == null ? 0 : spanID!.hashCode) +
    (timestamp == null ? 0 : timestamp!.hashCode) +
    (traceID == null ? 0 : traceID!.hashCode);

  @override
  String toString() => 'O11yO11yErrorWithSpan[errorId=$errorId, exceptionEscaped=$exceptionEscaped, exceptionMessage=$exceptionMessage, exceptionStacktrace=$exceptionStacktrace, exceptionType=$exceptionType, groupID=$groupID, serviceName=$serviceName, spanID=$spanID, timestamp=$timestamp, traceID=$traceID]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.errorId != null) {
      json[r'errorId'] = this.errorId;
    } else {
      json[r'errorId'] = null;
    }
    if (this.exceptionEscaped != null) {
      json[r'exceptionEscaped'] = this.exceptionEscaped;
    } else {
      json[r'exceptionEscaped'] = null;
    }
    if (this.exceptionMessage != null) {
      json[r'exceptionMessage'] = this.exceptionMessage;
    } else {
      json[r'exceptionMessage'] = null;
    }
    if (this.exceptionStacktrace != null) {
      json[r'exceptionStacktrace'] = this.exceptionStacktrace;
    } else {
      json[r'exceptionStacktrace'] = null;
    }
    if (this.exceptionType != null) {
      json[r'exceptionType'] = this.exceptionType;
    } else {
      json[r'exceptionType'] = null;
    }
    if (this.groupID != null) {
      json[r'groupID'] = this.groupID;
    } else {
      json[r'groupID'] = null;
    }
    if (this.serviceName != null) {
      json[r'serviceName'] = this.serviceName;
    } else {
      json[r'serviceName'] = null;
    }
    if (this.spanID != null) {
      json[r'spanID'] = this.spanID;
    } else {
      json[r'spanID'] = null;
    }
    if (this.timestamp != null) {
      json[r'timestamp'] = this.timestamp!.toUtc().toIso8601String();
    } else {
      json[r'timestamp'] = null;
    }
    if (this.traceID != null) {
      json[r'traceID'] = this.traceID;
    } else {
      json[r'traceID'] = null;
    }
    return json;
  }

  /// Returns a new [O11yO11yErrorWithSpan] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yO11yErrorWithSpan? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yO11yErrorWithSpan[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yO11yErrorWithSpan[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yO11yErrorWithSpan(
        errorId: mapValueOfType<String>(json, r'errorId'),
        exceptionEscaped: mapValueOfType<bool>(json, r'exceptionEscaped'),
        exceptionMessage: mapValueOfType<String>(json, r'exceptionMessage'),
        exceptionStacktrace: mapValueOfType<String>(json, r'exceptionStacktrace'),
        exceptionType: mapValueOfType<String>(json, r'exceptionType'),
        groupID: mapValueOfType<String>(json, r'groupID'),
        serviceName: mapValueOfType<String>(json, r'serviceName'),
        spanID: mapValueOfType<String>(json, r'spanID'),
        timestamp: mapDateTime(json, r'timestamp', r''),
        traceID: mapValueOfType<String>(json, r'traceID'),
      );
    }
    return null;
  }

  static List<O11yO11yErrorWithSpan> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yO11yErrorWithSpan>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yO11yErrorWithSpan.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yO11yErrorWithSpan> mapFromJson(dynamic json) {
    final map = <String, O11yO11yErrorWithSpan>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yO11yErrorWithSpan.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yO11yErrorWithSpan-objects as value to a dart map
  static Map<String, List<O11yO11yErrorWithSpan>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yO11yErrorWithSpan>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yO11yErrorWithSpan.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

