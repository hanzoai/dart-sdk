//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Position {
  /// Returns a new [Position] instance.
  Position({
    this.character,
    this.line,
  });
  /// Character is a 0-based UTF-16 code-unit offset within Line, per the LSP specification: not a byte offset and not a rune index. An emoji before the cursor counts as one here and as two in Go's arithmetic.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? character;

  /// Line is 0-BASED, per the LSP specification — one less than the line an editor shows a human.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? line;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Position &&
    other.character == character &&
    other.line == line;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (character == null ? 0 : character!.hashCode) +
    (line == null ? 0 : line!.hashCode);

  @override
  String toString() => 'Position[character=$character, line=$line]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.character != null) {
      json[r'character'] = this.character;
    } else {
      json[r'character'] = null;
    }
    if (this.line != null) {
      json[r'line'] = this.line;
    } else {
      json[r'line'] = null;
    }
    return json;
  }

  /// Returns a new [Position] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Position? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Position[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Position[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Position(
        character: mapValueOfType<int>(json, r'character'),
        line: mapValueOfType<int>(json, r'line'),
      );
    }
    return null;
  }

  static List<Position> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Position>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Position.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Position> mapFromJson(dynamic json) {
    final map = <String, Position>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Position.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Position-objects as value to a dart map
  static Map<String, List<Position>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Position>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Position.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

