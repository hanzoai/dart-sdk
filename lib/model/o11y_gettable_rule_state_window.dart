//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yGettableRuleStateWindow {
  /// Returns a new [O11yGettableRuleStateWindow] instance.
  O11yGettableRuleStateWindow({
    this.end,
    this.start,
    this.state,
  });
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? end;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? start;

  Object? state;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yGettableRuleStateWindow &&
    other.end == end &&
    other.start == start &&
    other.state == state;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (end == null ? 0 : end!.hashCode) +
    (start == null ? 0 : start!.hashCode) +
    (state == null ? 0 : state!.hashCode);

  @override
  String toString() => 'O11yGettableRuleStateWindow[end=$end, start=$start, state=$state]';

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
    if (this.state != null) {
      json[r'state'] = this.state;
    } else {
      json[r'state'] = null;
    }
    return json;
  }

  /// Returns a new [O11yGettableRuleStateWindow] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yGettableRuleStateWindow? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yGettableRuleStateWindow[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yGettableRuleStateWindow[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yGettableRuleStateWindow(
        end: mapValueOfType<int>(json, r'end'),
        start: mapValueOfType<int>(json, r'start'),
        state: mapValueOfType<Object>(json, r'state'),
      );
    }
    return null;
  }

  static List<O11yGettableRuleStateWindow> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yGettableRuleStateWindow>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yGettableRuleStateWindow.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yGettableRuleStateWindow> mapFromJson(dynamic json) {
    final map = <String, O11yGettableRuleStateWindow>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yGettableRuleStateWindow.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yGettableRuleStateWindow-objects as value to a dart map
  static Map<String, List<O11yGettableRuleStateWindow>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yGettableRuleStateWindow>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yGettableRuleStateWindow.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

