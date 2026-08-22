//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Range {
  /// Returns a new [Range] instance.
  Range({
    this.end,
    this.start,
  });
  /// End is the position just past the span, excluded — the range is half-open, so an empty range has Start equal to End.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Position? end;

  /// Start is the first position in the span, included.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Position? start;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Range &&
    other.end == end &&
    other.start == start;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (end == null ? 0 : end!.hashCode) +
    (start == null ? 0 : start!.hashCode);

  @override
  String toString() => 'Range[end=$end, start=$start]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.end != null) {
      json[r'end'] = this.end;
    } else {
      json[r'end'] = null;
    }
    if (this.start != null) {
      json[r'start'] = this.start;
    } else {
      json[r'start'] = null;
    }
    return json;
  }

  /// Returns a new [Range] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Range? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Range[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Range[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Range(
        end: Position.fromJson(json[r'end']),
        start: Position.fromJson(json[r'start']),
      );
    }
    return null;
  }

  static List<Range> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Range>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Range.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Range> mapFromJson(dynamic json) {
    final map = <String, Range>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Range.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Range-objects as value to a dart map
  static Map<String, List<Range>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Range>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Range.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

