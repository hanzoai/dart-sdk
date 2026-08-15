//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Summary {
  /// Returns a new [Summary] instance.
  Summary({
    this.calls,
    this.messages,
    this.numbers,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? calls;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? messages;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? numbers;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Summary &&
    other.calls == calls &&
    other.messages == messages &&
    other.numbers == numbers;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (calls == null ? 0 : calls!.hashCode) +
    (messages == null ? 0 : messages!.hashCode) +
    (numbers == null ? 0 : numbers!.hashCode);

  @override
  String toString() => 'Summary[calls=$calls, messages=$messages, numbers=$numbers]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.calls != null) {
      json[r'calls'] = this.calls;
    } else {
      json[r'calls'] = null;
    }
    if (this.messages != null) {
      json[r'messages'] = this.messages;
    } else {
      json[r'messages'] = null;
    }
    if (this.numbers != null) {
      json[r'numbers'] = this.numbers;
    } else {
      json[r'numbers'] = null;
    }
    return json;
  }

  /// Returns a new [Summary] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Summary? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Summary[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Summary[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Summary(
        calls: mapValueOfType<int>(json, r'calls'),
        messages: mapValueOfType<int>(json, r'messages'),
        numbers: mapValueOfType<int>(json, r'numbers'),
      );
    }
    return null;
  }

  static List<Summary> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Summary>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Summary.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Summary> mapFromJson(dynamic json) {
    final map = <String, Summary>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Summary.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Summary-objects as value to a dart map
  static Map<String, List<Summary>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Summary>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Summary.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

