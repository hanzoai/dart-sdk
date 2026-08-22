//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yTracesOut {
  /// Returns a new [O11yTracesOut] instance.
  O11yTracesOut({
    this.count,
    this.limit,
    this.sinceSec,
    this.traces = const [],
  });
  /// Count is how many traces this page carries.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? count;

  /// Limit is the page cap actually applied, after clamping.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? limit;

  /// SinceSec is the window actually read, in seconds, after clamping.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? sinceSec;

  /// Traces are the caller org's traces, most recently active first.
  List<O11yTraceRow> traces;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yTracesOut &&
    other.count == count &&
    other.limit == limit &&
    other.sinceSec == sinceSec &&
    _deepEquality.equals(other.traces, traces);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (count == null ? 0 : count!.hashCode) +
    (limit == null ? 0 : limit!.hashCode) +
    (sinceSec == null ? 0 : sinceSec!.hashCode) +
    (traces.hashCode);

  @override
  String toString() => 'O11yTracesOut[count=$count, limit=$limit, sinceSec=$sinceSec, traces=$traces]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.count != null) {
      json[r'count'] = this.count;
    } else {
      json[r'count'] = null;
    }
    if (this.limit != null) {
      json[r'limit'] = this.limit;
    } else {
      json[r'limit'] = null;
    }
    if (this.sinceSec != null) {
      json[r'sinceSec'] = this.sinceSec;
    } else {
      json[r'sinceSec'] = null;
    }
      json[r'traces'] = this.traces;
    return json;
  }

  /// Returns a new [O11yTracesOut] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yTracesOut? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yTracesOut[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yTracesOut[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yTracesOut(
        count: mapValueOfType<int>(json, r'count'),
        limit: mapValueOfType<int>(json, r'limit'),
        sinceSec: mapValueOfType<int>(json, r'sinceSec'),
        traces: O11yTraceRow.listFromJson(json[r'traces']),
      );
    }
    return null;
  }

  static List<O11yTracesOut> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yTracesOut>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yTracesOut.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yTracesOut> mapFromJson(dynamic json) {
    final map = <String, O11yTracesOut>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yTracesOut.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yTracesOut-objects as value to a dart map
  static Map<String, List<O11yTracesOut>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yTracesOut>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yTracesOut.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

