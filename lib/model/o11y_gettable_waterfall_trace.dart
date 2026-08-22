//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yGettableWaterfallTrace {
  /// Returns a new [O11yGettableWaterfallTrace] instance.
  O11yGettableWaterfallTrace({
    this.endTimestampMillis,
    this.hasMissingSpans,
    this.hasMore,
    this.rootServiceEntryPoint,
    this.rootServiceName,
    this.spans = const [],
    this.startTimestampMillis,
    this.totalErrorSpansCount,
    this.totalSpansCount,
    this.uncollapsedSpans = const [],
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
  bool? hasMissingSpans;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? hasMore;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? rootServiceEntryPoint;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? rootServiceName;

  List<O11yWaterfallSpan> spans;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? startTimestampMillis;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? totalErrorSpansCount;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? totalSpansCount;

  List<String> uncollapsedSpans;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yGettableWaterfallTrace &&
    other.endTimestampMillis == endTimestampMillis &&
    other.hasMissingSpans == hasMissingSpans &&
    other.hasMore == hasMore &&
    other.rootServiceEntryPoint == rootServiceEntryPoint &&
    other.rootServiceName == rootServiceName &&
    _deepEquality.equals(other.spans, spans) &&
    other.startTimestampMillis == startTimestampMillis &&
    other.totalErrorSpansCount == totalErrorSpansCount &&
    other.totalSpansCount == totalSpansCount &&
    _deepEquality.equals(other.uncollapsedSpans, uncollapsedSpans);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (endTimestampMillis == null ? 0 : endTimestampMillis!.hashCode) +
    (hasMissingSpans == null ? 0 : hasMissingSpans!.hashCode) +
    (hasMore == null ? 0 : hasMore!.hashCode) +
    (rootServiceEntryPoint == null ? 0 : rootServiceEntryPoint!.hashCode) +
    (rootServiceName == null ? 0 : rootServiceName!.hashCode) +
    (spans.hashCode) +
    (startTimestampMillis == null ? 0 : startTimestampMillis!.hashCode) +
    (totalErrorSpansCount == null ? 0 : totalErrorSpansCount!.hashCode) +
    (totalSpansCount == null ? 0 : totalSpansCount!.hashCode) +
    (uncollapsedSpans.hashCode);

  @override
  String toString() => 'O11yGettableWaterfallTrace[endTimestampMillis=$endTimestampMillis, hasMissingSpans=$hasMissingSpans, hasMore=$hasMore, rootServiceEntryPoint=$rootServiceEntryPoint, rootServiceName=$rootServiceName, spans=$spans, startTimestampMillis=$startTimestampMillis, totalErrorSpansCount=$totalErrorSpansCount, totalSpansCount=$totalSpansCount, uncollapsedSpans=$uncollapsedSpans]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.endTimestampMillis != null) {
      json[r'endTimestampMillis'] = this.endTimestampMillis;
    } else {
      json[r'endTimestampMillis'] = null;
    }
    if (this.hasMissingSpans != null) {
      json[r'hasMissingSpans'] = this.hasMissingSpans;
    } else {
      json[r'hasMissingSpans'] = null;
    }
    if (this.hasMore != null) {
      json[r'hasMore'] = this.hasMore;
    } else {
      json[r'hasMore'] = null;
    }
    if (this.rootServiceEntryPoint != null) {
      json[r'rootServiceEntryPoint'] = this.rootServiceEntryPoint;
    } else {
      json[r'rootServiceEntryPoint'] = null;
    }
    if (this.rootServiceName != null) {
      json[r'rootServiceName'] = this.rootServiceName;
    } else {
      json[r'rootServiceName'] = null;
    }
      json[r'spans'] = this.spans;
    if (this.startTimestampMillis != null) {
      json[r'startTimestampMillis'] = this.startTimestampMillis;
    } else {
      json[r'startTimestampMillis'] = null;
    }
    if (this.totalErrorSpansCount != null) {
      json[r'totalErrorSpansCount'] = this.totalErrorSpansCount;
    } else {
      json[r'totalErrorSpansCount'] = null;
    }
    if (this.totalSpansCount != null) {
      json[r'totalSpansCount'] = this.totalSpansCount;
    } else {
      json[r'totalSpansCount'] = null;
    }
      json[r'uncollapsedSpans'] = this.uncollapsedSpans;
    return json;
  }

  /// Returns a new [O11yGettableWaterfallTrace] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yGettableWaterfallTrace? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yGettableWaterfallTrace[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yGettableWaterfallTrace[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yGettableWaterfallTrace(
        endTimestampMillis: mapValueOfType<int>(json, r'endTimestampMillis'),
        hasMissingSpans: mapValueOfType<bool>(json, r'hasMissingSpans'),
        hasMore: mapValueOfType<bool>(json, r'hasMore'),
        rootServiceEntryPoint: mapValueOfType<String>(json, r'rootServiceEntryPoint'),
        rootServiceName: mapValueOfType<String>(json, r'rootServiceName'),
        spans: O11yWaterfallSpan.listFromJson(json[r'spans']),
        startTimestampMillis: mapValueOfType<int>(json, r'startTimestampMillis'),
        totalErrorSpansCount: mapValueOfType<int>(json, r'totalErrorSpansCount'),
        totalSpansCount: mapValueOfType<int>(json, r'totalSpansCount'),
        uncollapsedSpans: json[r'uncollapsedSpans'] is Iterable
            ? (json[r'uncollapsedSpans'] as Iterable).cast<String>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<O11yGettableWaterfallTrace> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yGettableWaterfallTrace>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yGettableWaterfallTrace.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yGettableWaterfallTrace> mapFromJson(dynamic json) {
    final map = <String, O11yGettableWaterfallTrace>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yGettableWaterfallTrace.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yGettableWaterfallTrace-objects as value to a dart map
  static Map<String, List<O11yGettableWaterfallTrace>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yGettableWaterfallTrace>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yGettableWaterfallTrace.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

