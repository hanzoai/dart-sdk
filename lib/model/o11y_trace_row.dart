//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yTraceRow {
  /// Returns a new [O11yTraceRow] instance.
  O11yTraceRow({
    this.durationMs,
    this.end,
    this.numSpans,
    this.start,
    this.traceId,
  });
  /// DurationMs is End minus Start in milliseconds: the trace's wall clock, not the sum of its spans, which double-counts everything concurrent.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? durationMs;

  /// End is the latest span end, RFC3339 with nanoseconds, in UTC.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? end;

  /// NumSpans is how many spans the trace carries.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? numSpans;

  /// Start is the earliest span start, RFC3339 with nanoseconds, in UTC.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? start;

  /// TraceID is the trace's id — the {traceId} of the detail read.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? traceId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yTraceRow &&
    other.durationMs == durationMs &&
    other.end == end &&
    other.numSpans == numSpans &&
    other.start == start &&
    other.traceId == traceId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (durationMs == null ? 0 : durationMs!.hashCode) +
    (end == null ? 0 : end!.hashCode) +
    (numSpans == null ? 0 : numSpans!.hashCode) +
    (start == null ? 0 : start!.hashCode) +
    (traceId == null ? 0 : traceId!.hashCode);

  @override
  String toString() => 'O11yTraceRow[durationMs=$durationMs, end=$end, numSpans=$numSpans, start=$start, traceId=$traceId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.durationMs != null) {
      json[r'durationMs'] = this.durationMs;
    } else {
      json[r'durationMs'] = null;
    }
    if (this.end != null) {
      json[r'end'] = this.end;
    } else {
      json[r'end'] = null;
    }
    if (this.numSpans != null) {
      json[r'numSpans'] = this.numSpans;
    } else {
      json[r'numSpans'] = null;
    }
    if (this.start != null) {
      json[r'start'] = this.start;
    } else {
      json[r'start'] = null;
    }
    if (this.traceId != null) {
      json[r'traceId'] = this.traceId;
    } else {
      json[r'traceId'] = null;
    }
    return json;
  }

  /// Returns a new [O11yTraceRow] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yTraceRow? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yTraceRow[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yTraceRow[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yTraceRow(
        durationMs: mapValueOfType<double>(json, r'durationMs'),
        end: mapValueOfType<String>(json, r'end'),
        numSpans: mapValueOfType<int>(json, r'numSpans'),
        start: mapValueOfType<String>(json, r'start'),
        traceId: mapValueOfType<String>(json, r'traceId'),
      );
    }
    return null;
  }

  static List<O11yTraceRow> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yTraceRow>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yTraceRow.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yTraceRow> mapFromJson(dynamic json) {
    final map = <String, O11yTraceRow>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yTraceRow.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yTraceRow-objects as value to a dart map
  static Map<String, List<O11yTraceRow>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yTraceRow>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yTraceRow.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

