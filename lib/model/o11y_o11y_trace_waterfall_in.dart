//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yO11yTraceWaterfallIn {
  /// Returns a new [O11yO11yTraceWaterfallIn] instance.
  O11yO11yTraceWaterfallIn({
    this.selectedSpanId,
    this.uncollapsedSpans = const [],
  });
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? selectedSpanId;

  List<String> uncollapsedSpans;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yO11yTraceWaterfallIn &&
    other.selectedSpanId == selectedSpanId &&
    _deepEquality.equals(other.uncollapsedSpans, uncollapsedSpans);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (selectedSpanId == null ? 0 : selectedSpanId!.hashCode) +
    (uncollapsedSpans.hashCode);

  @override
  String toString() => 'O11yO11yTraceWaterfallIn[selectedSpanId=$selectedSpanId, uncollapsedSpans=$uncollapsedSpans]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.selectedSpanId != null) {
      json[r'selectedSpanId'] = this.selectedSpanId;
    } else {
      json[r'selectedSpanId'] = null;
    }
      json[r'uncollapsedSpans'] = this.uncollapsedSpans;
    return json;
  }

  /// Returns a new [O11yO11yTraceWaterfallIn] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yO11yTraceWaterfallIn? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yO11yTraceWaterfallIn[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yO11yTraceWaterfallIn[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yO11yTraceWaterfallIn(
        selectedSpanId: mapValueOfType<String>(json, r'selectedSpanId'),
        uncollapsedSpans: json[r'uncollapsedSpans'] is Iterable
            ? (json[r'uncollapsedSpans'] as Iterable).cast<String>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<O11yO11yTraceWaterfallIn> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yO11yTraceWaterfallIn>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yO11yTraceWaterfallIn.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yO11yTraceWaterfallIn> mapFromJson(dynamic json) {
    final map = <String, O11yO11yTraceWaterfallIn>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yO11yTraceWaterfallIn.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yO11yTraceWaterfallIn-objects as value to a dart map
  static Map<String, List<O11yO11yTraceWaterfallIn>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yO11yTraceWaterfallIn>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yO11yTraceWaterfallIn.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

