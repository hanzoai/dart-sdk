//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yGettableFlamegraphTrace {
  /// Returns a new [O11yGettableFlamegraphTrace] instance.
  O11yGettableFlamegraphTrace({
    this.endTimestampMillis,
    this.hasMore,
    this.spans = const [],
    this.startTimestampMillis,
  });
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? endTimestampMillis;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? hasMore;

  List<List<O11yFlamegraphSpan>> spans;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? startTimestampMillis;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yGettableFlamegraphTrace &&
    other.endTimestampMillis == endTimestampMillis &&
    other.hasMore == hasMore &&
    _deepEquality.equals(other.spans, spans) &&
    other.startTimestampMillis == startTimestampMillis;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (endTimestampMillis == null ? 0 : endTimestampMillis!.hashCode) +
    (hasMore == null ? 0 : hasMore!.hashCode) +
    (spans.hashCode) +
    (startTimestampMillis == null ? 0 : startTimestampMillis!.hashCode);

  @override
  String toString() => 'O11yGettableFlamegraphTrace[endTimestampMillis=$endTimestampMillis, hasMore=$hasMore, spans=$spans, startTimestampMillis=$startTimestampMillis]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.endTimestampMillis != null) {
      json[r'endTimestampMillis'] = this.endTimestampMillis;
    } else {
      json[r'endTimestampMillis'] = null;
    }
    if (this.hasMore != null) {
      json[r'hasMore'] = this.hasMore;
    } else {
      json[r'hasMore'] = null;
    }
      json[r'spans'] = this.spans;
    if (this.startTimestampMillis != null) {
      json[r'startTimestampMillis'] = this.startTimestampMillis;
    } else {
      json[r'startTimestampMillis'] = null;
    }
    return json;
  }

  /// Returns a new [O11yGettableFlamegraphTrace] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yGettableFlamegraphTrace? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yGettableFlamegraphTrace[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yGettableFlamegraphTrace[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yGettableFlamegraphTrace(
        endTimestampMillis: mapValueOfType<int>(json, r'endTimestampMillis'),
        hasMore: mapValueOfType<bool>(json, r'hasMore'),
        spans: json[r'spans'] is List
          ? (json[r'spans'] as List).map((e) =>
              O11yFlamegraphSpan.listFromJson(e)
            ).toList()
          :  const [],
        startTimestampMillis: mapValueOfType<int>(json, r'startTimestampMillis'),
      );
    }
    return null;
  }

  static List<O11yGettableFlamegraphTrace> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yGettableFlamegraphTrace>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yGettableFlamegraphTrace.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yGettableFlamegraphTrace> mapFromJson(dynamic json) {
    final map = <String, O11yGettableFlamegraphTrace>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yGettableFlamegraphTrace.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yGettableFlamegraphTrace-objects as value to a dart map
  static Map<String, List<O11yGettableFlamegraphTrace>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yGettableFlamegraphTrace>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yGettableFlamegraphTrace.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

