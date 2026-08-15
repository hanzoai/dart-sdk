//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yO11yTraceSpanWindow {
  /// Returns a new [O11yO11yTraceSpanWindow] instance.
  O11yO11yTraceSpanWindow({
    this.columns = const [],
    this.endTimestampMillis,
    this.events = const [],
    this.isSubTree,
    this.startTimestampMillis,
  });

  /// Columns names the fields each row carries, in row order.
  List<String> columns;

  /// EndTimestampMillis is when it closes.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? endTimestampMillis;

  /// Events are the rows, each positionally matching Columns.
  List<List<Object>> events;

  /// IsSubTree says the window is a subtree of the trace rather than the whole of it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isSubTree;

  /// StartTimestampMillis is when the window opens.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? startTimestampMillis;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yO11yTraceSpanWindow &&
    _deepEquality.equals(other.columns, columns) &&
    other.endTimestampMillis == endTimestampMillis &&
    _deepEquality.equals(other.events, events) &&
    other.isSubTree == isSubTree &&
    other.startTimestampMillis == startTimestampMillis;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (columns.hashCode) +
    (endTimestampMillis == null ? 0 : endTimestampMillis!.hashCode) +
    (events.hashCode) +
    (isSubTree == null ? 0 : isSubTree!.hashCode) +
    (startTimestampMillis == null ? 0 : startTimestampMillis!.hashCode);

  @override
  String toString() => 'O11yO11yTraceSpanWindow[columns=$columns, endTimestampMillis=$endTimestampMillis, events=$events, isSubTree=$isSubTree, startTimestampMillis=$startTimestampMillis]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'columns'] = this.columns;
    if (this.endTimestampMillis != null) {
      json[r'endTimestampMillis'] = this.endTimestampMillis;
    } else {
      json[r'endTimestampMillis'] = null;
    }
      json[r'events'] = this.events;
    if (this.isSubTree != null) {
      json[r'isSubTree'] = this.isSubTree;
    } else {
      json[r'isSubTree'] = null;
    }
    if (this.startTimestampMillis != null) {
      json[r'startTimestampMillis'] = this.startTimestampMillis;
    } else {
      json[r'startTimestampMillis'] = null;
    }
    return json;
  }

  /// Returns a new [O11yO11yTraceSpanWindow] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yO11yTraceSpanWindow? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yO11yTraceSpanWindow[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yO11yTraceSpanWindow[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yO11yTraceSpanWindow(
        columns: json[r'columns'] is Iterable
            ? (json[r'columns'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        endTimestampMillis: mapValueOfType<int>(json, r'endTimestampMillis'),
        events: json[r'events'] is List
          ? (json[r'events'] as List).map((e) =>
              e == null ? const  <Object>[] : (e as List).cast<Object>()
            ).toList()
          :  const [],
        isSubTree: mapValueOfType<bool>(json, r'isSubTree'),
        startTimestampMillis: mapValueOfType<int>(json, r'startTimestampMillis'),
      );
    }
    return null;
  }

  static List<O11yO11yTraceSpanWindow> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yO11yTraceSpanWindow>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yO11yTraceSpanWindow.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yO11yTraceSpanWindow> mapFromJson(dynamic json) {
    final map = <String, O11yO11yTraceSpanWindow>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yO11yTraceSpanWindow.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yO11yTraceSpanWindow-objects as value to a dart map
  static Map<String, List<O11yO11yTraceSpanWindow>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yO11yTraceSpanWindow>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yO11yTraceSpanWindow.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

