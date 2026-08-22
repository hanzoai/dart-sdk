//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ClauseRow {
  /// Returns a new [ClauseRow] instance.
  ClauseRow({
    this.controls = const [],
    this.group,
    this.id,
    this.level,
    this.title,
  });
  /// Controls are the ids behind it, strongest first. Empty when nothing covers it — and an absent control is never listed here, however it maps.
  List<String> controls;

  /// Group is the clause's section within the standard, when it has one.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? group;

  /// ID is the clause id as the standard publishes it — \"CC6.1\", \"A.5.15\", \"AC\".
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// Level is what the strongest control pointed at this clause is worth: \"automated\", \"partial\" or \"none\".
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? level;

  /// Title is the standard's own words for that clause.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? title;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ClauseRow &&
    _deepEquality.equals(other.controls, controls) &&
    other.group == group &&
    other.id == id &&
    other.level == level &&
    other.title == title;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (controls.hashCode) +
    (group == null ? 0 : group!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (level == null ? 0 : level!.hashCode) +
    (title == null ? 0 : title!.hashCode);

  @override
  String toString() => 'ClauseRow[controls=$controls, group=$group, id=$id, level=$level, title=$title]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'controls'] = this.controls;
    if (this.group != null) {
      json[r'group'] = this.group;
    } else {
      json[r'group'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.level != null) {
      json[r'level'] = this.level;
    } else {
      json[r'level'] = null;
    }
    if (this.title != null) {
      json[r'title'] = this.title;
    } else {
      json[r'title'] = null;
    }
    return json;
  }

  /// Returns a new [ClauseRow] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ClauseRow? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ClauseRow[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ClauseRow[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ClauseRow(
        controls: json[r'controls'] is Iterable
            ? (json[r'controls'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        group: mapValueOfType<String>(json, r'group'),
        id: mapValueOfType<String>(json, r'id'),
        level: mapValueOfType<String>(json, r'level'),
        title: mapValueOfType<String>(json, r'title'),
      );
    }
    return null;
  }

  static List<ClauseRow> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ClauseRow>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ClauseRow.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ClauseRow> mapFromJson(dynamic json) {
    final map = <String, ClauseRow>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ClauseRow.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ClauseRow-objects as value to a dart map
  static Map<String, List<ClauseRow>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ClauseRow>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ClauseRow.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

