//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Window {
  /// Returns a new [Window] instance.
  Window({
    this.limit,
    this.remaining,
    this.resets,
    this.span,
    this.used,
  });
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? limit;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? remaining;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? resets;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? span;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? used;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Window &&
    other.limit == limit &&
    other.remaining == remaining &&
    other.resets == resets &&
    other.span == span &&
    other.used == used;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (limit == null ? 0 : limit!.hashCode) +
    (remaining == null ? 0 : remaining!.hashCode) +
    (resets == null ? 0 : resets!.hashCode) +
    (span == null ? 0 : span!.hashCode) +
    (used == null ? 0 : used!.hashCode);

  @override
  String toString() => 'Window[limit=$limit, remaining=$remaining, resets=$resets, span=$span, used=$used]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.limit != null) {
      json[r'limit'] = this.limit;
    } else {
      json[r'limit'] = null;
    }
    if (this.remaining != null) {
      json[r'remaining'] = this.remaining;
    } else {
      json[r'remaining'] = null;
    }
    if (this.resets != null) {
      json[r'resets'] = this.resets;
    } else {
      json[r'resets'] = null;
    }
    if (this.span != null) {
      json[r'span'] = this.span;
    } else {
      json[r'span'] = null;
    }
    if (this.used != null) {
      json[r'used'] = this.used;
    } else {
      json[r'used'] = null;
    }
    return json;
  }

  /// Returns a new [Window] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Window? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Window[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Window[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Window(
        limit: mapValueOfType<int>(json, r'limit'),
        remaining: mapValueOfType<int>(json, r'remaining'),
        resets: mapValueOfType<String>(json, r'resets'),
        span: mapValueOfType<String>(json, r'span'),
        used: mapValueOfType<int>(json, r'used'),
      );
    }
    return null;
  }

  static List<Window> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Window>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Window.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Window> mapFromJson(dynamic json) {
    final map = <String, Window>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Window.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Window-objects as value to a dart map
  static Map<String, List<Window>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Window>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Window.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

